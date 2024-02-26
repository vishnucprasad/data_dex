import 'package:dartz/dartz.dart';
import 'package:data_dex/domain/applicant/value_objects.dart';
import 'package:data_dex/domain/core/value_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'applicant_address_form_data.freezed.dart';

@freezed
class ApplicantAddressFormData with _$ApplicantAddressFormData {
  const ApplicantAddressFormData._();
  const factory ApplicantAddressFormData({
    required HouseName houseName,
    required PostOffice postOffice,
    required StreetName streetName,
    required PinCode pincode,
    dynamic key,
  }) = _ApplicantAddressFormData;

  factory ApplicantAddressFormData.empty() {
    return ApplicantAddressFormData(
      houseName: HouseName(''),
      postOffice: PostOffice(''),
      streetName: StreetName(''),
      pincode: PinCode(''),
    );
  }

  Option<ValueFailure<dynamic>> get failureOption {
    return houseName.failureOrUnit
        .andThen(postOffice.failureOrUnit)
        .andThen(streetName.failureOrUnit)
        .andThen(pincode.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
