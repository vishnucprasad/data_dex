import 'package:dartz/dartz.dart';
import 'package:data_dex/domain/applicant/failures/applicant_failure.dart';
import 'package:data_dex/domain/applicant/i_applicant_repository.dart';
import 'package:data_dex/domain/applicant/models/applicant_address/applicant_address_form_data.dart';
import 'package:data_dex/domain/applicant/models/applicant_basic_info/applicant_basic_info_form_data.dart';
import 'package:data_dex/domain/applicant/value_objects.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

part 'applicant_form_event.dart';
part 'applicant_form_state.dart';
part 'applicant_form_bloc.freezed.dart';

@injectable
class ApplicantFormBloc extends Bloc<ApplicantFormEvent, ApplicantFormState> {
  final IApplicantRepository _applicantRepository;
  ApplicantFormBloc(
    this._applicantRepository,
  ) : super(ApplicantFormState.initial()) {
    on<ApplicantFormEvent>((event, emit) async {
      await event.map(
        initialized: (_) async => emit(ApplicantFormState.initial()),
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
            emailAddress: EmailAddress(e.email),
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
                  location: r,
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
            isImagePicking: true,
            houseImage: null,
            failureOrSuccess: none(),
          ));

          final imageOption = await _applicantRepository.pickImage(
            ImageSource.camera,
          );

          emit(imageOption.fold(
            (l) => state.copyWith(
              isImagePicking: false,
              houseImage: null,
              failureOrSuccess: some(left(l)),
            ),
            (r) => state.copyWith(
              isImagePicking: false,
              houseImage: r,
              failureOrSuccess: some(right(unit)),
            ),
          ));
        },
        pickImage: (_) async {
          emit(state.copyWith(
            isImagePicking: true,
            houseImage: null,
            failureOrSuccess: none(),
          ));

          final imageOption = await _applicantRepository.pickImage(
            ImageSource.gallery,
          );

          emit(imageOption.fold(
            (l) => state.copyWith(
              isImagePicking: false,
              houseImage: null,
              failureOrSuccess: some(left(l)),
            ),
            (r) => state.copyWith(
              isImagePicking: false,
              houseImage: r,
              failureOrSuccess: some(right(unit)),
            ),
          ));
        },
      );
    });
  }
}
