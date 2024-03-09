import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:data_dex/domain/core/value_objects.dart';
import 'package:data_dex/domain/miscellaneous_details/models/reference_details/reference_details.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reference_details_dto.freezed.dart';
part 'reference_details_dto.g.dart';

@freezed
class ReferenceDetailsDto with _$ReferenceDetailsDto {
  const ReferenceDetailsDto._();

  const factory ReferenceDetailsDto({
    required String referenceOneName,
    required String referenceOnePhoneNumber,
    required String referenceTwoName,
    required String referenceTwoPhoneNumber,
  }) = _ReferenceDetailsDto;

  factory ReferenceDetailsDto.fromDomain(ReferenceDetails referenceDetails) {
    return ReferenceDetailsDto(
      referenceOneName: referenceDetails.referenceOneName.getOrCrash(),
      referenceOnePhoneNumber:
          referenceDetails.referenceOnePhoneNumber.getOrCrash(),
      referenceTwoName: referenceDetails.referenceTwoName.getOrCrash(),
      referenceTwoPhoneNumber:
          referenceDetails.referenceTwoPhoneNumber.getOrCrash(),
    );
  }

  ReferenceDetails toDomain() {
    return ReferenceDetails(
      referenceOneName: Name(referenceOneName),
      referenceOnePhoneNumber: PhoneNumber(referenceOnePhoneNumber),
      referenceTwoName: Name(referenceTwoName),
      referenceTwoPhoneNumber: PhoneNumber(referenceTwoPhoneNumber),
    );
  }

  factory ReferenceDetailsDto.fromJson(Map<String, dynamic> json) =>
      _$ReferenceDetailsDtoFromJson(json);

  factory ReferenceDetailsDto.fromFireStore(
    DocumentSnapshot<Map<String, dynamic>> doc,
  ) {
    return ReferenceDetailsDto.fromJson(doc.data() as Map<String, dynamic>);
  }
}
