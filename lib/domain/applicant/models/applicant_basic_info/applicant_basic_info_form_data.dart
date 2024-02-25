import 'package:dartz/dartz.dart';
import 'package:data_dex/domain/applicant/value_objects.dart';
import 'package:data_dex/domain/core/value_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'applicant_basic_info_form_data.freezed.dart';

@freezed
class ApplicantBasicInfoFormData with _$ApplicantBasicInfoFormData {
  const ApplicantBasicInfoFormData._();
  const factory ApplicantBasicInfoFormData({
    required Name name,
    required PhoneNumber phoneNumber,
    required EmailAddress emailAddress,
    required DateOfBirth dateOfBirth,
    dynamic key,
  }) = _ApplicantBasicInfoFormData;

  factory ApplicantBasicInfoFormData.empty() {
    return ApplicantBasicInfoFormData(
      name: Name(''),
      phoneNumber: PhoneNumber(''),
      emailAddress: EmailAddress(''),
      dateOfBirth: DateOfBirth(''),
    );
  }

  Option<ValueFailure<dynamic>> get failureOption {
    return name.failureOrUnit
        .andThen(phoneNumber.failureOrUnit)
        .andThen(emailAddress.failureOrUnit)
        .andThen(dateOfBirth.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
