import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:data_dex/domain/core/value_objects.dart';
import 'package:data_dex/domain/miscellaneous_details/models/payout_details/payout_details.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payout_details_dto.freezed.dart';
part 'payout_details_dto.g.dart';

@freezed
class PayoutDetailsDto with _$PayoutDetailsDto {
  const PayoutDetailsDto._();

  const factory PayoutDetailsDto({
    required String? payeeName,
    required double? payeeAmount,
  }) = _PayoutDetailsDto;

  factory PayoutDetailsDto.fromDomain(PayoutDetails payoutDetails) {
    return PayoutDetailsDto(
      payeeName: payoutDetails.payeeName,
      payeeAmount: payoutDetails.payeeAmount.getOrCrash().isNotEmpty
          ? double.parse(payoutDetails.payeeAmount.getOrCrash())
          : null,
    );
  }

  PayoutDetails toDomain() {
    return PayoutDetails(
      payeeName: payeeName,
      payeeAmount: OptionalPrice(
        payeeAmount != null ? payeeAmount.toString() : '',
      ),
    );
  }

  factory PayoutDetailsDto.fromJson(Map<String, dynamic> json) =>
      _$PayoutDetailsDtoFromJson(json);

  factory PayoutDetailsDto.fromFireStore(
    DocumentSnapshot<Map<String, dynamic>> doc,
  ) {
    return PayoutDetailsDto.fromJson(doc.data() as Map<String, dynamic>);
  }
}
