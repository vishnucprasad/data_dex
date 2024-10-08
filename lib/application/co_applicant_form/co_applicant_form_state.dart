part of 'co_applicant_form_bloc.dart';

@freezed
class CoApplicantFormState with _$CoApplicantFormState {
  const factory CoApplicantFormState({
    required bool isSaving,
    required bool isEditing,
    required bool closeAfterSave,
    required int formStep,
    required bool showValidationError,
    required BasicInfo basicInfo,
    required Address address,
    required UniqueId? loanId,
    required Loan? editingLoan,
    required Option<Either<CoApplicantFailure, Unit>> failureOrSuccess,
  }) = _CoApplicantFormState;

  factory CoApplicantFormState.initial() {
    return CoApplicantFormState(
      isSaving: false,
      isEditing: false,
      closeAfterSave: false,
      formStep: 0,
      showValidationError: false,
      basicInfo: BasicInfo.empty(),
      address: Address.empty(),
      loanId: null,
      editingLoan: null,
      failureOrSuccess: none(),
    );
  }
}
