// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'applicant_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApplicantDtoImpl _$$ApplicantDtoImplFromJson(Map<String, dynamic> json) =>
    _$ApplicantDtoImpl(
      basicInfo:
          BasicInfoDto.fromJson(json['basicInfo'] as Map<String, dynamic>),
      address: AddressDto.fromJson(json['address'] as Map<String, dynamic>),
      location: json['location'] == null
          ? null
          : LocationDto.fromJson(json['location'] as Map<String, dynamic>),
      houseImage: _$JsonConverterFromJson<String, Uint8List>(
          json['houseImage'], const Uint8ListConverter().fromJson),
    );

Map<String, dynamic> _$$ApplicantDtoImplToJson(_$ApplicantDtoImpl instance) =>
    <String, dynamic>{
      'basicInfo': instance.basicInfo.toJson(),
      'address': instance.address.toJson(),
      'location': instance.location?.toJson(),
      'houseImage': _$JsonConverterToJson<String, Uint8List>(
          instance.houseImage, const Uint8ListConverter().toJson),
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
