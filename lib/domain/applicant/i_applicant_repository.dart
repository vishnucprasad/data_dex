import 'package:dartz/dartz.dart';
import 'package:data_dex/domain/applicant/failures/applicant_failure.dart';
import 'package:data_dex/domain/applicant/models/applicant.dart';
import 'package:data_dex/domain/core/models/cloud_image/cloud_image.dart';
import 'package:data_dex/domain/core/value_objects.dart';
import 'package:data_dex/domain/loan/failures/loan_failure.dart';
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
  Future<Either<ApplicantFailure, CloudImage>> uploadImage({
    required UniqueId id,
    required XFile image,
    String? filename,
  });
  Future<Either<ApplicantFailure, Unit>> deleteImage(
    CloudImage image,
  );
  Future<Either<LoanFailure, Unit>> updateApplicant(
    UniqueId id,
    Applicant applicant,
  );
}
