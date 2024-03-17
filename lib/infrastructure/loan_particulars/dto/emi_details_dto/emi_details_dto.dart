import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:data_dex/domain/core/value_objects.dart';
import 'package:data_dex/domain/loan_particulars/models/emi_details/emi_details.dart';
import 'package:data_dex/infrastructure/core/datetime_helpers.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'emi_details_dto.freezed.dart';
part 'emi_details_dto.g.dart';

@freezed
class EMIDetailsDto with _$EMIDetailsDto {
  const EMIDetailsDto._();

  const factory EMIDetailsDto({
    required double emiAmount,
    required int tenure,
    required String firstEMIDate,
    required String bankName,
    required String repaymentMode,
  }) = _EMIDetailsDto;

  factory EMIDetailsDto.fromDomain(EMIDetails emiDetails) {
    return EMIDetailsDto(
      emiAmount: double.parse(emiDetails.emiAmount.getOrCrash()),
      tenure: int.parse(emiDetails.tenure.getOrCrash()),
      firstEMIDate: emiDetails.firstEMIDate.getOrCrash(),
      bankName: emiDetails.bankName.getOrCrash(),
      repaymentMode: emiDetails.repaymentMode.getOrCrash(),
    );
  }

  EMIDetails toDomain() {
    return EMIDetails(
      emiAmount: RequiredPrice(emiAmount.toString()),
      tenure: Tenure(tenure.toString()),
      firstEMIDate: EMIDate(firstEMIDate),
      lastEMIDate: findLastEMIDate(firstEMIDate, tenure),
      bankName: Name(bankName),
      repaymentMode: RepaymentMode(repaymentMode),
    );
  }

  factory EMIDetailsDto.fromJson(Map<String, dynamic> json) =>
      _$EMIDetailsDtoFromJson(json);

  factory EMIDetailsDto.fromFireStore(
    DocumentSnapshot<Map<String, dynamic>> doc,
  ) {
    return EMIDetailsDto.fromJson(doc.data() as Map<String, dynamic>);
  }

  DateTime findLastEMIDate(String firstEMIDate, int tenure) {
    return DateTime.parse(firstEMIDate).addMonths(tenure - 1);
  }
}
