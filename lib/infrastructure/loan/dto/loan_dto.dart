// ignore_for_file: invalid_annotation_target

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:data_dex/domain/core/value_objects.dart';
import 'package:data_dex/domain/loan/models/loan.dart';
import 'package:data_dex/infrastructure/applicant/dto/applicant_dto.dart';
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
    @ServerTimeStampConverter() required FieldValue serverTimeStamp,
  }) = _LoanDto;

  factory LoanDto.fromDomain(Loan loan) {
    return LoanDto(
      id: loan.id.getOrCrash(),
      loanStatusIndex: loan.loanStatusIndex,
      applicant: ApplicantDto.fromDomain(loan.applicant),
      serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }

  Loan toDomain() {
    return Loan(
      id: UniqueId.fromUniqueString(id),
      loanStatusIndex: loanStatusIndex,
      applicant: applicant.toDomain(),
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
