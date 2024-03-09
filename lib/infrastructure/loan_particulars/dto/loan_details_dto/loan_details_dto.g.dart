// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loan_details_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoanDetailsDtoImpl _$$LoanDetailsDtoImplFromJson(Map<String, dynamic> json) =>
    _$LoanDetailsDtoImpl(
      loanAmount: (json['loanAmount'] as num).toDouble(),
      ltv: (json['ltv'] as num).toDouble(),
      serviceCharge: (json['serviceCharge'] as num).toDouble(),
      documentationCharge: (json['documentationCharge'] as num?)?.toDouble(),
      lifeAmount: (json['lifeAmount'] as num?)?.toDouble(),
      pacAmount: (json['pacAmount'] as num?)?.toDouble(),
      stampDuty: (json['stampDuty'] as num).toDouble(),
      dateShiftingCharge: (json['dateShiftingCharge'] as num?)?.toDouble(),
      counterAmount: (json['counterAmount'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$LoanDetailsDtoImplToJson(
        _$LoanDetailsDtoImpl instance) =>
    <String, dynamic>{
      'loanAmount': instance.loanAmount,
      'ltv': instance.ltv,
      'serviceCharge': instance.serviceCharge,
      'documentationCharge': instance.documentationCharge,
      'lifeAmount': instance.lifeAmount,
      'pacAmount': instance.pacAmount,
      'stampDuty': instance.stampDuty,
      'dateShiftingCharge': instance.dateShiftingCharge,
      'counterAmount': instance.counterAmount,
    };
