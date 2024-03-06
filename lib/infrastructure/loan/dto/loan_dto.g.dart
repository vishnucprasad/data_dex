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
      serverTimeStamp: const ServerTimeStampConverter()
          .fromJson(json['serverTimeStamp'] as Object),
    );

Map<String, dynamic> _$$LoanDtoImplToJson(_$LoanDtoImpl instance) =>
    <String, dynamic>{
      'loanStatusIndex': instance.loanStatusIndex,
      'applicant': instance.applicant.toJson(),
      'serverTimeStamp':
          const ServerTimeStampConverter().toJson(instance.serverTimeStamp),
    };
