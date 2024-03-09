import 'package:dartz/dartz.dart';
import 'package:data_dex/domain/core/value_failure.dart';
import 'package:data_dex/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'loan_details.freezed.dart';

@freezed
class LoanDetails with _$LoanDetails {
  const LoanDetails._();
  const factory LoanDetails({
    required RequiredPrice loanAmount,
    required LTVData ltv,
    required RequiredPrice serviceCharge,
    required OptionalPrice documentationCharge,
    required OptionalPrice lifeAmount,
    required OptionalPrice pacAmount,
    required RequiredPrice stampDuty,
    required OptionalPrice dateShiftingCharge,
    required OptionalPrice counterAmount,
  }) = _LoanDetails;

  factory LoanDetails.empty() {
    return LoanDetails(
      loanAmount: RequiredPrice(''),
      ltv: LTVData(''),
      serviceCharge: RequiredPrice(''),
      documentationCharge: OptionalPrice(''),
      lifeAmount: OptionalPrice(''),
      pacAmount: OptionalPrice(''),
      stampDuty: RequiredPrice(''),
      dateShiftingCharge: OptionalPrice(''),
      counterAmount: OptionalPrice(''),
    );
  }

  Option<ValueFailure<dynamic>> get failureOption {
    return loanAmount.failureOrUnit
        .andThen(ltv.failureOrUnit)
        .andThen(serviceCharge.failureOrUnit)
        .andThen(documentationCharge.failureOrUnit)
        .andThen(lifeAmount.failureOrUnit)
        .andThen(pacAmount.failureOrUnit)
        .andThen(stampDuty.failureOrUnit)
        .andThen(dateShiftingCharge.failureOrUnit)
        .andThen(counterAmount.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
