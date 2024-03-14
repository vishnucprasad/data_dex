import 'package:data_dex/domain/loan_particulars/models/emi_details/emi_details.dart';
import 'package:data_dex/domain/loan_particulars/models/loan_details/loan_details.dart';
import 'package:data_dex/domain/loan_particulars/models/vehicle_details/vehicle_details.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'loan_particulars.freezed.dart';

@freezed
class LoanParticulars with _$LoanParticulars {
  const factory LoanParticulars({
    required VehicleDetails vehicleDetails,
    required LoanDetails loanDetails,
    required EMIDetails emiDetails,
    double? ddAmount,
    double? downPayment,
  }) = _LoanParticulars;
}
