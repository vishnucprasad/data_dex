import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:data_dex/domain/applicant/failures/applicant_failure.dart';
import 'package:data_dex/domain/applicant/i_applicant_repository.dart';
import 'package:data_dex/domain/applicant/models/applicant.dart';
import 'package:data_dex/domain/core/models/cloud_image/cloud_image.dart';
import 'package:data_dex/domain/core/value_objects.dart';
import 'package:data_dex/domain/loan/failures/loan_failure.dart';
import 'package:data_dex/infrastructure/applicant/dto/applicant_dto.dart';
import 'package:data_dex/infrastructure/core/firestore_helpers.dart';
import 'package:data_dex/infrastructure/core/storage_helpers.dart';
import 'package:data_dex/injection.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:url_launcher/url_launcher.dart';

@LazySingleton(as: IApplicantRepository)
class ApplicantRepository implements IApplicantRepository {
  final _firestore = getIt<FirebaseFirestore>();
  final _storage = getIt<FirebaseStorage>();

  @override
  Future<Either<ApplicantFailure, Position>> getCurrentPosition() async {
    try {
      final Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.bestForNavigation,
      );

      return right(position);
    } catch (e) {
      return left(ApplicantFailure.locationFailure(e.toString()));
    }
  }

  @override
  Future<Either<ApplicantFailure, Unit>> handleLocationPermission() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();

    if (!serviceEnabled) {
      return left(const ApplicantFailure.locationFailure(
        'Location services are disabled. Please enable the services',
      ));
    }

    permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return left(const ApplicantFailure.locationFailure(
          'Location permissions are denied',
        ));
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return left(const ApplicantFailure.locationFailure(
        'Location permissions are permanently denied, we cannot request permissions.',
      ));
    }

    return right(unit);
  }

  @override
  Future<Either<ApplicantFailure, Unit>> openLocationInMap({
    required String latitude,
    required String longitude,
  }) async {
    final url =
        'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude';
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
      return right(unit);
    } else {
      return left(ApplicantFailure.locationFailure('Could not launch $url'));
    }
  }

  @override
  Future<Either<ApplicantFailure, XFile?>> pickImage(ImageSource source) async {
    try {
      final XFile? imageFile = await getIt<ImagePicker>().pickImage(
        source: source,
      );

      return right(imageFile);
    } catch (_) {
      return left(const ApplicantFailure.imageFailure(
        'Something went wrong, unable to pick image.',
      ));
    }
  }

  @override
  Future<Either<ApplicantFailure, Unit>> deleteImage(
    CloudImage image,
  ) async {
    try {
      await _storage.refFromURL(image.url).delete();
      return right(unit);
    } on PlatformException catch (e) {
      if (e.message != null && e.message!.contains('PERMISSION_DENIED')) {
        return left(const ApplicantFailure.permissionDenied());
      }
      return left(const ApplicantFailure.unexpected());
    }
  }

  @override
  Future<Either<ApplicantFailure, CloudImage>> uploadImage({
    required UniqueId id,
    required XFile image,
    String? filename,
  }) async {
    try {
      final userRef = await _storage.userRef();
      final ref = userRef.child(
        '/${id.getOrCrash()}/applicant/house/${filename ?? image.name}',
      );

      final uploadTask = ref.putData(await image.readAsBytes());

      final url = await (await uploadTask).ref.getDownloadURL();
      return right(CloudImage(
        name: image.name,
        url: url,
      ));
    } on PlatformException catch (e) {
      if (e.message != null && e.message!.contains('PERMISSION_DENIED')) {
        return left(const ApplicantFailure.permissionDenied());
      }
      return left(const ApplicantFailure.unexpected());
    }
  }

  @override
  Future<Either<LoanFailure, Unit>> updateApplicant(
    UniqueId id,
    Applicant applicant,
  ) async {
    try {
      final userDoc = await _firestore.userDocument();
      final applicantDto = ApplicantDto.fromDomain(applicant);

      await userDoc.loansCollection
          .doc(id.getOrCrash())
          .update({'applicant': applicantDto.toJson()});
      return right(unit);
    } on PlatformException catch (e) {
      if (e.message != null) {
        if (e.message!.contains('PERMISSION_DENIED')) {
          return left(const LoanFailure.permissionDenied());
        }
        return left(const LoanFailure.unableToUpdate());
      }
      return left(const LoanFailure.unexpected());
    }
  }
}
