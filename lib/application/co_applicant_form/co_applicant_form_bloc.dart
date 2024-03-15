import 'package:dartz/dartz.dart';
import 'package:data_dex/domain/co_applicant/failures/co_applicant_failure.dart';
import 'package:data_dex/domain/co_applicant/i_co_applicant_repository.dart';
import 'package:data_dex/domain/co_applicant/models/co_applicant.dart';
import 'package:data_dex/domain/core/models/address/address.dart';
import 'package:data_dex/domain/core/models/basic_info/basic_info.dart';
import 'package:data_dex/domain/core/value_objects.dart';
import 'package:data_dex/domain/loan/models/loan.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'co_applicant_form_event.dart';
part 'co_applicant_form_state.dart';
part 'co_applicant_form_bloc.freezed.dart';

@injectable
class CoApplicantFormBloc
    extends Bloc<CoApplicantFormEvent, CoApplicantFormState> {
  final ICoApplicantRepository _coApplicantRepository;
  CoApplicantFormBloc(
    this._coApplicantRepository,
  ) : super(CoApplicantFormState.initial()) {
    on<CoApplicantFormEvent>((event, emit) async {
      await event.map(
        initialized: (e) async {
          emit(e.initializeOption.fold(
            () => CoApplicantFormState.initial(),
            (loan) => CoApplicantFormState.initial().copyWith(
              isEditing: true,
              closeAfterSave: e.closeAfterSave ?? false,
              loanId: loan.id,
              editingLoan: loan,
              basicInfo: loan.coApplicant?.basicInfo ?? BasicInfo.empty(),
              address: loan.coApplicant?.address ?? Address.empty(),
            ),
          ));
        },
        loanIdChanged: (e) async => emit(state.copyWith(
          loanId: e.loanId,
          failureOrSuccess: none(),
        )),
        formStepChanged: (e) async {
          if (e.index == 1 && state.basicInfo.failureOption.isSome()) {
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
        saveCoApplicant: (_) async {
          Either<CoApplicantFailure, Unit>? failureOrSuccess;

          if (state.address.failureOption.isNone()) {
            emit(state.copyWith(
              isSaving: true,
              showValidationError: false,
              failureOrSuccess: none(),
            ));

            failureOrSuccess = await _coApplicantRepository.saveCoApplicant(
              state.loanId!,
              CoApplicant(
                basicInfo: state.basicInfo,
                address: state.address,
              ),
            );
          }

          emit(state.copyWith(
            isSaving: false,
            showValidationError: true,
            failureOrSuccess: optionOf(failureOrSuccess),
          ));
        },
      );
    });
  }
}
