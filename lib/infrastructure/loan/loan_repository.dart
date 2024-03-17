import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:data_dex/domain/core/constants.dart';
import 'package:data_dex/domain/core/value_objects.dart';
import 'package:data_dex/domain/loan/failures/loan_failure.dart';
import 'package:data_dex/domain/loan/i_loan_repository.dart';
import 'package:data_dex/domain/loan/models/loan.dart';
import 'package:data_dex/infrastructure/core/firestore_helpers.dart';
import 'package:data_dex/infrastructure/loan/dto/loan_dto.dart';
import 'package:data_dex/injection.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: ILoanRepository)
class LoanRepository implements ILoanRepository {
  final FirebaseFirestore _firestore = getIt<FirebaseFirestore>();

  @override
  Stream<Either<LoanFailure, KtList<Loan>>> watchAll() async* {
    final userDoc = await _firestore.userDocument();
    yield* userDoc.loansCollection
        .orderBy('serverTimeStamp', descending: true)
        .snapshots()
        .map(
          (snapshot) => right<LoanFailure, KtList<Loan>>(
            snapshot.docs
                .map((doc) => LoanDto.fromFireStore(
                      doc as DocumentSnapshot<Map<String, dynamic>>,
                    ).toDomain())
                .toImmutableList(),
          ),
        )
        .onErrorReturnWith((e, stackTrace) {
      if (e is PlatformException &&
          e.message != null &&
          e.message!.contains('PERMISSION_DENIED')) {
        return left(const LoanFailure.permissionDenied());
      }
      return left(const LoanFailure.unexpected());
    });
  }

  @override
  Future<Either<LoanFailure, Unit>> create(Loan loan) async {
    try {
      final userDoc = await _firestore.userDocument();
      final loanDto = LoanDto.fromDomain(loan);

      await userDoc.loansCollection.doc(loanDto.id).set(loanDto.toJson());
      return right(unit);
    } on PlatformException catch (e) {
      if (e.message != null && e.message!.contains('PERMISSION_DENIED')) {
        return left(const LoanFailure.permissionDenied());
      }
      return left(const LoanFailure.unexpected());
    }
  }

  @override
  Future<Either<LoanFailure, Unit>> dropLoan(
    UniqueId id,
  ) async {
    try {
      final userDoc = await _firestore.userDocument();

      await userDoc.loansCollection
          .doc(id.getOrCrash())
          .update({'loanStatusIndex': LoanStatus.dropped.index});
      return right(unit);
    } on PlatformException catch (e) {
      if (e.message != null && e.message!.contains('PERMISSION_DENIED')) {
        return left(const LoanFailure.permissionDenied());
      }
      return left(const LoanFailure.unexpected());
    }
  }

  @override
  Future<Either<LoanFailure, Unit>> disburse(
    UniqueId id,
    String disbursementDate,
  ) async {
    try {
      final userDoc = await _firestore.userDocument();

      await userDoc.loansCollection.doc(id.getOrCrash()).update({
        'loanStatusIndex': LoanStatus.completed.index,
        'disbursementDate': disbursementDate,
      });
      return right(unit);
    } on PlatformException catch (e) {
      if (e.message != null && e.message!.contains('PERMISSION_DENIED')) {
        return left(const LoanFailure.permissionDenied());
      }
      return left(const LoanFailure.unexpected());
    }
  }

  @override
  Future<Either<LoanFailure, Unit>> restore(UniqueId id) async {
    try {
      final userDoc = await _firestore.userDocument();

      await userDoc.loansCollection
          .doc(id.getOrCrash())
          .update({'loanStatusIndex': LoanStatus.pending.index});
      return right(unit);
    } on PlatformException catch (e) {
      if (e.message != null && e.message!.contains('PERMISSION_DENIED')) {
        return left(const LoanFailure.permissionDenied());
      }
      return left(const LoanFailure.unexpected());
    }
  }

  @override
  Future<Either<LoanFailure, KtList<Loan>>> findFollowUps(
    List<Loan> loans,
  ) async {
    try {
      final today = DateTime.now();

      if (today.day <= 5) {
        return right(loans
            .where(
              (loan) =>
                  DateTime.parse(
                        loan.loanParticulars!.emiDetails.firstEMIDate
                            .getOrCrash(),
                      ).day ==
                      5 &&
                  loan.loanParticulars!.emiDetails.lastEMIDate!.isAfter(today),
            )
            .toImmutableList());
      }

      if (today.day > 5 && today.day <= 10) {
        return right(loans
            .where(
              (loan) =>
                  DateTime.parse(
                        loan.loanParticulars!.emiDetails.firstEMIDate
                            .getOrCrash(),
                      ).day ==
                      10 &&
                  loan.loanParticulars!.emiDetails.lastEMIDate!.isAfter(today),
            )
            .toImmutableList());
      }

      if (today.day > 10 && today.day <= 15) {
        return right(loans
            .where(
              (loan) =>
                  DateTime.parse(
                        loan.loanParticulars!.emiDetails.firstEMIDate
                            .getOrCrash(),
                      ).day ==
                      15 &&
                  loan.loanParticulars!.emiDetails.lastEMIDate!.isAfter(today),
            )
            .toImmutableList());
      }

      if (today.day > 15 && today.day <= 20) {
        return right(loans
            .where(
              (loan) =>
                  DateTime.parse(
                        loan.loanParticulars!.emiDetails.firstEMIDate
                            .getOrCrash(),
                      ).day ==
                      20 &&
                  loan.loanParticulars!.emiDetails.lastEMIDate!.isAfter(today),
            )
            .toImmutableList());
      }

      if (today.day > 20 && today.day <= 25) {
        return right(loans
            .where(
              (loan) =>
                  DateTime.parse(
                        loan.loanParticulars!.emiDetails.firstEMIDate
                            .getOrCrash(),
                      ).day ==
                      25 &&
                  loan.loanParticulars!.emiDetails.lastEMIDate!.isAfter(today),
            )
            .toImmutableList());
      }

      if (today.day > 25) {
        return right(loans
            .where(
              (loan) =>
                  DateTime.parse(
                        loan.loanParticulars!.emiDetails.firstEMIDate
                            .getOrCrash(),
                      ).day ==
                      28 &&
                  loan.loanParticulars!.emiDetails.lastEMIDate!.isAfter(today),
            )
            .toImmutableList());
      }

      return left(const LoanFailure.unexpected());
    } catch (_) {
      return left(const LoanFailure.unexpected());
    }
  }
}
