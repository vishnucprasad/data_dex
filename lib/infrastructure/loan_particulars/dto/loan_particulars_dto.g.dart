// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loan_particulars_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoanParticularsDtoImpl _$$LoanParticularsDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$LoanParticularsDtoImpl(
      vehicleDetails: VehicleDetailsDto.fromJson(
          json['vehicleDetails'] as Map<String, dynamic>),
      loanDetails:
          LoanDetailsDto.fromJson(json['loanDetails'] as Map<String, dynamic>),
      emiDetails:
          EMIDetailsDto.fromJson(json['emiDetails'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LoanParticularsDtoImplToJson(
        _$LoanParticularsDtoImpl instance) =>
    <String, dynamic>{
      'vehicleDetails': instance.vehicleDetails.toJson(),
      'loanDetails': instance.loanDetails.toJson(),
      'emiDetails': instance.emiDetails.toJson(),
    };
