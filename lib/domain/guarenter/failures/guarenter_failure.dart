import 'package:freezed_annotation/freezed_annotation.dart';

part 'guarenter_failure.freezed.dart';

@freezed
class GuarenterFailure with _$GuarenterFailure {
  const factory GuarenterFailure.clientFailure() = _ClientFailure;
  const factory GuarenterFailure.locationFailure(
    String msg,
  ) = _LocationFailure;
  const factory GuarenterFailure.imageFailure(
    String msg,
  ) = _ImageFailure;
  const factory GuarenterFailure.unexpected() = _Unexpected;
  const factory GuarenterFailure.permissionDenied() = _PermissionDenied;
  const factory GuarenterFailure.unableToUpdate() = _UnableToUpdate;
  const factory GuarenterFailure.unableToDelete() = _UnableToDelete;
}
