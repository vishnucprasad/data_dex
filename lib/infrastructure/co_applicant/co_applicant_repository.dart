import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:data_dex/domain/co_applicant/failures/co_applicant_failure.dart';
import 'package:data_dex/domain/co_applicant/i_co_applicant_repository.dart';
import 'package:data_dex/domain/co_applicant/models/co_applicant.dart';
import 'package:data_dex/domain/core/value_objects.dart';
import 'package:data_dex/infrastructure/co_applicant/dto/co_applicant_dto.dart';
import 'package:data_dex/infrastructure/core/firestore_helpers.dart';
import 'package:data_dex/injection.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ICoApplicantRepository)
class CoApplicantRepository implements ICoApplicantRepository {
  final _firestore = getIt<FirebaseFirestore>();

  @override
  Future<Either<CoApplicantFailure, Unit>> saveCoApplicant(
    UniqueId id,
    CoApplicant coApplicant,
  ) async {
    try {
      final userDoc = await _firestore.userDocument();
      final coApplicantDto = CoApplicantDto.fromDomain(coApplicant);

      await userDoc.loansCollection
          .doc(id.getOrCrash())
          .update({'coApplicant': coApplicantDto.toJson()});
      return right(unit);
    } on PlatformException catch (e) {
      if (e.message != null) {
        if (e.message!.contains('PERMISSION_DENIED')) {
          return left(const CoApplicantFailure.permissionDenied());
        }
        return left(const CoApplicantFailure.unableToUpdate());
      }
      return left(const CoApplicantFailure.unexpected());
    }
  }
}
