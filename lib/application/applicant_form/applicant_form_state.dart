part of 'applicant_form_bloc.dart';

@freezed
class ApplicantFormState with _$ApplicantFormState {
  const factory ApplicantFormState({
    required int formStep,
    required bool showValidationError,
    required ApplicantBasicInfoFormData basicInfo,
    required ApplicantAddressFormData address,
    required Option<Either<ApplicantFailure, Unit>> failureOrSuccess,
  }) = _ApplicantFormState;

  factory ApplicantFormState.initial() {
    return ApplicantFormState(
      formStep: 0,
      showValidationError: false,
      basicInfo: ApplicantBasicInfoFormData.empty(),
      address: ApplicantAddressFormData.empty(),
      failureOrSuccess: none(),
    );
  }
}
