import 'package:freezed_annotation/freezed_annotation.dart';

part 'common_failure.freezed.dart';

@freezed
class CommonFailure with _$CommonFailure {
  const factory CommonFailure.clientFailure(
    String msg,
  ) = _ClientFailure;
  const factory CommonFailure.locationFailure(
    String msg,
  ) = _LocationFailure;
  const factory CommonFailure.shareFailure(
    String msg,
  ) = _ShareFailure;
}
