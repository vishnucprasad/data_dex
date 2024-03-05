import 'package:data_dex/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_dex_user.freezed.dart';

@freezed
class DataDexUser with _$DataDexUser {
  const factory DataDexUser({
    required UniqueId id,
  }) = _DataDexUser;
}
