part of 'miscellaneous_form_bloc.dart';

@freezed
class MiscellaneousDetailsFormState with _$MiscellaneousDetailsFormState {
  const factory MiscellaneousDetailsFormState({
    required bool isSaving,
    required bool showValidationError,
    required int formStep,
    required PayoutDetails payoutDetails,
    required ReferenceDetails referenceDetails,
    required XFile? applicantImage,
    required XFile? coApplicantImage,
    required XFile? guarenterImage,
    required RemarksAndMore remarksAndMore,
    required UniqueId? loanId,
    required Option<Either<MiscellaneousDetailsFailure, Unit>> failureOrSuccess,
    required Option<Either<MiscellaneousDetailsFailure, Unit>>
        saveFailureOrSuccess,
  }) = _MiscellaneousDetailsFormState;

  factory MiscellaneousDetailsFormState.initial() {
    return MiscellaneousDetailsFormState(
      isSaving: false,
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
