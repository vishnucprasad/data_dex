part of 'guarenter_form_bloc.dart';

@freezed
class GuarenterFormState with _$GuarenterFormState {
  const factory GuarenterFormState({
    required bool isSaving,
    required bool isLocationFetching,
    required bool isImageUploading,
    required int formStep,
    required bool showValidationError,
    required BasicInfo basicInfo,
    required Address address,
    required Location? location,
    required CloudImage? houseImage,
    required UniqueId? loanId,
    required Option<Either<GuarenterFailure, Unit>> failureOrSuccess,
    required Option<Either<GuarenterFailure, Unit>> guarenterFailureOrSuccess,
  }) = _GuarenterFormState;

  factory GuarenterFormState.initial() {
    return GuarenterFormState(
      isSaving: false,
      isLocationFetching: false,
      isImageUploading: false,
      formStep: 0,
      showValidationError: false,
      basicInfo: BasicInfo.empty(),
      address: Address.empty(),
      location: null,
      houseImage: null,
      loanId: null,
      failureOrSuccess: none(),
      guarenterFailureOrSuccess: none(),
    );
  }
}
