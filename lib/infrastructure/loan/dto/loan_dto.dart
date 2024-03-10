// ignore_for_file: invalid_annotation_target

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:data_dex/domain/core/value_objects.dart';
import 'package:data_dex/domain/loan/models/loan.dart';
import 'package:data_dex/infrastructure/applicant/dto/applicant_dto.dart';
import 'package:data_dex/infrastructure/co_applicant/dto/co_applicant_dto.dart';
import 'package:data_dex/infrastructure/guarenter/dto/guarenter_dto.dart';
import 'package:data_dex/infrastructure/loan_particulars/dto/loan_particulars_dto.dart';
import 'package:data_dex/infrastructure/miscellaneous_details/dto/miscellaneous_details_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'loan_dto.freezed.dart';
part 'loan_dto.g.dart';

@freezed
class LoanDto with _$LoanDto {
  const LoanDto._();

  @JsonSerializable(explicitToJson: true)
  const factory LoanDto({
    @JsonKey(includeToJson: false, includeFromJson: false) String? id,
    required int loanStatusIndex,
    required ApplicantDto applicant,
    required CoApplicantDto? coApplicant,
    required GuarenterDto? guarenter,
    required LoanParticularsDto? loanParticulars,
    required MiscellaneousDetailsDto? miscellaneousDetails,
    @ServerTimeStampConverter() required FieldValue serverTimeStamp,
  }) = _LoanDto;

  factory LoanDto.fromDomain(Loan loan) {
    return LoanDto(
      id: loan.id.getOrCrash(),
      loanStatusIndex: loan.loanStatusIndex,
      applicant: ApplicantDto.fromDomain(loan.applicant),
      coApplicant: loan.coApplicant != null
          ? CoApplicantDto.fromDomain(loan.coApplicant!)
          : null,
      guarenter: loan.guarenter != null
          ? GuarenterDto.fromDomain(loan.guarenter!)
          : null,
      loanParticulars: loan.loanParticulars != null
          ? LoanParticularsDto.fromDomain(loan.loanParticulars!)
          : null,
      miscellaneousDetails: loan.miscellaneousDetails != null
          ? MiscellaneousDetailsDto.fromDomain(loan.miscellaneousDetails!)
          : null,
      serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }

  Loan toDomain() {
    return Loan(
      id: UniqueId.fromUniqueString(id),
      loanStatusIndex: loanStatusIndex,
      applicant: applicant.toDomain(),
      coApplicant: coApplicant?.toDomain(),
      guarenter: guarenter?.toDomain(),
      loanParticulars: loanParticulars?.toDomain(),
      miscellaneousDetails: miscellaneousDetails?.toDomain(),
    );
  }

  factory LoanDto.fromJson(Map<String, dynamic> json) =>
      _$LoanDtoFromJson(json);

  factory LoanDto.fromFireStore(DocumentSnapshot<Map<String, dynamic>> doc) =>
      LoanDto.fromJson(doc.data() as Map<String, dynamic>).copyWith(id: doc.id);
}

class ServerTimeStampConverter implements JsonConverter<FieldValue, Object> {
  const ServerTimeStampConverter();

  @override
  FieldValue fromJson(Object json) {
    return FieldValue.serverTimestamp();
  }

  @override
  Object toJson(FieldValue fieldValue) => fieldValue;
}
