import 'package:dartz/dartz.dart';
import 'package:data_dex/domain/applicant/failures/applicant_failure.dart';
import 'package:data_dex/domain/applicant/i_applicant_repository.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';

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
}
