import 'package:dartz/dartz.dart';
import 'package:data_dex/domain/core/value_failure.dart';
import 'package:data_dex/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payout_details.freezed.dart';

@freezed
class PayoutDetails with _$PayoutDetails {
  const PayoutDetails._();
  const factory PayoutDetails({
    required String? payeeName,
    required OptionalPrice payeeAmount,
  }) = _PayoutDetails;

  factory PayoutDetails.empty() {
    return PayoutDetails(
      payeeName: null,
      payeeAmount: OptionalPrice(""),
    );
  }

  Option<ValueFailure<dynamic>> get failureOption {
    return payeeAmount.failureOrUnit.fold((f) => some(f), (_) => none());
  }
}
