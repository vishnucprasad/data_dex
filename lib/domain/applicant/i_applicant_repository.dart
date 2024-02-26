import 'package:dartz/dartz.dart';
import 'package:data_dex/domain/applicant/failures/applicant_failure.dart';
import 'package:geolocator/geolocator.dart';
import 'package:image_picker/image_picker.dart';

abstract class IApplicantRepository {
  Future<Either<ApplicantFailure, Unit>> handleLocationPermission();
  Future<Either<ApplicantFailure, Position>> getCurrentPosition();
  Future<Either<ApplicantFailure, Unit>> openLocationInMap({
    required String latitude,
    required String longitude,
  });
  Future<Either<ApplicantFailure, XFile?>> pickImage(
    ImageSource source,
  );
}
