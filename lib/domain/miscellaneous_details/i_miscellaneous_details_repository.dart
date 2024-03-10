import 'package:dartz/dartz.dart';
import 'package:data_dex/domain/core/models/cloud_image/cloud_image.dart';
import 'package:data_dex/domain/core/value_objects.dart';
import 'package:data_dex/domain/miscellaneous_details/failures/miscellaneous_details_failure.dart';
import 'package:data_dex/domain/miscellaneous_details/models/miscellaneous_details.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_cropper/image_cropper.dart';

abstract class IMiscellaneousDetailsRepository {
  Future<Either<MiscellaneousDetailsFailure, CroppedFile?>> cropImage(
    XFile image,
  );
  Future<Either<MiscellaneousDetailsFailure, XFile?>> pickImage(
    ImageSource source,
  );
  Future<Either<MiscellaneousDetailsFailure, CloudImage>> uploadImage(
    UniqueId id,
    String name,
    XFile image,
  );
  Future<Either<MiscellaneousDetailsFailure, Unit>> deleteImage(
    UniqueId id,
  );
  Future<Either<MiscellaneousDetailsFailure, Unit>> saveMiscellaneousDetails(
    UniqueId id,
    MiscellaneousDetails miscellaneousDetails,
  );
}
