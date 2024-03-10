part of 'guarenter_form_bloc.dart';

@freezed
class GuarenterFormEvent with _$GuarenterFormEvent {
  const factory GuarenterFormEvent.initialized() = _Initialized;
  const factory GuarenterFormEvent.loanIdChanged(
    UniqueId loanId,
  ) = _LoanIdChanged;
  const factory GuarenterFormEvent.formStepChanged(
    int index,
  ) = _FormStepChanged;
  const factory GuarenterFormEvent.nameChanged(
    String name,
  ) = _NameChanged;
  const factory GuarenterFormEvent.phoneNumberChanged(
    String phoneNumber,
  ) = _PhoneNumberChanged;
  const factory GuarenterFormEvent.emailChnaged(
    String email,
  ) = _EmailChnaged;
  const factory GuarenterFormEvent.dateOfBirthChanged(
    DateTime date,
  ) = _DateOfBirthChanged;
  const factory GuarenterFormEvent.houseNameChanged(
    String houseName,
  ) = _HouseNameChanged;
  const factory GuarenterFormEvent.postOfficeChanged(
    String postOffice,
  ) = _PostOfficeChanged;
  const factory GuarenterFormEvent.streetNameChanged(
    String streetName,
  ) = _StreetNameChanged;
  const factory GuarenterFormEvent.pincodeChanged(
    String pincode,
  ) = _PincodeChanged;
  const factory GuarenterFormEvent.getCurrentLocation() = _GetCurrentLocation;
  const factory GuarenterFormEvent.openLocationInMap() = _OpenLocationInMap;
  const factory GuarenterFormEvent.takeImage() = _TakeImage;
  const factory GuarenterFormEvent.pickImage() = _PickImage;
  const factory GuarenterFormEvent.deleteImage() = _DeleteImage;
  const factory GuarenterFormEvent.saveGuarenter() = _SaveGuarenter;
}
