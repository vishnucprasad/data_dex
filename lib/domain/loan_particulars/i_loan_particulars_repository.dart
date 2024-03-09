import 'package:dartz/dartz.dart';
import 'package:data_dex/domain/core/value_objects.dart';
import 'package:data_dex/domain/loan_particulars/failures/loan_particulars_failure.dart';
import 'package:data_dex/domain/loan_particulars/models/loan_particulars.dart';

abstract class ILoanParticularsRepository {
  Future<Either<LoanParticularsFailure, Unit>> saveLoanParticulars(
    UniqueId id,
    LoanParticulars loanParticulars,
  );
}
