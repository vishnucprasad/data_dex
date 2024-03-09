import 'package:freezed_annotation/freezed_annotation.dart';

part 'miscellaneous_details_failure.freezed.dart';

@freezed
class MiscellaneousDetailsFailure with _$MiscellaneousDetailsFailure {
  const factory MiscellaneousDetailsFailure.clientFailure() = _ClientFailure;
  const factory MiscellaneousDetailsFailure.imageFailure(
    String msg,
  ) = _ImageFailure;
  const factory MiscellaneousDetailsFailure.unexpected() = _Unexpected;
  const factory MiscellaneousDetailsFailure.permissionDenied() =
      _PermissionDenied;
  const factory MiscellaneousDetailsFailure.unableToUpdate() = _UnableToUpdate;
  const factory MiscellaneousDetailsFailure.unableToDelete() = _UnableToDelete;
}
