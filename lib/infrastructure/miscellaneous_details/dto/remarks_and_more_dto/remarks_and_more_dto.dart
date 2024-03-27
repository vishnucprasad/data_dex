import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:data_dex/domain/core/value_objects.dart';
import 'package:data_dex/domain/miscellaneous_details/models/remarks_and_more/remarks_and_more.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'remarks_and_more_dto.freezed.dart';
part 'remarks_and_more_dto.g.dart';

@freezed
class RemarksAndMoreDto with _$RemarksAndMoreDto {
  const RemarksAndMoreDto._();

  const factory RemarksAndMoreDto({
    required String appId,
    required String leadId,
    required String? agreementNumber,
    required String? vehicleNumber,
    required String? remarks,
  }) = _RemarksAndMoreDto;

  factory RemarksAndMoreDto.fromDomain(RemarksAndMore remarksAndMore) {
    return RemarksAndMoreDto(
      appId: remarksAndMore.appId.getOrCrash(),
      leadId: remarksAndMore.leadId.getOrCrash(),
      agreementNumber: remarksAndMore.agreementNumber,
      vehicleNumber: remarksAndMore.vehicleNumber,
      remarks: remarksAndMore.remarks?.getOrCrash(),
    );
  }

  RemarksAndMore toDomain() {
    return RemarksAndMore(
      appId: AppId(appId),
      leadId: LeadId(leadId),
      agreementNumber: agreementNumber,
      vehicleNumber: vehicleNumber,
      remarks: remarks != null ? Remarks(remarks!) : null,
    );
  }

  factory RemarksAndMoreDto.fromJson(Map<String, dynamic> json) =>
      _$RemarksAndMoreDtoFromJson(json);

  factory RemarksAndMoreDto.fromFireStore(
    DocumentSnapshot<Map<String, dynamic>> doc,
  ) {
    return RemarksAndMoreDto.fromJson(doc.data() as Map<String, dynamic>);
  }
}
