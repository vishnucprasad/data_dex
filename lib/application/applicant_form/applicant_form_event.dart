part of 'applicant_form_bloc.dart';

@freezed
class ApplicantFormEvent with _$ApplicantFormEvent {
  const factory ApplicantFormEvent.formStepChanged(
    int index,
  ) = _FormStepChanged;
  const factory ApplicantFormEvent.nameChanged(
    String name,
  ) = _NameChanged;
  const factory ApplicantFormEvent.phoneNumberChanged(
    String phoneNumber,
  ) = _PhoneNumberChanged;
  const factory ApplicantFormEvent.emailChnaged(
    String email,
  ) = _EmailChnaged;
  const factory ApplicantFormEvent.dateOfBirthChanged(
    DateTime date,
  ) = _DateOfBirthChanged;
}
