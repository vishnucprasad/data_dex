import 'package:dartz/dartz.dart';
import 'package:data_dex/domain/applicant/failures/applicant_failure.dart';
import 'package:data_dex/domain/applicant/models/applicant_address/applicant_address_form_data.dart';
import 'package:data_dex/domain/applicant/models/applicant_basic_info/applicant_basic_info_form_data.dart';
import 'package:data_dex/domain/applicant/value_objects.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'applicant_form_event.dart';
part 'applicant_form_state.dart';
part 'applicant_form_bloc.freezed.dart';

@injectable
class ApplicantFormBloc extends Bloc<ApplicantFormEvent, ApplicantFormState> {
  ApplicantFormBloc() : super(ApplicantFormState.initial()) {
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
      );
    });
  }
}
