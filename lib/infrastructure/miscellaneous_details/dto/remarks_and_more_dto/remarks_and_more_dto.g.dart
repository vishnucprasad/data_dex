// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remarks_and_more_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RemarksAndMoreDtoImpl _$$RemarksAndMoreDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$RemarksAndMoreDtoImpl(
      appId: json['appId'] as String,
      leadId: json['leadId'] as String,
      agreementNumber: json['agreementNumber'] as String?,
      vehicleNumber: json['vehicleNumber'] as String?,
      remarks: json['remarks'] as String?,
    );

Map<String, dynamic> _$$RemarksAndMoreDtoImplToJson(
        _$RemarksAndMoreDtoImpl instance) =>
    <String, dynamic>{
      'appId': instance.appId,
      'leadId': instance.leadId,
      'agreementNumber': instance.agreementNumber,
      'vehicleNumber': instance.vehicleNumber,
      'remarks': instance.remarks,
    };
