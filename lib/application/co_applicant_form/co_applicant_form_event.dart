part of 'co_applicant_form_bloc.dart';

@freezed
class CoApplicantFormEvent with _$CoApplicantFormEvent {
  const factory CoApplicantFormEvent.initialized() = _Initialized;
  const factory CoApplicantFormEvent.loanIdChanged(
    UniqueId loanId,
  ) = _LoanIdChanged;
  const factory CoApplicantFormEvent.formStepChanged(
    int index,
  ) = _FormStepChanged;
  const factory CoApplicantFormEvent.nameChanged(
    String name,
  ) = _NameChanged;
  const factory CoApplicantFormEvent.phoneNumberChanged(
    String phoneNumber,
  ) = _PhoneNumberChanged;
  const factory CoApplicantFormEvent.emailChnaged(
    String email,
  ) = _EmailChnaged;
  const factory CoApplicantFormEvent.dateOfBirthChanged(
    DateTime date,
  ) = _DateOfBirthChanged;
  const factory CoApplicantFormEvent.houseNameChanged(
    String houseName,
  ) = _HouseNameChanged;
  const factory CoApplicantFormEvent.postOfficeChanged(
    String postOffice,
  ) = _PostOfficeChanged;
  const factory CoApplicantFormEvent.streetNameChanged(
    String streetName,
  ) = _StreetNameChanged;
  const factory CoApplicantFormEvent.pincodeChanged(
    String pincode,
  ) = _PincodeChanged;
  const factory CoApplicantFormEvent.saveCoApplicant() = _SaveCoApplicant;
}
