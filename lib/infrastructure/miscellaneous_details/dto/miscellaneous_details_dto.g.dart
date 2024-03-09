// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'miscellaneous_details_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MiscellaneousDetailsDtoImpl _$$MiscellaneousDetailsDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$MiscellaneousDetailsDtoImpl(
      payoutDetails: PayoutDetailsDto.fromJson(
          json['payoutDetails'] as Map<String, dynamic>),
      referenceDetails: ReferenceDetailsDto.fromJson(
          json['referenceDetails'] as Map<String, dynamic>),
      remarksAndMore: RemarksAndMoreDto.fromJson(
          json['remarksAndMore'] as Map<String, dynamic>),
      applicantImage: _$JsonConverterFromJson<String, Uint8List>(
          json['applicantImage'], const Uint8ListConverter().fromJson),
      coApplicantImage: _$JsonConverterFromJson<String, Uint8List>(
          json['coApplicantImage'], const Uint8ListConverter().fromJson),
      guarenterImage: _$JsonConverterFromJson<String, Uint8List>(
          json['guarenterImage'], const Uint8ListConverter().fromJson),
    );

Map<String, dynamic> _$$MiscellaneousDetailsDtoImplToJson(
        _$MiscellaneousDetailsDtoImpl instance) =>
    <String, dynamic>{
      'payoutDetails': instance.payoutDetails.toJson(),
      'referenceDetails': instance.referenceDetails.toJson(),
      'remarksAndMore': instance.remarksAndMore.toJson(),
      'applicantImage': _$JsonConverterToJson<String, Uint8List>(
          instance.applicantImage, const Uint8ListConverter().toJson),
      'coApplicantImage': _$JsonConverterToJson<String, Uint8List>(
          instance.coApplicantImage, const Uint8ListConverter().toJson),
      'guarenterImage': _$JsonConverterToJson<String, Uint8List>(
          instance.guarenterImage, const Uint8ListConverter().toJson),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
