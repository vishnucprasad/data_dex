part of 'co_applicant_form_bloc.dart';

@freezed
class CoApplicantFormState with _$CoApplicantFormState {
  const factory CoApplicantFormState({
    required bool isSaving,
    required int formStep,
    required bool showValidationError,
    required BasicInfo basicInfo,
    required Address address,
    required UniqueId? loanId,
    required Option<Either<CoApplicantFailure, Unit>> failureOrSuccess,
  }) = _CoApplicantFormState;

  factory CoApplicantFormState.initial() {
    return CoApplicantFormState(
      isSaving: false,
      formStep: 0,
      showValidationError: false,
      basicInfo: BasicInfo.empty(),
      address: Address.empty(),
      loanId: null,
      failureOrSuccess: none(),
    );
  }
}
