// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guarenter_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GuarenterDtoImpl _$$GuarenterDtoImplFromJson(Map<String, dynamic> json) =>
    _$GuarenterDtoImpl(
      basicInfo:
          BasicInfoDto.fromJson(json['basicInfo'] as Map<String, dynamic>),
      address: AddressDto.fromJson(json['address'] as Map<String, dynamic>),
      location: json['location'] == null
          ? null
          : LocationDto.fromJson(json['location'] as Map<String, dynamic>),
      houseImage: json['houseImage'] == null
          ? null
          : CloudImageDto.fromJson(json['houseImage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GuarenterDtoImplToJson(_$GuarenterDtoImpl instance) =>
    <String, dynamic>{
      'basicInfo': instance.basicInfo.toJson(),
      'address': instance.address.toJson(),
      'location': instance.location?.toJson(),
      'houseImage': instance.houseImage?.toJson(),
    };
