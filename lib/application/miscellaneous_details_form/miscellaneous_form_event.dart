part of 'miscellaneous_form_bloc.dart';

@freezed
class MiscellaneousDetailsFormEvent with _$MiscellaneousDetailsFormEvent {
  const factory MiscellaneousDetailsFormEvent.initialized() = _Initialized;
  const factory MiscellaneousDetailsFormEvent.loanIdChanged(
    UniqueId loanId,
  ) = _LoanIdChanged;
  const factory MiscellaneousDetailsFormEvent.formStepChanged(
    int index,
  ) = _FormStepChanged;
  const factory MiscellaneousDetailsFormEvent.payeeNameChanged(
    String payeeName,
  ) = _PayeeNameChanged;
  const factory MiscellaneousDetailsFormEvent.payeeAmountChanged(
    String payeeAmount,
  ) = _PayeeAmountChanged;
  const factory MiscellaneousDetailsFormEvent.referenceOneNameChanged(
    String referenceOneName,
  ) = _ReferenceOneNameChanged;
  const factory MiscellaneousDetailsFormEvent.referenceOnePhoneNumberChanged(
    String referenceOnePhoneNumber,
  ) = _ReferenceOnePhoneNumberChanged;
  const factory MiscellaneousDetailsFormEvent.referenceTwoNameChanged(
    String referenceTwoName,
  ) = _ReferenceTwoNameChanged;
  const factory MiscellaneousDetailsFormEvent.referenceTwoPhoneNumberChanged(
    String referenceTwoPhoneNumber,
  ) = _ReferenceTwoPhoneNumberChanged;
  const factory MiscellaneousDetailsFormEvent.pickApplicantImage() =
      _PickApplicantImage;
  const factory MiscellaneousDetailsFormEvent.takeApplicantImage() =
      _TakeApplicantImage;
  const factory MiscellaneousDetailsFormEvent.pickCoApplicantImage() =
      _PickCoApplicantImage;
  const factory MiscellaneousDetailsFormEvent.takeCoApplicantImage() =
      _TakeCoApplicantImage;
  const factory MiscellaneousDetailsFormEvent.pickGuarenterImage() =
      _PickGuarenterImage;
  const factory MiscellaneousDetailsFormEvent.takeGuarenterImage() =
      _TakeGuarenterImage;
  const factory MiscellaneousDetailsFormEvent.appIdChanged(
    String appId,
  ) = _AppIdChanged;
  const factory MiscellaneousDetailsFormEvent.leadIdChanged(
    String leadId,
  ) = _LeadIdChanged;
  const factory MiscellaneousDetailsFormEvent.remarksChanged(
    String remarks,
  ) = _RemarksChanged;
  const factory MiscellaneousDetailsFormEvent.saveMiscellaneousDetails() =
      _SaveMiscellaneousDetails;
}
