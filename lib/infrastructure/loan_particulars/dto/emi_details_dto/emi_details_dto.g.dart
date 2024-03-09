// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'emi_details_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EMIDetailsDtoImpl _$$EMIDetailsDtoImplFromJson(Map<String, dynamic> json) =>
    _$EMIDetailsDtoImpl(
      emiAmount: (json['emiAmount'] as num).toDouble(),
      tenure: json['tenure'] as int,
      firstEMIDate: json['firstEMIDate'] as String,
      bankName: json['bankName'] as String,
      repaymentMode: json['repaymentMode'] as String,
    );

Map<String, dynamic> _$$EMIDetailsDtoImplToJson(_$EMIDetailsDtoImpl instance) =>
    <String, dynamic>{
      'emiAmount': instance.emiAmount,
      'tenure': instance.tenure,
      'firstEMIDate': instance.firstEMIDate,
      'bankName': instance.bankName,
      'repaymentMode': instance.repaymentMode,
    };
