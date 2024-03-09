// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payout_details_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PayoutDetailsDtoImpl _$$PayoutDetailsDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$PayoutDetailsDtoImpl(
      payeeName: json['payeeName'] as String?,
      payeeAmount: (json['payeeAmount'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$PayoutDetailsDtoImplToJson(
        _$PayoutDetailsDtoImpl instance) =>
    <String, dynamic>{
      'payeeName': instance.payeeName,
      'payeeAmount': instance.payeeAmount,
    };
