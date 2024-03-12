import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:data_dex/domain/core/models/cloud_image/cloud_image.dart';
import 'package:data_dex/domain/core/value_objects.dart';
import 'package:data_dex/domain/guarenter/failures/guarenter_failure.dart';
import 'package:data_dex/domain/guarenter/i_guarenter_repository.dart';
import 'package:data_dex/domain/guarenter/models/guarenter.dart';
import 'package:data_dex/infrastructure/core/firestore_helpers.dart';
import 'package:data_dex/infrastructure/guarenter/dto/guarenter_dto.dart';
import 'package:data_dex/injection.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:url_launcher/url_launcher.dart';

@LazySingleton(as: IGuarenterRepository)
class GuarenterRepository implements IGuarenterRepository {
  final _firestore = getIt<FirebaseFirestore>();
  final _storage = getIt<FirebaseStorage>();

  @override
  Future<Either<GuarenterFailure, Position>> getCurrentPosition() async {
    try {
      final Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.bestForNavigation,
      );

      return right(position);
    } catch (e) {
      return left(GuarenterFailure.locationFailure(e.toString()));
    }
  }

  @override
  Future<Either<GuarenterFailure, Unit>> handleLocationPermission() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();

    if (!serviceEnabled) {
      return left(const GuarenterFailure.locationFailure(
        'Location services are disabled. Please enable the services',
      ));
    }

    permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return left(const GuarenterFailure.locationFailure(
          'Location permissions are denied',
        ));
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return left(const GuarenterFailure.locationFailure(
        'Location permissions are permanently denied, we cannot request permissions.',
      ));
    }

    return right(unit);
  }

  @override
  Future<Either<GuarenterFailure, Unit>> openLocationInMap({
    required String latitude,
    required String longitude,
  }) async {
    final url =
        'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude';
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
      return right(unit);
    } else {
      return left(GuarenterFailure.locationFailure('Could not launch $url'));
    }
  }

  @override
  Future<Either<GuarenterFailure, XFile?>> pickImage(ImageSource source) async {
    try {
      final XFile? imageFile = await getIt<ImagePicker>().pickImage(
        source: source,
      );

      return right(imageFile);
    } catch (_) {
      return left(const GuarenterFailure.imageFailure(
        'Something went wrong, unable to pick image.',
      ));
    }
  }

  @override
  Future<Either<GuarenterFailure, Unit>> saveGuarenter(
    UniqueId id,
    Guarenter guarenter,
  ) async {
    try {
      final userDoc = await _firestore.userDocument();
      final guarenterDto = GuarenterDto.fromDomain(guarenter);

      await userDoc.loansCollection
          .doc(id.getOrCrash())
          .update({'guarenter': guarenterDto.toJson()});
      return right(unit);
    } on PlatformException catch (e) {
      if (e.message != null) {
        if (e.message!.contains('PERMISSION_DENIED')) {
          return left(const GuarenterFailure.permissionDenied());
        }
        return left(const GuarenterFailure.unableToUpdate());
      }
      return left(const GuarenterFailure.unexpected());
    }
  }

  @override
  Future<Either<GuarenterFailure, Unit>> deleteImage(CloudImage image) async {
    try {
      await _storage.refFromURL(image.url).delete();
      return right(unit);
    } on PlatformException catch (e) {
      if (e.message != null) {
        if (e.message!.contains('PERMISSION_DENIED')) {
          return left(const GuarenterFailure.permissionDenied());
        }
        return left(const GuarenterFailure.unableToUpdate());
      }
      return left(const GuarenterFailure.unexpected());
    }
  }

  @override
  Future<Either<GuarenterFailure, CloudImage>> uploadImage({
    required UniqueId id,
    required XFile image,
    String? filename,
  }) async {
    try {
      final ref = _storage.ref().child(
          '/${id.getOrCrash()}/guarenter/house/${filename ?? image.name}');
      final uploadTask = ref.putData(await image.readAsBytes());

      final url = await (await uploadTask).ref.getDownloadURL();
      return right(CloudImage(
        name: image.name,
        url: url,
      ));
    } on PlatformException catch (e) {
      if (e.message != null && e.message!.contains('PERMISSION_DENIED')) {
        return left(const GuarenterFailure.permissionDenied());
      }
      return left(const GuarenterFailure.unexpected());
    }
  }
}
