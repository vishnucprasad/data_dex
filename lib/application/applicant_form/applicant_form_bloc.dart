import 'package:dartz/dartz.dart';
import 'package:data_dex/domain/applicant/failures/applicant_failure.dart';
import 'package:data_dex/domain/applicant/i_applicant_repository.dart';
import 'package:data_dex/domain/applicant/models/applicant.dart';
import 'package:data_dex/domain/core/constants.dart';
import 'package:data_dex/domain/core/models/address/address.dart';
import 'package:data_dex/domain/core/models/basic_info/basic_info.dart';
import 'package:data_dex/domain/core/models/cloud_image/cloud_image.dart';
import 'package:data_dex/domain/core/models/location/location.dart';
import 'package:data_dex/domain/core/value_objects.dart';
import 'package:data_dex/domain/loan/failures/loan_failure.dart';
import 'package:data_dex/domain/loan/i_loan_repository.dart';
import 'package:data_dex/domain/loan/models/loan.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

part 'applicant_form_event.dart';
part 'applicant_form_state.dart';
part 'applicant_form_bloc.freezed.dart';

@injectable
class ApplicantFormBloc extends Bloc<ApplicantFormEvent, ApplicantFormState> {
  final IApplicantRepository _applicantRepository;
  final ILoanRepository _loanRepository;
  ApplicantFormBloc(
    this._applicantRepository,
    this._loanRepository,
  ) : super(ApplicantFormState.initial()) {
    on<ApplicantFormEvent>((event, emit) async {
      await event.map(
        initialized: (e) async {
          emit(e.initializeOption.fold(
            () => ApplicantFormState.initial(),
            (loan) => ApplicantFormState.initial().copyWith(
              isEditing: true,
              loanId: loan.id,
              editingLoan: loan,
              basicInfo: loan.applicant.basicInfo,
              address: loan.applicant.address,
              location: loan.applicant.location,
              houseImage: loan.applicant.houseImage,
            ),
          ));
        },
        formStepChanged: (e) async {
          if (e.index == 1 && state.basicInfo.failureOption.isSome()) {
            return emit(state.copyWith(
              showValidationError: true,
              failureOrSuccess: none(),
            ));
          }

          if (e.index == 2 && state.address.failureOption.isSome()) {
            return emit(state.copyWith(
              showValidationError: true,
              failureOrSuccess: none(),
            ));
          }

          emit(state.copyWith(
            formStep: e.index,
            showValidationError: false,
            failureOrSuccess: none(),
          ));
        },
        nameChanged: (e) async => emit(state.copyWith(
          basicInfo: state.basicInfo.copyWith(
            name: Name(e.name),
          ),
          failureOrSuccess: none(),
        )),
        phoneNumberChanged: (e) async => emit(state.copyWith(
          basicInfo: state.basicInfo.copyWith(
            phoneNumber: PhoneNumber(e.phoneNumber),
          ),
          failureOrSuccess: none(),
        )),
        emailChnaged: (e) async => emit(state.copyWith(
          basicInfo: state.basicInfo.copyWith(
            emailAddress: e.email.isEmpty ? null : EmailAddress(e.email),
          ),
          failureOrSuccess: none(),
        )),
        dateOfBirthChanged: (e) async => emit(state.copyWith(
          basicInfo: state.basicInfo.copyWith(
            dateOfBirth: DateOfBirth(e.date.toIso8601String()),
          ),
          failureOrSuccess: none(),
        )),
        houseNameChanged: (e) async => emit(state.copyWith(
          address: state.address.copyWith(
            houseName: HouseName(e.houseName),
          ),
          failureOrSuccess: none(),
        )),
        postOfficeChanged: (e) async => emit(state.copyWith(
          address: state.address.copyWith(
            postOffice: PostOffice(e.postOffice),
          ),
          failureOrSuccess: none(),
        )),
        streetNameChanged: (e) async => emit(state.copyWith(
          address: state.address.copyWith(
            streetName: StreetName(e.streetName),
          ),
          failureOrSuccess: none(),
        )),
        pincodeChanged: (e) async => emit(state.copyWith(
          address: state.address.copyWith(
            pincode: PinCode(e.pincode),
          ),
          failureOrSuccess: none(),
        )),
        getCurrentLocation: (_) async {
          emit(state.copyWith(
            isLocationFetching: true,
            location: null,
            failureOrSuccess: none(),
          ));

          final permissionOption =
              await _applicantRepository.handleLocationPermission();

          if (permissionOption.isRight()) {
            final locationOption =
                await _applicantRepository.getCurrentPosition();

            return emit(
              await locationOption.fold(
                (l) => state.copyWith(
                  isLocationFetching: false,
                  location: null,
                  failureOrSuccess: some(left(l)),
                ),
                (r) => state.copyWith(
                  isLocationFetching: false,
                  location: Location(
                    latitude: r.latitude.toString(),
                    longitude: r.longitude.toString(),
                  ),
                  failureOrSuccess: some(right(unit)),
                ),
              ),
            );
          }

          emit(state.copyWith(
            isLocationFetching: false,
            location: null,
            failureOrSuccess: some(
              left(
                permissionOption.fold((l) => l, (r) => null) ??
                    const ApplicantFailure.clientFailure(),
              ),
            ),
          ));
        },
        openLocationInMap: (_) async {
          emit(state.copyWith(
            failureOrSuccess: none(),
          ));

          if (state.location == null) {
            emit(state.copyWith(
              failureOrSuccess: some(
                left(const ApplicantFailure.locationFailure(
                  'Location error',
                )),
              ),
            ));
          }

          final locationOption = await _applicantRepository.openLocationInMap(
            latitude: state.location!.latitude.toString(),
            longitude: state.location!.longitude.toString(),
          );

          emit(locationOption.fold(
            (l) => state.copyWith(
              failureOrSuccess: some(left(l)),
            ),
            (r) => state.copyWith(
              failureOrSuccess: some(right(r)),
            ),
          ));
        },
        takeImage: (_) async {
          emit(state.copyWith(
            isImageUploading: true,
            failureOrSuccess: none(),
          ));

          final imageOption = await _applicantRepository.pickImage(
            ImageSource.camera,
          );

          emit(await imageOption.fold(
            (l) => state.copyWith(
              isImageUploading: false,
              houseImage: null,
              failureOrSuccess: some(left(l)),
            ),
            (r) async {
              final uploadOption = await _applicantRepository.uploadImage(
                id: state.loanId,
                image: r!,
                filename: state.houseImage?.name,
              );
              return uploadOption.fold(
                (l) => state.copyWith(
                  isImageUploading: false,
                  houseImage: null,
                  failureOrSuccess: some(right(unit)),
                ),
                (r) => state.copyWith(
                  isImageUploading: false,
                  houseImage: r,
                  failureOrSuccess: some(right(unit)),
                ),
              );
            },
          ));
        },
        pickImage: (_) async {
          emit(state.copyWith(
            isImageUploading: true,
            failureOrSuccess: none(),
          ));

          final imageOption = await _applicantRepository.pickImage(
            ImageSource.gallery,
          );

          emit(await imageOption.fold(
            (l) => state.copyWith(
              isImageUploading: false,
              houseImage: null,
              failureOrSuccess: some(left(l)),
            ),
            (r) async {
              final uploadOption = await _applicantRepository.uploadImage(
                id: state.loanId,
                image: r!,
                filename: state.houseImage?.name,
              );

              return uploadOption.fold(
                (l) => state.copyWith(
                  isImageUploading: false,
                  houseImage: null,
                  failureOrSuccess: some(right(unit)),
                ),
                (r) => state.copyWith(
                  isImageUploading: false,
                  houseImage: r,
                  failureOrSuccess: some(right(unit)),
                ),
              );
            },
          ));
        },
        deleteImage: (_) async {
          if (state.houseImage == null || state.isEditing) {
            return emit(state.copyWith(
              failureOrSuccess: none(),
            ));
          }

          final deleteOption =
              await _applicantRepository.deleteImage(state.houseImage!);

          emit(deleteOption.fold(
            (l) => state.copyWith(
              houseImage: null,
              failureOrSuccess: some(left(l)),
            ),
            (r) => state.copyWith(
              houseImage: null,
              failureOrSuccess: some(right(r)),
            ),
          ));
        },
        saveApplicant: (_) async {
          emit(state.copyWith(
            isSaving: true,
            loanFailureOrSuccess: none(),
          ));

          final applicant = Applicant(
            basicInfo: state.basicInfo,
            address: state.address,
            location: state.location,
            houseImage: state.houseImage,
          );

          final loan = Loan(
            id: state.loanId,
            loanStatusIndex: LoanStatus.pending.index,
            applicant: applicant,
          );

          final loanOption = state.isEditing
              ? await _applicantRepository.updateApplicant(
                  state.loanId,
                  applicant,
                )
              : await _loanRepository.create(loan);

          emit(loanOption.fold(
            (l) => state.copyWith(
              isSaving: false,
              loanFailureOrSuccess: some(left(l)),
            ),
            (r) => state.copyWith(
              isSaving: false,
              loanFailureOrSuccess: some(right(loan.id)),
            ),
          ));
        },
      );
    });
  }
}
