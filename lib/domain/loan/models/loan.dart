import 'package:data_dex/domain/applicant/models/applicant.dart';
import 'package:data_dex/domain/co_applicant/models/co_applicant.dart';
import 'package:data_dex/domain/core/value_objects.dart';
import 'package:data_dex/domain/guarenter/models/guarenter.dart';
import 'package:data_dex/domain/loan_particulars/models/loan_particulars.dart';
import 'package:data_dex/domain/miscellaneous_details/models/miscellaneous_details.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'loan.freezed.dart';

@freezed
class Loan with _$Loan {
  const factory Loan({
    required UniqueId id,
    required int loanStatusIndex,
    required Applicant applicant,
    CoApplicant? coApplicant,
    Guarenter? guarenter,
    LoanParticulars? loanParticulars,
    MiscellaneousDetails? miscellaneousDetails,
  }) = _Loan;
}
