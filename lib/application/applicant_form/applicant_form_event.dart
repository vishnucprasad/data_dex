part of 'applicant_form_bloc.dart';

@freezed
class ApplicantFormEvent with _$ApplicantFormEvent {
  const factory ApplicantFormEvent.formStepChanged(
    int index,
  ) = _FormStepChanged;
}
