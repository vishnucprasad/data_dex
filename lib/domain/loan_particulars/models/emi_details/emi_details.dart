import 'package:dartz/dartz.dart';
import 'package:data_dex/domain/core/value_failure.dart';
import 'package:data_dex/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'emi_details.freezed.dart';

@freezed
class EMIDetails with _$EMIDetails {
  const EMIDetails._();
  const factory EMIDetails({
    required RequiredPrice emiAmount,
    required Tenure tenure,
    required EMIDate firstEMIDate,
    required Name bankName,
    required RepaymentMode repaymentMode,
  }) = _EMIDetails;

  factory EMIDetails.empty() {
    return EMIDetails(
      emiAmount: RequiredPrice(''),
      tenure: Tenure(''),
      firstEMIDate: EMIDate(''),
      bankName: Name(''),
      repaymentMode: RepaymentMode(''),
    );
  }

  Option<ValueFailure<dynamic>> get failureOption {
    return emiAmount.failureOrUnit
        .andThen(tenure.failureOrUnit)
        .andThen(firstEMIDate.failureOrUnit)
        .andThen(bankName.failureOrUnit)
        .andThen(repaymentMode.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
