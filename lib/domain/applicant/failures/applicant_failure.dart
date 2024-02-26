import 'package:freezed_annotation/freezed_annotation.dart';

part 'applicant_failure.freezed.dart';

@freezed
class ApplicantFailure with _$ApplicantFailure {
  const factory ApplicantFailure.clientFailure() = _ClientFailure;
  const factory ApplicantFailure.locationFailure(
    String msg,
  ) = _LocationFailure;
  const factory ApplicantFailure.imageFailure(
    String msg,
  ) = _ImageFailure;
}
