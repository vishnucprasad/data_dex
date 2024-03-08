// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'co_applicant_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CoApplicantDtoImpl _$$CoApplicantDtoImplFromJson(Map<String, dynamic> json) =>
    _$CoApplicantDtoImpl(
      basicInfo:
          BasicInfoDto.fromJson(json['basicInfo'] as Map<String, dynamic>),
      address: AddressDto.fromJson(json['address'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CoApplicantDtoImplToJson(
        _$CoApplicantDtoImpl instance) =>
    <String, dynamic>{
      'basicInfo': instance.basicInfo.toJson(),
      'address': instance.address.toJson(),
    };
