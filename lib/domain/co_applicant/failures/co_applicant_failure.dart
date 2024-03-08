import 'package:freezed_annotation/freezed_annotation.dart';

part 'co_applicant_failure.freezed.dart';

@freezed
class CoApplicantFailure with _$CoApplicantFailure {
  const factory CoApplicantFailure.unexpected() = _Unexpected;
  const factory CoApplicantFailure.permissionDenied() = _PermissionDenied;
  const factory CoApplicantFailure.unableToUpdate() = _UnableToUpdate;
  const factory CoApplicantFailure.unableToDelete() = _UnableToDelete;
}
