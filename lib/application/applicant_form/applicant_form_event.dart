part of 'applicant_form_bloc.dart';

@freezed
class ApplicantFormEvent with _$ApplicantFormEvent {
  const factory ApplicantFormEvent.initialized() = _Initialized;
  const factory ApplicantFormEvent.formStepChanged(
    int index,
  ) = _FormStepChanged;
  const factory ApplicantFormEvent.nameChanged(
    String name,
  ) = _NameChanged;
  const factory ApplicantFormEvent.phoneNumberChanged(
    String phoneNumber,
  ) = _PhoneNumberChanged;
  const factory ApplicantFormEvent.emailChnaged(
    String email,
  ) = _EmailChnaged;
  const factory ApplicantFormEvent.dateOfBirthChanged(
    DateTime date,
  ) = _DateOfBirthChanged;
  const factory ApplicantFormEvent.houseNameChanged(
    String houseName,
  ) = _HouseNameChanged;
  const factory ApplicantFormEvent.postOfficeChanged(
    String postOffice,
  ) = _PostOfficeChanged;
  const factory ApplicantFormEvent.streetNameChanged(
    String streetName,
  ) = _StreetNameChanged;
  const factory ApplicantFormEvent.pincodeChanged(
    String pincode,
  ) = _PincodeChanged;
  const factory ApplicantFormEvent.getCurrentLocation() = _GetCurrentLocation;
  const factory ApplicantFormEvent.openLocationInMap() = _OpenLocationInMap;
}
