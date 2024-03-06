import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:data_dex/domain/core/models/basic_info/basic_info.dart';
import 'package:data_dex/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'basic_info_dto.freezed.dart';
part 'basic_info_dto.g.dart';

@freezed
class BasicInfoDto with _$BasicInfoDto {
  const BasicInfoDto._();

  const factory BasicInfoDto({
    required String name,
    required String phoneNumber,
    required String? emailAddress,
    required String dateOfBirth,
  }) = _BasicInfoDto;

  factory BasicInfoDto.fromDomain(BasicInfo basicInfo) {
    return BasicInfoDto(
      name: basicInfo.name.getOrCrash(),
      phoneNumber: basicInfo.phoneNumber.getOrCrash(),
      emailAddress: basicInfo.emailAddress?.getOrCrash(),
      dateOfBirth: basicInfo.dateOfBirth.getOrCrash(),
    );
  }

  BasicInfo toDomain() {
    return BasicInfo(
      name: Name(name),
      phoneNumber: PhoneNumber(phoneNumber),
      emailAddress: emailAddress != null ? EmailAddress(emailAddress!) : null,
      dateOfBirth: DateOfBirth(dateOfBirth),
    );
  }

  factory BasicInfoDto.fromJson(Map<String, dynamic> json) =>
      _$BasicInfoDtoFromJson(json);

  factory BasicInfoDto.fromFireStore(
    DocumentSnapshot<Map<String, dynamic>> doc,
  ) {
    return BasicInfoDto.fromJson(doc.data() as Map<String, dynamic>);
  }
}
