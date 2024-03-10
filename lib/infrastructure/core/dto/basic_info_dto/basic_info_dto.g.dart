// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basic_info_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BasicInfoDtoImpl _$$BasicInfoDtoImplFromJson(Map<String, dynamic> json) =>
    _$BasicInfoDtoImpl(
      name: json['name'] as String,
      phoneNumber: json['phoneNumber'] as String,
      emailAddress: json['emailAddress'] as String?,
      dateOfBirth: json['dateOfBirth'] as String,
    );

Map<String, dynamic> _$$BasicInfoDtoImplToJson(_$BasicInfoDtoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'phoneNumber': instance.phoneNumber,
      'emailAddress': instance.emailAddress,
      'dateOfBirth': instance.dateOfBirth,
    };
