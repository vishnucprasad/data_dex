import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:data_dex/domain/core/value_objects.dart';
import 'package:data_dex/domain/loan_particulars/failures/loan_particulars_failure.dart';
import 'package:data_dex/domain/loan_particulars/i_loan_particulars_repository.dart';
import 'package:data_dex/domain/loan_particulars/models/loan_particulars.dart';
import 'package:data_dex/infrastructure/core/firestore_helpers.dart';
import 'package:data_dex/infrastructure/loan_particulars/dto/loan_particulars_dto.dart';
import 'package:data_dex/injection.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ILoanParticularsRepository)
class LoanParticularsRepository implements ILoanParticularsRepository {
  final _firestore = getIt<FirebaseFirestore>();

  @override
  Future<Either<LoanParticularsFailure, Unit>> saveLoanParticulars(
    UniqueId id,
    LoanParticulars loanParticulars,
  ) async {
    try {
      final userDoc = await _firestore.userDocument();
      final loanParticularsDto = LoanParticularsDto.fromDomain(loanParticulars);

      await userDoc.loansCollection
          .doc(id.getOrCrash())
          .update({'loanParticulars': loanParticularsDto.toJson()});
      return right(unit);
    } on PlatformException catch (e) {
      if (e.message != null) {
        if (e.message!.contains('PERMISSION_DENIED')) {
          return left(const LoanParticularsFailure.permissionDenied());
        }
        return left(const LoanParticularsFailure.unableToUpdate());
      }
      return left(const LoanParticularsFailure.unexpected());
    }
  }
}
