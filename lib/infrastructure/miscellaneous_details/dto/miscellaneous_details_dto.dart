// ignore_for_file: invalid_annotation_target

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:data_dex/domain/miscellaneous_details/models/miscellaneous_details.dart';
import 'package:data_dex/infrastructure/core/dto/cloud_image_dto/cloud_image_dto.dart';
import 'package:data_dex/infrastructure/miscellaneous_details/dto/payout_details_dto/payout_details_dto.dart';
import 'package:data_dex/infrastructure/miscellaneous_details/dto/reference_details_dto/reference_details_dto.dart';
import 'package:data_dex/infrastructure/miscellaneous_details/dto/remarks_and_more_dto/remarks_and_more_dto.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'miscellaneous_details_dto.freezed.dart';
part 'miscellaneous_details_dto.g.dart';

@freezed
class MiscellaneousDetailsDto with _$MiscellaneousDetailsDto {
  const MiscellaneousDetailsDto._();

  @JsonSerializable(explicitToJson: true)
  const factory MiscellaneousDetailsDto({
    required PayoutDetailsDto payoutDetails,
    required ReferenceDetailsDto referenceDetails,
    required RemarksAndMoreDto remarksAndMore,
    required CloudImageDto? applicantImage,
    required CloudImageDto? coApplicantImage,
    required CloudImageDto? guarenterImage,
  }) = _MiscellaneousDetailsDto;

  factory MiscellaneousDetailsDto.fromDomain(
    MiscellaneousDetails miscellaneousDetails,
  ) {
    return MiscellaneousDetailsDto(
      payoutDetails: PayoutDetailsDto.fromDomain(
        miscellaneousDetails.payoutDetails,
      ),
      referenceDetails: ReferenceDetailsDto.fromDomain(
        miscellaneousDetails.referenceDetails,
      ),
      remarksAndMore: RemarksAndMoreDto.fromDomain(
        miscellaneousDetails.remarksAndMore,
      ),
      applicantImage: miscellaneousDetails.applicantImage != null
          ? CloudImageDto.fromDomain(miscellaneousDetails.applicantImage!)
          : null,
      coApplicantImage: miscellaneousDetails.coApplicantImage != null
          ? CloudImageDto.fromDomain(miscellaneousDetails.coApplicantImage!)
          : null,
      guarenterImage: miscellaneousDetails.guarenterImage != null
          ? CloudImageDto.fromDomain(miscellaneousDetails.guarenterImage!)
          : null,
    );
  }

  MiscellaneousDetails toDomain() {
    return MiscellaneousDetails(
      payoutDetails: payoutDetails.toDomain(),
      referenceDetails: referenceDetails.toDomain(),
      remarksAndMore: remarksAndMore.toDomain(),
      applicantImage: applicantImage?.toDomain(),
      coApplicantImage: coApplicantImage?.toDomain(),
      guarenterImage: guarenterImage?.toDomain(),
    );
  }

  factory MiscellaneousDetailsDto.fromJson(Map<String, dynamic> json) =>
      _$MiscellaneousDetailsDtoFromJson(json);

  factory MiscellaneousDetailsDto.fromFireStore(
    DocumentSnapshot<Map<String, dynamic>> doc,
  ) {
    return MiscellaneousDetailsDto.fromJson(doc.data() as Map<String, dynamic>);
  }
}
