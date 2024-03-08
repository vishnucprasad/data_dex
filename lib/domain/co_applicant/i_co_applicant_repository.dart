import 'package:dartz/dartz.dart';
import 'package:data_dex/domain/co_applicant/failures/co_applicant_failure.dart';
import 'package:data_dex/domain/co_applicant/models/co_applicant.dart';
import 'package:data_dex/domain/core/value_objects.dart';

abstract class ICoApplicantRepository {
  Future<Either<CoApplicantFailure, Unit>> saveCoApplicant(
    UniqueId id,
    CoApplicant coApplicant,
  );
}
