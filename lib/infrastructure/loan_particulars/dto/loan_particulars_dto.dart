// ignore_for_file: invalid_annotation_target

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:data_dex/domain/loan_particulars/models/loan_particulars.dart';
import 'package:data_dex/infrastructure/loan_particulars/dto/emi_details_dto/emi_details_dto.dart';
import 'package:data_dex/infrastructure/loan_particulars/dto/loan_details_dto/loan_details_dto.dart';
import 'package:data_dex/infrastructure/loan_particulars/dto/vehicle_details_dto/vehicle_details_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'loan_particulars_dto.freezed.dart';
part 'loan_particulars_dto.g.dart';

@freezed
class LoanParticularsDto with _$LoanParticularsDto {
  const LoanParticularsDto._();

  @JsonSerializable(explicitToJson: true)
  const factory LoanParticularsDto({
    required VehicleDetailsDto vehicleDetails,
    required LoanDetailsDto loanDetails,
    required EMIDetailsDto emiDetails,
  }) = _LoanParticularsDto;

  factory LoanParticularsDto.fromDomain(LoanParticulars loanParticulars) {
    return LoanParticularsDto(
      vehicleDetails:
          VehicleDetailsDto.fromDomain(loanParticulars.vehicleDetails),
      loanDetails: LoanDetailsDto.fromDomain(loanParticulars.loanDetails),
      emiDetails: EMIDetailsDto.fromDomain(loanParticulars.emiDetails),
    );
  }

  LoanParticulars toDomain() {
    return LoanParticulars(
      vehicleDetails: vehicleDetails.toDomain(),
      loanDetails: loanDetails.toDomain(),
      emiDetails: emiDetails.toDomain(),
    );
  }

  factory LoanParticularsDto.fromJson(Map<String, dynamic> json) =>
      _$LoanParticularsDtoFromJson(json);

  factory LoanParticularsDto.fromFireStore(
    DocumentSnapshot<Map<String, dynamic>> doc,
  ) {
    return LoanParticularsDto.fromJson(doc.data() as Map<String, dynamic>);
  }
}
