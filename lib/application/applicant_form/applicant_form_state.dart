part of 'applicant_form_bloc.dart';

@freezed
class ApplicantFormState with _$ApplicantFormState {
  const factory ApplicantFormState({
    required bool isLocationFetching,
    required int formStep,
    required bool showValidationError,
    required ApplicantBasicInfoFormData basicInfo,
    required ApplicantAddressFormData address,
    required Position? location,
    required Option<Either<ApplicantFailure, Unit>> failureOrSuccess,
  }) = _ApplicantFormState;

  factory ApplicantFormState.initial() {
    return ApplicantFormState(
      isLocationFetching: false,
      formStep: 0,
      showValidationError: false,
      basicInfo: ApplicantBasicInfoFormData.empty(),
      address: ApplicantAddressFormData.empty(),
      location: null,
      failureOrSuccess: none(),
    );
  }
}
