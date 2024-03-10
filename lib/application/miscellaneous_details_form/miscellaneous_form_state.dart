part of 'miscellaneous_form_bloc.dart';

@freezed
class MiscellaneousDetailsFormState with _$MiscellaneousDetailsFormState {
  const factory MiscellaneousDetailsFormState({
    required bool isSaving,
    required bool isApplicantImageUploading,
    required bool isCoApplicantImageUploading,
    required bool isGuarenterImageUploading,
    required bool showValidationError,
    required int formStep,
    required PayoutDetails payoutDetails,
    required ReferenceDetails referenceDetails,
    required CloudImage? applicantImage,
    required CloudImage? coApplicantImage,
    required CloudImage? guarenterImage,
    required RemarksAndMore remarksAndMore,
    required UniqueId? loanId,
    required Option<Either<MiscellaneousDetailsFailure, Unit>> failureOrSuccess,
    required Option<Either<MiscellaneousDetailsFailure, Unit>>
        saveFailureOrSuccess,
  }) = _MiscellaneousDetailsFormState;

  factory MiscellaneousDetailsFormState.initial() {
    return MiscellaneousDetailsFormState(
      isSaving: false,
      isApplicantImageUploading: false,
      isCoApplicantImageUploading: false,
      isGuarenterImageUploading: false,
      showValidationError: false,
      formStep: 0,
      payoutDetails: PayoutDetails.empty(),
      referenceDetails: ReferenceDetails.empty(),
      applicantImage: null,
      coApplicantImage: null,
      guarenterImage: null,
      remarksAndMore: RemarksAndMore.empty(),
      loanId: null,
      failureOrSuccess: none(),
      saveFailureOrSuccess: none(),
    );
  }
}
