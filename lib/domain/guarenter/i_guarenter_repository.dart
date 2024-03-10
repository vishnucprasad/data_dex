import 'package:dartz/dartz.dart';
import 'package:data_dex/domain/core/models/cloud_image/cloud_image.dart';
import 'package:data_dex/domain/core/value_objects.dart';
import 'package:data_dex/domain/guarenter/failures/guarenter_failure.dart';
import 'package:data_dex/domain/guarenter/models/guarenter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:image_picker/image_picker.dart';

abstract class IGuarenterRepository {
  Future<Either<GuarenterFailure, Unit>> handleLocationPermission();
  Future<Either<GuarenterFailure, Position>> getCurrentPosition();
  Future<Either<GuarenterFailure, Unit>> openLocationInMap({
    required String latitude,
    required String longitude,
  });
  Future<Either<GuarenterFailure, XFile?>> pickImage(
    ImageSource source,
  );
  Future<Either<GuarenterFailure, CloudImage>> uploadImage(
    UniqueId id,
    XFile image,
  );
  Future<Either<GuarenterFailure, Unit>> deleteImage(
    CloudImage image,
  );
  Future<Either<GuarenterFailure, Unit>> saveGuarenter(
    UniqueId id,
    Guarenter guarenter,
  );
}
