// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:data_dex/domain/applicant/models/applicant.dart';
import 'package:data_dex/infrastructure/core/dto/address_dto/address_dto.dart';
import 'package:data_dex/infrastructure/core/dto/basic_info_dto/basic_info_dto.dart';
import 'package:data_dex/infrastructure/core/dto/cloud_image_dto/cloud_image_dto.dart';
import 'package:data_dex/infrastructure/core/dto/location_dto/location_dto.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'applicant_dto.freezed.dart';
part 'applicant_dto.g.dart';

@freezed
class ApplicantDto with _$ApplicantDto {
  const ApplicantDto._();

  @JsonSerializable(explicitToJson: true)
  const factory ApplicantDto({
    required BasicInfoDto basicInfo,
    required AddressDto address,
    required LocationDto? location,
    required CloudImageDto? houseImage,
  }) = _ApplicantDto;

  factory ApplicantDto.fromDomain(Applicant applicant) {
    return ApplicantDto(
      basicInfo: BasicInfoDto.fromDomain(applicant.basicInfo),
      address: AddressDto.fromDomain(applicant.address),
      location: applicant.location != null
          ? LocationDto.fromDomain(applicant.location!)
          : null,
      houseImage: applicant.houseImage != null
          ? CloudImageDto.fromDomain(applicant.houseImage!)
          : null,
    );
  }

  Applicant toDomain() {
    return Applicant(
      basicInfo: basicInfo.toDomain(),
      address: address.toDomain(),
      location: location?.toDomain(),
      houseImage: houseImage?.toDomain(),
    );
  }

  factory ApplicantDto.fromJson(Map<String, dynamic> json) =>
      _$ApplicantDtoFromJson(json);

  factory ApplicantDto.fromFireStore(
    DocumentSnapshot<Map<String, dynamic>> doc,
  ) {
    return ApplicantDto.fromJson(doc.data() as Map<String, dynamic>);
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
