import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:data_dex/domain/core/value_objects.dart';
import 'package:data_dex/domain/loan_particulars/models/vehicle_details/vehicle_details.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vehicle_details_dto.freezed.dart';
part 'vehicle_details_dto.g.dart';

@freezed
class VehicleDetailsDto with _$VehicleDetailsDto {
  const VehicleDetailsDto._();

  const factory VehicleDetailsDto({
    required String dealerName,
    required String? subDealerName,
    required String? brokerName,
    required String vehicleName,
    required double exShowroomPrice,
    required double onRoadPrice,
  }) = _VehicleDetailsDto;

  factory VehicleDetailsDto.fromDomain(VehicleDetails vehicleDetails) {
    return VehicleDetailsDto(
      dealerName: vehicleDetails.dealerName.getOrCrash(),
      subDealerName: vehicleDetails.subDealerName,
      brokerName: vehicleDetails.brokerName,
      vehicleName: vehicleDetails.vehicleName.getOrCrash(),
      exShowroomPrice: double.parse(
        vehicleDetails.exShowroomPrice.getOrCrash(),
      ),
      onRoadPrice: double.parse(
        vehicleDetails.onRoadPrice.getOrCrash(),
      ),
    );
  }

  VehicleDetails toDomain() {
    return VehicleDetails(
      dealerName: Name(dealerName),
      subDealerName: subDealerName,
      brokerName: brokerName,
      vehicleName: Name(vehicleName),
      exShowroomPrice: RequiredPrice(exShowroomPrice.toString()),
      onRoadPrice: RequiredPrice(onRoadPrice.toString()),
    );
  }

  factory VehicleDetailsDto.fromJson(Map<String, dynamic> json) =>
      _$VehicleDetailsDtoFromJson(json);

  factory VehicleDetailsDto.fromFireStore(
    DocumentSnapshot<Map<String, dynamic>> doc,
  ) {
    return VehicleDetailsDto.fromJson(doc.data() as Map<String, dynamic>);
  }
}
