import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:data_dex/domain/core/models/cloud_image/cloud_image.dart';
import 'package:data_dex/domain/core/value_objects.dart';
import 'package:data_dex/domain/miscellaneous_details/failures/miscellaneous_details_failure.dart';
import 'package:data_dex/domain/miscellaneous_details/i_miscellaneous_details_repository.dart';
import 'package:data_dex/domain/miscellaneous_details/models/miscellaneous_details.dart';
import 'package:data_dex/infrastructure/core/firestore_helpers.dart';
import 'package:data_dex/infrastructure/core/storage_helpers.dart';
import 'package:data_dex/infrastructure/miscellaneous_details/dto/miscellaneous_details_dto.dart';
import 'package:data_dex/injection.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IMiscellaneousDetailsRepository)
class MiscellaneousDetailsRepository
    implements IMiscellaneousDetailsRepository {
  final _firestore = getIt<FirebaseFirestore>();
  final _storage = getIt<FirebaseStorage>();

  @override
  Future<Either<MiscellaneousDetailsFailure, CroppedFile?>> cropImage(
    XFile image,
  ) async {
    try {
      final CroppedFile? croppedFile = await ImageCropper().cropImage(
        sourcePath: image.path,
        aspectRatioPresets: [
          CropAspectRatioPreset.square,
          CropAspectRatioPreset.ratio3x2,
          CropAspectRatioPreset.original,
          CropAspectRatioPreset.ratio4x3,
          CropAspectRatioPreset.ratio16x9
        ],
        uiSettings: [
          AndroidUiSettings(
            toolbarTitle: 'Crop image',
            toolbarColor: Colors.lightBlue.shade600,
            toolbarWidgetColor: Colors.white,
            initAspectRatio: CropAspectRatioPreset.original,
            lockAspectRatio: false,
            activeControlsWidgetColor: Colors.lightBlue.shade600,
            statusBarColor: Colors.lightBlue.shade600,
          ),
          IOSUiSettings(
            title: 'Crop image',
          ),
        ],
      );

      return Right(croppedFile);
    } catch (_) {
      return left(const MiscellaneousDetailsFailure.imageFailure(
        'Something went wrong, unable to crop image',
      ));
    }
  }

  @override
  Future<Either<MiscellaneousDetailsFailure, XFile?>> pickImage(
    ImageSource source,
  ) async {
    try {
      final XFile? imageFile = await getIt<ImagePicker>().pickImage(
        source: source,
      );

      return right(imageFile);
    } catch (_) {
      return left(const MiscellaneousDetailsFailure.imageFailure(
        'Something went wrong, unable to pick image',
      ));
    }
  }

  @override
  Future<Either<MiscellaneousDetailsFailure, Unit>> saveMiscellaneousDetails(
    UniqueId id,
    MiscellaneousDetails miscellaneousDetails,
  ) async {
    try {
      final userDoc = await _firestore.userDocument();
      final miscellaneousDetailsDto =
          MiscellaneousDetailsDto.fromDomain(miscellaneousDetails);

      await userDoc.loansCollection
          .doc(id.getOrCrash())
          .update({'miscellaneousDetails': miscellaneousDetailsDto.toJson()});
      return right(unit);
    } on PlatformException catch (e) {
      if (e.message != null) {
        if (e.message!.contains('PERMISSION_DENIED')) {
          return left(const MiscellaneousDetailsFailure.permissionDenied());
        }
        return left(const MiscellaneousDetailsFailure.unableToUpdate());
      }
      return left(const MiscellaneousDetailsFailure.unexpected());
    }
  }

  @override
  Future<Either<MiscellaneousDetailsFailure, Unit>> deleteImage(
    UniqueId id,
  ) async {
    try {
      final userRef = await _storage.userRef();
      await userRef.child('/${id.getOrCrash()}/miscellaneous_images').delete();
      return right(unit);
    } on PlatformException catch (e) {
      if (e.message != null) {
        if (e.message!.contains('PERMISSION_DENIED')) {
          return left(const MiscellaneousDetailsFailure.permissionDenied());
        }
        return left(const MiscellaneousDetailsFailure.unableToUpdate());
      }
      return left(const MiscellaneousDetailsFailure.unexpected());
    }
  }

  @override
  Future<Either<MiscellaneousDetailsFailure, CloudImage>> uploadImage(
    UniqueId id,
    String name,
    XFile image,
  ) async {
    try {
      final userRef = await _storage.userRef();
      final ref = userRef.child(
        '/${id.getOrCrash()}/miscellaneous_images/$name.jpg',
      );

      final uploadTask = ref.putData(await image.readAsBytes());

      final url = await (await uploadTask).ref.getDownloadURL();
      return right(CloudImage(
        name: image.name,
        url: url,
      ));
    } on PlatformException catch (e) {
      if (e.message != null && e.message!.contains('PERMISSION_DENIED')) {
        return left(const MiscellaneousDetailsFailure.permissionDenied());
      }
      return left(const MiscellaneousDetailsFailure.unexpected());
    }
  }
}
