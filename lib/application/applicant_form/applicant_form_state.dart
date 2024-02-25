part of 'applicant_form_bloc.dart';

@freezed
class ApplicantFormState with _$ApplicantFormState {
  const factory ApplicantFormState({
    required int formStep,
  }) = _ApplicantFormState;

  factory ApplicantFormState.initial() {
    return const ApplicantFormState(
      formStep: 0,
    );
  }
}
