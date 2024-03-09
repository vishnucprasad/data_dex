import 'package:dartz/dartz.dart';
import 'package:data_dex/domain/core/value_failure.dart';
import 'package:data_dex/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reference_details.freezed.dart';

@freezed
class ReferenceDetails with _$ReferenceDetails {
  const ReferenceDetails._();
  const factory ReferenceDetails({
    required Name referenceOneName,
    required PhoneNumber referenceOnePhoneNumber,
    required Name referenceTwoName,
    required PhoneNumber referenceTwoPhoneNumber,
  }) = _ReferenceDetails;

  factory ReferenceDetails.empty() {
    return ReferenceDetails(
      referenceOneName: Name(""),
      referenceOnePhoneNumber: PhoneNumber(""),
      referenceTwoName: Name(""),
      referenceTwoPhoneNumber: PhoneNumber(""),
    );
  }

  Option<ValueFailure<dynamic>> get failureOption {
    return referenceOneName.failureOrUnit
        .andThen(referenceOnePhoneNumber.failureOrUnit)
        .andThen(referenceTwoName.failureOrUnit)
        .andThen(referenceTwoPhoneNumber.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
