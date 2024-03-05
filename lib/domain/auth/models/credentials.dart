import 'package:dartz/dartz.dart';
import 'package:data_dex/domain/core/value_failure.dart';
import 'package:data_dex/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'credentials.freezed.dart';

@freezed
class Credentials with _$Credentials {
  const Credentials._();

  const factory Credentials({
    required RequiredEmailAddress emailAddress,
    required Password password,
  }) = _Credentials;

  factory Credentials.empty() {
    return Credentials(
      emailAddress: RequiredEmailAddress(''),
      password: Password(''),
    );
  }

  Option<ValueFailure<dynamic>> get failureOption {
    return emailAddress.failureOrUnit
        .andThen(password.failureOrUnit)
        .fold((f) => some(f), (_) => none());
  }
}
