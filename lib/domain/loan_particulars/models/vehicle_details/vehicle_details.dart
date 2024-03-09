import 'package:dartz/dartz.dart';
import 'package:data_dex/domain/core/value_failure.dart';
import 'package:data_dex/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vehicle_details.freezed.dart';

@freezed
class VehicleDetails with _$VehicleDetails {
  const VehicleDetails._();
  const factory VehicleDetails({
    required Name dealerName,
    required String? subDealerName,
    required String? brokerName,
    required Name vehicleName,
    required RequiredPrice exShowroomPrice,
    required RequiredPrice onRoadPrice,
  }) = _VehicleDetails;

  factory VehicleDetails.empty() {
    return VehicleDetails(
      dealerName: Name(''),
      subDealerName: null,
      brokerName: null,
      vehicleName: Name(''),
      exShowroomPrice: RequiredPrice(''),
      onRoadPrice: RequiredPrice(''),
    );
  }

  Option<ValueFailure<dynamic>> get failureOption {
    return dealerName.failureOrUnit
        .andThen(vehicleName.failureOrUnit)
        .andThen(exShowroomPrice.failureOrUnit)
        .andThen(onRoadPrice.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
