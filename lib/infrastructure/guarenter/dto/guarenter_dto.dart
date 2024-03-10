// ignore_for_file: invalid_annotation_target
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:data_dex/domain/guarenter/models/guarenter.dart';
import 'package:data_dex/infrastructure/core/dto/address_dto/address_dto.dart';
import 'package:data_dex/infrastructure/core/dto/basic_info_dto/basic_info_dto.dart';
import 'package:data_dex/infrastructure/core/dto/cloud_image_dto/cloud_image_dto.dart';
import 'package:data_dex/infrastructure/core/dto/location_dto/location_dto.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'guarenter_dto.freezed.dart';
part 'guarenter_dto.g.dart';

@freezed
class GuarenterDto with _$GuarenterDto {
  const GuarenterDto._();

  @JsonSerializable(explicitToJson: true)
  const factory GuarenterDto({
    required BasicInfoDto basicInfo,
    required AddressDto address,
    required LocationDto? location,
    required CloudImageDto? houseImage,
  }) = _GuarenterDto;

  factory GuarenterDto.fromDomain(Guarenter guarenter) {
    return GuarenterDto(
      basicInfo: BasicInfoDto.fromDomain(guarenter.basicInfo),
      address: AddressDto.fromDomain(guarenter.address),
      location: guarenter.location != null
          ? LocationDto.fromDomain(guarenter.location!)
          : null,
      houseImage: guarenter.houseImage != null
          ? CloudImageDto.fromDomain(guarenter.houseImage!)
          : null,
    );
  }

  Guarenter toDomain() {
    return Guarenter(
      basicInfo: basicInfo.toDomain(),
      address: address.toDomain(),
      location: location?.toDomain(),
      houseImage: houseImage?.toDomain(),
    );
  }

  factory GuarenterDto.fromJson(Map<String, dynamic> json) =>
      _$GuarenterDtoFromJson(json);

  factory GuarenterDto.fromFireStore(
    DocumentSnapshot<Map<String, dynamic>> doc,
  ) {
    return GuarenterDto.fromJson(doc.data() as Map<String, dynamic>);
  }
}
