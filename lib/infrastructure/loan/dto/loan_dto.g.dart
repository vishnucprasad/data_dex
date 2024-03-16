// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loan_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoanDtoImpl _$$LoanDtoImplFromJson(Map<String, dynamic> json) =>
    _$LoanDtoImpl(
      loanStatusIndex: json['loanStatusIndex'] as int,
      applicant:
          ApplicantDto.fromJson(json['applicant'] as Map<String, dynamic>),
      coApplicant: json['coApplicant'] == null
          ? null
          : CoApplicantDto.fromJson(
              json['coApplicant'] as Map<String, dynamic>),
      guarenter: json['guarenter'] == null
          ? null
          : GuarenterDto.fromJson(json['guarenter'] as Map<String, dynamic>),
      loanParticulars: json['loanParticulars'] == null
          ? null
          : LoanParticularsDto.fromJson(
              json['loanParticulars'] as Map<String, dynamic>),
      miscellaneousDetails: json['miscellaneousDetails'] == null
          ? null
          : MiscellaneousDetailsDto.fromJson(
              json['miscellaneousDetails'] as Map<String, dynamic>),
      disbursementDate: json['disbursementDate'] as String?,
      serverTimeStamp: const ServerTimeStampConverter()
          .fromJson(json['serverTimeStamp'] as Object),
    );

Map<String, dynamic> _$$LoanDtoImplToJson(_$LoanDtoImpl instance) =>
    <String, dynamic>{
      'loanStatusIndex': instance.loanStatusIndex,
      'applicant': instance.applicant.toJson(),
      'coApplicant': instance.coApplicant?.toJson(),
      'guarenter': instance.guarenter?.toJson(),
      'loanParticulars': instance.loanParticulars?.toJson(),
      'miscellaneousDetails': instance.miscellaneousDetails?.toJson(),
      'disbursementDate': instance.disbursementDate,
      'serverTimeStamp':
          const ServerTimeStampConverter().toJson(instance.serverTimeStamp),
    };
