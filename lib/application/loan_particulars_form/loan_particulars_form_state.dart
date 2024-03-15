part of 'loan_particulars_form_bloc.dart';

@freezed
class LoanParticularsFormState with _$LoanParticularsFormState {
  const factory LoanParticularsFormState({
    required bool isSaving,
    required bool isEditing,
    required bool closeAfterSave,
    required int formStep,
    required bool showValidationError,
    required VehicleDetails vehicleDetails,
    required LoanDetails loanDetails,
    required EMIDetails emiDetails,
    required UniqueId? loanId,
    required Loan? editingLoan,
    required Option<Either<LoanParticularsFailure, Unit>> failureOrSuccess,
  }) = _LoanParticularsFormState;

  factory LoanParticularsFormState.initial() {
    return LoanParticularsFormState(
      isSaving: false,
      isEditing: false,
      closeAfterSave: false,
      formStep: 0,
      showValidationError: false,
      vehicleDetails: VehicleDetails.empty(),
      loanDetails: LoanDetails.empty(),
      emiDetails: EMIDetails.empty(),
      loanId: null,
      editingLoan: null,
      failureOrSuccess: none(),
    );
  }
}
