part of 'applicant_form_bloc.dart';

@freezed
class ApplicantFormState with _$ApplicantFormState {
  const factory ApplicantFormState({
    required bool isSaving,
    required bool isLocationFetching,
    required bool isImageUploading,
    required int formStep,
    required bool showValidationError,
    required BasicInfo basicInfo,
    required Address address,
    required Location? location,
    required CloudImage? houseImage,
    required UniqueId loanId,
    required Option<Either<ApplicantFailure, Unit>> failureOrSuccess,
    required Option<Either<LoanFailure, UniqueId>> loanFailureOrSuccess,
  }) = _ApplicantFormState;

  factory ApplicantFormState.initial() {
    return ApplicantFormState(
      isSaving: false,
      isLocationFetching: false,
      isImageUploading: false,
      formStep: 0,
      showValidationError: false,
      basicInfo: BasicInfo.empty(),
      address: Address.empty(),
      location: null,
      houseImage: null,
      loanId: UniqueId(),
      failureOrSuccess: none(),
      loanFailureOrSuccess: none(),
    );
  }
}
