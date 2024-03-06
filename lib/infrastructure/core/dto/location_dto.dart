import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:data_dex/domain/core/models/location/location.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_dto.freezed.dart';
part 'location_dto.g.dart';

@freezed
class LocationDto with _$LocationDto {
  const LocationDto._();

  const factory LocationDto({
    required String latitude,
    required String longitude,
  }) = _LocationDto;

  factory LocationDto.fromDomain(Location location) {
    return LocationDto(
      latitude: location.latitude,
      longitude: location.longitude,
    );
  }

  Location toDomain() {
    return Location(
      latitude: latitude,
      longitude: longitude,
    );
  }

  factory LocationDto.fromJson(Map<String, dynamic> json) =>
      _$LocationDtoFromJson(json);

  factory LocationDto.fromFireStore(
    DocumentSnapshot<Map<String, dynamic>> doc,
  ) {
    return LocationDto.fromJson(doc.data() as Map<String, dynamic>);
  }
}
