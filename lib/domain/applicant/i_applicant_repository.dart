import 'package:dartz/dartz.dart';
import 'package:data_dex/domain/applicant/failures/applicant_failure.dart';
import 'package:geolocator/geolocator.dart';

abstract class IApplicantRepository {
  Future<Either<ApplicantFailure, Unit>> handleLocationPermission();
  Future<Either<ApplicantFailure, Position>> getCurrentPosition();
}
