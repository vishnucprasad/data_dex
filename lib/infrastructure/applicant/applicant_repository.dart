import 'package:dartz/dartz.dart';
import 'package:data_dex/domain/applicant/failures/applicant_failure.dart';
import 'package:data_dex/domain/applicant/i_applicant_repository.dart';
import 'package:data_dex/injection.dart';
import 'package:geolocator/geolocator.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:url_launcher/url_launcher.dart';

@LazySingleton(as: IApplicantRepository)
class ApplicantRepository implements IApplicantRepository {
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
}
