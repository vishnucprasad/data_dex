import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:data_dex/domain/core/constants.dart';
import 'package:data_dex/domain/core/value_objects.dart';
import 'package:data_dex/domain/loan_particulars/models/loan_details/loan_details.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'loan_details_dto.freezed.dart';
part 'loan_details_dto.g.dart';

@freezed
class LoanDetailsDto with _$LoanDetailsDto {
  const LoanDetailsDto._();

  const factory LoanDetailsDto({
    required double loanAmount,
    required double ltv,
    required double serviceCharge,
    required double? documentationCharge,
    required double? lifeAmount,
    required double? pacAmount,
    required double stampDuty,
    required double? dateShiftingCharge,
    required double? counterAmount,
    required int? loanScheme,
    required List<int>? fundedChargesList,
  }) = _LoanDetailsDto;

  factory LoanDetailsDto.fromDomain(LoanDetails loanDetails) {
    return LoanDetailsDto(
      loanAmount: double.parse(
        loanDetails.loanAmount.getOrCrash(),
      ),
      ltv: double.parse(
        loanDetails.ltv.getOrCrash(),
      ),
      serviceCharge: double.parse(
        loanDetails.serviceCharge.getOrCrash(),
      ),
      documentationCharge:
          loanDetails.documentationCharge.getOrCrash().isNotEmpty
              ? double.parse(
                  loanDetails.documentationCharge.getOrCrash(),
                )
              : null,
      lifeAmount: loanDetails.lifeAmount.getOrCrash().isNotEmpty
          ? double.parse(
              loanDetails.lifeAmount.getOrCrash(),
            )
          : null,
      pacAmount: loanDetails.pacAmount.getOrCrash().isNotEmpty
          ? double.parse(
              loanDetails.pacAmount.getOrCrash(),
            )
          : null,
      stampDuty: double.parse(
        loanDetails.stampDuty.getOrCrash(),
      ),
      dateShiftingCharge: loanDetails.dateShiftingCharge.getOrCrash().isNotEmpty
          ? double.parse(
              loanDetails.dateShiftingCharge.getOrCrash(),
            )
          : null,
      counterAmount: loanDetails.counterAmount.getOrCrash().isNotEmpty
          ? double.parse(
              loanDetails.counterAmount.getOrCrash(),
            )
          : null,
      loanScheme: loanDetails.loanScheme?.index,
      fundedChargesList: loanDetails.fundedChargesList,
    );
  }

  LoanDetails toDomain() {
    return LoanDetails(
      loanAmount: RequiredPrice(loanAmount.toString()),
      ltv: LTVData(ltv.toString()),
      serviceCharge: RequiredPrice(serviceCharge.toString()),
      documentationCharge: OptionalPrice(
        documentationCharge != null ? documentationCharge.toString() : '',
      ),
      lifeAmount: OptionalPrice(
        lifeAmount != null ? lifeAmount.toString() : '',
      ),
      pacAmount: OptionalPrice(
        pacAmount != null ? pacAmount.toString() : '',
      ),
      stampDuty: RequiredPrice(stampDuty.toString()),
      dateShiftingCharge: OptionalPrice(
        dateShiftingCharge != null ? dateShiftingCharge.toString() : '',
      ),
      counterAmount: OptionalPrice(
        counterAmount != null ? counterAmount.toString() : '',
      ),
      loanScheme: loanScheme != null ? LoanScheme.values[loanScheme!] : null,
      fundedChargesList: fundedChargesList,
    );
  }

  factory LoanDetailsDto.fromJson(Map<String, dynamic> json) =>
      _$LoanDetailsDtoFromJson(json);

  factory LoanDetailsDto.fromFireStore(
    DocumentSnapshot<Map<String, dynamic>> doc,
  ) {
    return LoanDetailsDto.fromJson(doc.data() as Map<String, dynamic>);
  }
}
