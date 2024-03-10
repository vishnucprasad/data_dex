// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddressDtoImpl _$$AddressDtoImplFromJson(Map<String, dynamic> json) =>
    _$AddressDtoImpl(
      houseName: json['houseName'] as String,
      postOffice: json['postOffice'] as String,
      streetName: json['streetName'] as String,
      pincode: json['pincode'] as String,
    );

Map<String, dynamic> _$$AddressDtoImplToJson(_$AddressDtoImpl instance) =>
    <String, dynamic>{
      'houseName': instance.houseName,
      'postOffice': instance.postOffice,
      'streetName': instance.streetName,
      'pincode': instance.pincode,
    };
