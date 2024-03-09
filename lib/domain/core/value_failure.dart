import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_failure.freezed.dart';

@freezed
class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.exceedingLength({
    required T failedValue,
    required int maxLength,
  }) = _ExceedingLength<T>;
  const factory ValueFailure.stringLength({
    required T failedValue,
    required int length,
  }) = _StringLength<T>;
  const factory ValueFailure.multiLine({
    required T failedValue,
  }) = _MultiLine<T>;
  const factory ValueFailure.notANumber({
    required T failedValue,
  }) = _NotANumber<T>;
  const factory ValueFailure.unsignedDouble({
    required T failedValue,
  }) = _UnsignedDouble<T>;
  const factory ValueFailure.percentage({
    required T failedValue,
  }) = _Percentage<T>;
  const factory ValueFailure.empty({
    required T failedValue,
  }) = _Empty<T>;
  const factory ValueFailure.invalid({
    required T failedValue,
  }) = _Invalid<T>;
}
