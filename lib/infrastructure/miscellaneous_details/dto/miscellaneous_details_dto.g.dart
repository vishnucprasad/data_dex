// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'miscellaneous_details_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MiscellaneousDetailsDtoImpl _$$MiscellaneousDetailsDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$MiscellaneousDetailsDtoImpl(
      payoutDetails: PayoutDetailsDto.fromJson(
          json['payoutDetails'] as Map<String, dynamic>),
      referenceDetails: ReferenceDetailsDto.fromJson(
          json['referenceDetails'] as Map<String, dynamic>),
      remarksAndMore: RemarksAndMoreDto.fromJson(
          json['remarksAndMore'] as Map<String, dynamic>),
      applicantImage: json['applicantImage'] == null
          ? null
          : CloudImageDto.fromJson(
              json['applicantImage'] as Map<String, dynamic>),
      coApplicantImage: json['coApplicantImage'] == null
          ? null
          : CloudImageDto.fromJson(
              json['coApplicantImage'] as Map<String, dynamic>),
      guarenterImage: json['guarenterImage'] == null
          ? null
          : CloudImageDto.fromJson(
              json['guarenterImage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MiscellaneousDetailsDtoImplToJson(
        _$MiscellaneousDetailsDtoImpl instance) =>
    <String, dynamic>{
      'payoutDetails': instance.payoutDetails.toJson(),
      'referenceDetails': instance.referenceDetails.toJson(),
      'remarksAndMore': instance.remarksAndMore.toJson(),
      'applicantImage': instance.applicantImage?.toJson(),
      'coApplicantImage': instance.coApplicantImage?.toJson(),
      'guarenterImage': instance.guarenterImage?.toJson(),
    };
