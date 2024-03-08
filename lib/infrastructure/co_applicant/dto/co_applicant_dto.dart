// ignore_for_file: invalid_annotation_target

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:data_dex/domain/co_applicant/models/co_applicant.dart';
import 'package:data_dex/infrastructure/core/dto/address_dto.dart';
import 'package:data_dex/infrastructure/core/dto/basic_info_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'co_applicant_dto.freezed.dart';
part 'co_applicant_dto.g.dart';

@freezed
class CoApplicantDto with _$CoApplicantDto {
  const CoApplicantDto._();

  @JsonSerializable(explicitToJson: true)
  const factory CoApplicantDto({
    required BasicInfoDto basicInfo,
    required AddressDto address,
  }) = _CoApplicantDto;

  factory CoApplicantDto.fromDomain(CoApplicant coApplicant) {
    return CoApplicantDto(
      basicInfo: BasicInfoDto.fromDomain(coApplicant.basicInfo),
      address: AddressDto.fromDomain(coApplicant.address),
    );
  }

  CoApplicant toDomain() {
    return CoApplicant(
      basicInfo: basicInfo.toDomain(),
      address: address.toDomain(),
    );
  }

  factory CoApplicantDto.fromJson(Map<String, dynamic> json) =>
      _$CoApplicantDtoFromJson(json);

  factory CoApplicantDto.fromFireStore(
    DocumentSnapshot<Map<String, dynamic>> doc,
  ) {
    return CoApplicantDto.fromJson(doc.data() as Map<String, dynamic>);
  }
}
