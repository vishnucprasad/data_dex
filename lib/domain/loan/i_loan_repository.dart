import 'package:dartz/dartz.dart';
import 'package:data_dex/domain/core/value_objects.dart';
import 'package:data_dex/domain/loan/failures/loan_failure.dart';
import 'package:data_dex/domain/loan/models/loan.dart';
import 'package:kt_dart/kt.dart';

abstract class ILoanRepository {
  Stream<Either<LoanFailure, KtList<Loan>>> watchAll();
  Future<Either<LoanFailure, Unit>> create(Loan loan);
  Future<Either<LoanFailure, Unit>> dropLoan(UniqueId id);
  Future<Either<LoanFailure, Unit>> disburse(
    UniqueId id,
    String disbursementDate,
  );
  Future<Either<LoanFailure, Unit>> restore(UniqueId id);
  Future<Either<LoanFailure, KtList<Loan>>> findFollowUps(List<Loan> loans);
}
