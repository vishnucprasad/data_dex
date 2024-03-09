// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:data_dex/domain/guarenter/models/guarenter.dart';
import 'package:data_dex/infrastructure/core/dto/address_dto.dart';
import 'package:data_dex/infrastructure/core/dto/basic_info_dto.dart';
import 'package:data_dex/infrastructure/core/dto/location_dto.dart';
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
    @Uint8ListConverter() required Uint8List? houseImage,
  }) = _GuarenterDto;

  factory GuarenterDto.fromDomain(Guarenter guarenter) {
    return GuarenterDto(
      basicInfo: BasicInfoDto.fromDomain(guarenter.basicInfo),
      address: AddressDto.fromDomain(guarenter.address),
      location: guarenter.location != null
          ? LocationDto.fromDomain(guarenter.location!)
          : null,
      houseImage: guarenter.houseImage,
    );
  }

  Guarenter toDomain() {
    return Guarenter(
      basicInfo: basicInfo.toDomain(),
      address: address.toDomain(),
      location: location?.toDomain(),
      houseImage: houseImage,
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

class Uint8ListConverter implements JsonConverter<Uint8List, String> {
  const Uint8ListConverter();

  @override
  Uint8List fromJson(String json) {
    return base64Decode(json);
  }

  @override
  String toJson(Uint8List object) {
    return base64Encode(object);
  }
}
