// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_details_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VehicleDetailsDtoImpl _$$VehicleDetailsDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$VehicleDetailsDtoImpl(
      dealerName: json['dealerName'] as String,
      subDealerName: json['subDealerName'] as String?,
      brokerName: json['brokerName'] as String?,
      vehicleName: json['vehicleName'] as String,
      exShowroomPrice: (json['exShowroomPrice'] as num).toDouble(),
      onRoadPrice: (json['onRoadPrice'] as num).toDouble(),
    );

Map<String, dynamic> _$$VehicleDetailsDtoImplToJson(
        _$VehicleDetailsDtoImpl instance) =>
    <String, dynamic>{
      'dealerName': instance.dealerName,
      'subDealerName': instance.subDealerName,
      'brokerName': instance.brokerName,
      'vehicleName': instance.vehicleName,
      'exShowroomPrice': instance.exShowroomPrice,
      'onRoadPrice': instance.onRoadPrice,
    };
