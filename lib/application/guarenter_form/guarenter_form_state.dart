part of 'guarenter_form_bloc.dart';

@freezed
class GuarenterFormState with _$GuarenterFormState {
  const factory GuarenterFormState({
    required bool isSaving,
    required bool isLocationFetching,
    required bool isImageUploading,
    required bool isEditing,
    required bool closeAfterSave,
    required int formStep,
    required bool showValidationError,
    required BasicInfo basicInfo,
    required Address address,
    required Location? location,
    required CloudImage? houseImage,
    required UniqueId? loanId,
    required Loan? editingLoan,
    required Option<Either<GuarenterFailure, Unit>> failureOrSuccess,
    required Option<Either<GuarenterFailure, Unit>> guarenterFailureOrSuccess,
  }) = _GuarenterFormState;

  factory GuarenterFormState.initial() {
    return GuarenterFormState(
      isSaving: false,
      isLocationFetching: false,
      isImageUploading: false,
      isEditing: false,
      closeAfterSave: false,
      formStep: 0,
      showValidationError: false,
      basicInfo: BasicInfo.empty(),
      address: Address.empty(),
      location: null,
      houseImage: null,
      loanId: null,
      editingLoan: null,
      failureOrSuccess: none(),
      guarenterFailureOrSuccess: none(),
    );
  }
}
