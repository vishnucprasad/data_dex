import 'package:dartz/dartz.dart';
import 'package:data_dex/domain/core/unexpected_value_error.dart';
import 'package:data_dex/domain/core/value_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;

  bool isValid() => value.isRight();
  bool isInvalid() => value.isLeft();

  T getOrCrash() => value.fold((f) => throw UnexpectedValueError(f), id);

  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold((l) => left(l), (r) => right(unit));
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is ValueObject<T> && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'ValueObject(value: $value)';
}
