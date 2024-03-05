import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure {
  const factory AuthFailure.clientFailure(String msg) = _ClientFailure;
  const factory AuthFailure.serverFailure(String msg) = _ServerFailure;
  const factory AuthFailure.emailAlredyInUse() = _EmailAlredyInUse;
  const factory AuthFailure.invalidCredentials() = _InvalidCredentials;
  const factory AuthFailure.cancelledByUser() = _CancelledByUser;
}
