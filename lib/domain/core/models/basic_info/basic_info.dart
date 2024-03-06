import 'package:dartz/dartz.dart';
import 'package:data_dex/domain/core/value_objects.dart';
import 'package:data_dex/domain/core/value_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'basic_info.freezed.dart';

@freezed
class BasicInfo with _$BasicInfo {
  const BasicInfo._();
  const factory BasicInfo({
    required Name name,
    required PhoneNumber phoneNumber,
    required EmailAddress? emailAddress,
    required DateOfBirth dateOfBirth,
    dynamic key,
  }) = _BasicInfo;

  factory BasicInfo.empty() {
    return BasicInfo(
      name: Name(''),
      phoneNumber: PhoneNumber(''),
      emailAddress: null,
      dateOfBirth: DateOfBirth(''),
    );
  }

  Option<ValueFailure<dynamic>> get failureOption {
    return name.failureOrUnit
        .andThen(phoneNumber.failureOrUnit)
        .andThen(
          emailAddress == null ? right(unit) : emailAddress!.failureOrUnit,
        )
        .andThen(dateOfBirth.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
