// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'value_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ValueFailure<T> {
  T get failedValue => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int maxLength) exceedingLength,
    required TResult Function(T failedValue, int length) stringLength,
    required TResult Function(T failedValue) multiLine,
    required TResult Function(T failedValue) notANumber,
    required TResult Function(T failedValue) unsignedDouble,
    required TResult Function(T failedValue) percentage,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue, int maxLength)? exceedingLength,
    TResult? Function(T failedValue, int length)? stringLength,
    TResult? Function(T failedValue)? multiLine,
    TResult? Function(T failedValue)? notANumber,
    TResult? Function(T failedValue)? unsignedDouble,
    TResult? Function(T failedValue)? percentage,
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int length)? stringLength,
    TResult Function(T failedValue)? multiLine,
    TResult Function(T failedValue)? notANumber,
    TResult Function(T failedValue)? unsignedDouble,
    TResult Function(T failedValue)? percentage,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ExceedingLength<T> value) exceedingLength,
    required TResult Function(_StringLength<T> value) stringLength,
    required TResult Function(_MultiLine<T> value) multiLine,
    required TResult Function(_NotANumber<T> value) notANumber,
    required TResult Function(_UnsignedDouble<T> value) unsignedDouble,
    required TResult Function(_Percentage<T> value) percentage,
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_Invalid<T> value) invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ExceedingLength<T> value)? exceedingLength,
    TResult? Function(_StringLength<T> value)? stringLength,
    TResult? Function(_MultiLine<T> value)? multiLine,
    TResult? Function(_NotANumber<T> value)? notANumber,
    TResult? Function(_UnsignedDouble<T> value)? unsignedDouble,
    TResult? Function(_Percentage<T> value)? percentage,
    TResult? Function(_Empty<T> value)? empty,
    TResult? Function(_Invalid<T> value)? invalid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_StringLength<T> value)? stringLength,
    TResult Function(_MultiLine<T> value)? multiLine,
    TResult Function(_NotANumber<T> value)? notANumber,
    TResult Function(_UnsignedDouble<T> value)? unsignedDouble,
    TResult Function(_Percentage<T> value)? percentage,
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_Invalid<T> value)? invalid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res, ValueFailure<T>>;
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res, $Val extends ValueFailure<T>>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_value.copyWith(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExceedingLengthImplCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$ExceedingLengthImplCopyWith(_$ExceedingLengthImpl<T> value,
          $Res Function(_$ExceedingLengthImpl<T>) then) =
      __$$ExceedingLengthImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue, int maxLength});
}

/// @nodoc
class __$$ExceedingLengthImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$ExceedingLengthImpl<T>>
    implements _$$ExceedingLengthImplCopyWith<T, $Res> {
  __$$ExceedingLengthImplCopyWithImpl(_$ExceedingLengthImpl<T> _value,
      $Res Function(_$ExceedingLengthImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
    Object? maxLength = null,
  }) {
    return _then(_$ExceedingLengthImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      maxLength: null == maxLength
          ? _value.maxLength
          : maxLength // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ExceedingLengthImpl<T> implements _ExceedingLength<T> {
  const _$ExceedingLengthImpl(
      {required this.failedValue, required this.maxLength});

  @override
  final T failedValue;
  @override
  final int maxLength;

  @override
  String toString() {
    return 'ValueFailure<$T>.exceedingLength(failedValue: $failedValue, maxLength: $maxLength)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExceedingLengthImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            (identical(other.maxLength, maxLength) ||
                other.maxLength == maxLength));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue), maxLength);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExceedingLengthImplCopyWith<T, _$ExceedingLengthImpl<T>> get copyWith =>
      __$$ExceedingLengthImplCopyWithImpl<T, _$ExceedingLengthImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int maxLength) exceedingLength,
    required TResult Function(T failedValue, int length) stringLength,
    required TResult Function(T failedValue) multiLine,
    required TResult Function(T failedValue) notANumber,
    required TResult Function(T failedValue) unsignedDouble,
    required TResult Function(T failedValue) percentage,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalid,
  }) {
    return exceedingLength(failedValue, maxLength);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue, int maxLength)? exceedingLength,
    TResult? Function(T failedValue, int length)? stringLength,
    TResult? Function(T failedValue)? multiLine,
    TResult? Function(T failedValue)? notANumber,
    TResult? Function(T failedValue)? unsignedDouble,
    TResult? Function(T failedValue)? percentage,
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? invalid,
  }) {
    return exceedingLength?.call(failedValue, maxLength);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int length)? stringLength,
    TResult Function(T failedValue)? multiLine,
    TResult Function(T failedValue)? notANumber,
    TResult Function(T failedValue)? unsignedDouble,
    TResult Function(T failedValue)? percentage,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalid,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(failedValue, maxLength);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ExceedingLength<T> value) exceedingLength,
    required TResult Function(_StringLength<T> value) stringLength,
    required TResult Function(_MultiLine<T> value) multiLine,
    required TResult Function(_NotANumber<T> value) notANumber,
    required TResult Function(_UnsignedDouble<T> value) unsignedDouble,
    required TResult Function(_Percentage<T> value) percentage,
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_Invalid<T> value) invalid,
  }) {
    return exceedingLength(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ExceedingLength<T> value)? exceedingLength,
    TResult? Function(_StringLength<T> value)? stringLength,
    TResult? Function(_MultiLine<T> value)? multiLine,
    TResult? Function(_NotANumber<T> value)? notANumber,
    TResult? Function(_UnsignedDouble<T> value)? unsignedDouble,
    TResult? Function(_Percentage<T> value)? percentage,
    TResult? Function(_Empty<T> value)? empty,
    TResult? Function(_Invalid<T> value)? invalid,
  }) {
    return exceedingLength?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_StringLength<T> value)? stringLength,
    TResult Function(_MultiLine<T> value)? multiLine,
    TResult Function(_NotANumber<T> value)? notANumber,
    TResult Function(_UnsignedDouble<T> value)? unsignedDouble,
    TResult Function(_Percentage<T> value)? percentage,
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_Invalid<T> value)? invalid,
    required TResult orElse(),
  }) {
    if (exceedingLength != null) {
      return exceedingLength(this);
    }
    return orElse();
  }
}

abstract class _ExceedingLength<T> implements ValueFailure<T> {
  const factory _ExceedingLength(
      {required final T failedValue,
      required final int maxLength}) = _$ExceedingLengthImpl<T>;

  @override
  T get failedValue;
  int get maxLength;
  @override
  @JsonKey(ignore: true)
  _$$ExceedingLengthImplCopyWith<T, _$ExceedingLengthImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StringLengthImplCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$StringLengthImplCopyWith(_$StringLengthImpl<T> value,
          $Res Function(_$StringLengthImpl<T>) then) =
      __$$StringLengthImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue, int length});
}

/// @nodoc
class __$$StringLengthImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$StringLengthImpl<T>>
    implements _$$StringLengthImplCopyWith<T, $Res> {
  __$$StringLengthImplCopyWithImpl(
      _$StringLengthImpl<T> _value, $Res Function(_$StringLengthImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
    Object? length = null,
  }) {
    return _then(_$StringLengthImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
      length: null == length
          ? _value.length
          : length // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$StringLengthImpl<T> implements _StringLength<T> {
  const _$StringLengthImpl({required this.failedValue, required this.length});

  @override
  final T failedValue;
  @override
  final int length;

  @override
  String toString() {
    return 'ValueFailure<$T>.stringLength(failedValue: $failedValue, length: $length)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StringLengthImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue) &&
            (identical(other.length, length) || other.length == length));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue), length);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StringLengthImplCopyWith<T, _$StringLengthImpl<T>> get copyWith =>
      __$$StringLengthImplCopyWithImpl<T, _$StringLengthImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int maxLength) exceedingLength,
    required TResult Function(T failedValue, int length) stringLength,
    required TResult Function(T failedValue) multiLine,
    required TResult Function(T failedValue) notANumber,
    required TResult Function(T failedValue) unsignedDouble,
    required TResult Function(T failedValue) percentage,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalid,
  }) {
    return stringLength(failedValue, length);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue, int maxLength)? exceedingLength,
    TResult? Function(T failedValue, int length)? stringLength,
    TResult? Function(T failedValue)? multiLine,
    TResult? Function(T failedValue)? notANumber,
    TResult? Function(T failedValue)? unsignedDouble,
    TResult? Function(T failedValue)? percentage,
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? invalid,
  }) {
    return stringLength?.call(failedValue, length);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int length)? stringLength,
    TResult Function(T failedValue)? multiLine,
    TResult Function(T failedValue)? notANumber,
    TResult Function(T failedValue)? unsignedDouble,
    TResult Function(T failedValue)? percentage,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalid,
    required TResult orElse(),
  }) {
    if (stringLength != null) {
      return stringLength(failedValue, length);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ExceedingLength<T> value) exceedingLength,
    required TResult Function(_StringLength<T> value) stringLength,
    required TResult Function(_MultiLine<T> value) multiLine,
    required TResult Function(_NotANumber<T> value) notANumber,
    required TResult Function(_UnsignedDouble<T> value) unsignedDouble,
    required TResult Function(_Percentage<T> value) percentage,
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_Invalid<T> value) invalid,
  }) {
    return stringLength(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ExceedingLength<T> value)? exceedingLength,
    TResult? Function(_StringLength<T> value)? stringLength,
    TResult? Function(_MultiLine<T> value)? multiLine,
    TResult? Function(_NotANumber<T> value)? notANumber,
    TResult? Function(_UnsignedDouble<T> value)? unsignedDouble,
    TResult? Function(_Percentage<T> value)? percentage,
    TResult? Function(_Empty<T> value)? empty,
    TResult? Function(_Invalid<T> value)? invalid,
  }) {
    return stringLength?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_StringLength<T> value)? stringLength,
    TResult Function(_MultiLine<T> value)? multiLine,
    TResult Function(_NotANumber<T> value)? notANumber,
    TResult Function(_UnsignedDouble<T> value)? unsignedDouble,
    TResult Function(_Percentage<T> value)? percentage,
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_Invalid<T> value)? invalid,
    required TResult orElse(),
  }) {
    if (stringLength != null) {
      return stringLength(this);
    }
    return orElse();
  }
}

abstract class _StringLength<T> implements ValueFailure<T> {
  const factory _StringLength(
      {required final T failedValue,
      required final int length}) = _$StringLengthImpl<T>;

  @override
  T get failedValue;
  int get length;
  @override
  @JsonKey(ignore: true)
  _$$StringLengthImplCopyWith<T, _$StringLengthImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MultiLineImplCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$MultiLineImplCopyWith(
          _$MultiLineImpl<T> value, $Res Function(_$MultiLineImpl<T>) then) =
      __$$MultiLineImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$MultiLineImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$MultiLineImpl<T>>
    implements _$$MultiLineImplCopyWith<T, $Res> {
  __$$MultiLineImplCopyWithImpl(
      _$MultiLineImpl<T> _value, $Res Function(_$MultiLineImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$MultiLineImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$MultiLineImpl<T> implements _MultiLine<T> {
  const _$MultiLineImpl({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.multiLine(failedValue: $failedValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MultiLineImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MultiLineImplCopyWith<T, _$MultiLineImpl<T>> get copyWith =>
      __$$MultiLineImplCopyWithImpl<T, _$MultiLineImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int maxLength) exceedingLength,
    required TResult Function(T failedValue, int length) stringLength,
    required TResult Function(T failedValue) multiLine,
    required TResult Function(T failedValue) notANumber,
    required TResult Function(T failedValue) unsignedDouble,
    required TResult Function(T failedValue) percentage,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalid,
  }) {
    return multiLine(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue, int maxLength)? exceedingLength,
    TResult? Function(T failedValue, int length)? stringLength,
    TResult? Function(T failedValue)? multiLine,
    TResult? Function(T failedValue)? notANumber,
    TResult? Function(T failedValue)? unsignedDouble,
    TResult? Function(T failedValue)? percentage,
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? invalid,
  }) {
    return multiLine?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int length)? stringLength,
    TResult Function(T failedValue)? multiLine,
    TResult Function(T failedValue)? notANumber,
    TResult Function(T failedValue)? unsignedDouble,
    TResult Function(T failedValue)? percentage,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalid,
    required TResult orElse(),
  }) {
    if (multiLine != null) {
      return multiLine(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ExceedingLength<T> value) exceedingLength,
    required TResult Function(_StringLength<T> value) stringLength,
    required TResult Function(_MultiLine<T> value) multiLine,
    required TResult Function(_NotANumber<T> value) notANumber,
    required TResult Function(_UnsignedDouble<T> value) unsignedDouble,
    required TResult Function(_Percentage<T> value) percentage,
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_Invalid<T> value) invalid,
  }) {
    return multiLine(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ExceedingLength<T> value)? exceedingLength,
    TResult? Function(_StringLength<T> value)? stringLength,
    TResult? Function(_MultiLine<T> value)? multiLine,
    TResult? Function(_NotANumber<T> value)? notANumber,
    TResult? Function(_UnsignedDouble<T> value)? unsignedDouble,
    TResult? Function(_Percentage<T> value)? percentage,
    TResult? Function(_Empty<T> value)? empty,
    TResult? Function(_Invalid<T> value)? invalid,
  }) {
    return multiLine?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_StringLength<T> value)? stringLength,
    TResult Function(_MultiLine<T> value)? multiLine,
    TResult Function(_NotANumber<T> value)? notANumber,
    TResult Function(_UnsignedDouble<T> value)? unsignedDouble,
    TResult Function(_Percentage<T> value)? percentage,
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_Invalid<T> value)? invalid,
    required TResult orElse(),
  }) {
    if (multiLine != null) {
      return multiLine(this);
    }
    return orElse();
  }
}

abstract class _MultiLine<T> implements ValueFailure<T> {
  const factory _MultiLine({required final T failedValue}) = _$MultiLineImpl<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$MultiLineImplCopyWith<T, _$MultiLineImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotANumberImplCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$NotANumberImplCopyWith(
          _$NotANumberImpl<T> value, $Res Function(_$NotANumberImpl<T>) then) =
      __$$NotANumberImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$NotANumberImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$NotANumberImpl<T>>
    implements _$$NotANumberImplCopyWith<T, $Res> {
  __$$NotANumberImplCopyWithImpl(
      _$NotANumberImpl<T> _value, $Res Function(_$NotANumberImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$NotANumberImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$NotANumberImpl<T> implements _NotANumber<T> {
  const _$NotANumberImpl({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.notANumber(failedValue: $failedValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotANumberImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotANumberImplCopyWith<T, _$NotANumberImpl<T>> get copyWith =>
      __$$NotANumberImplCopyWithImpl<T, _$NotANumberImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int maxLength) exceedingLength,
    required TResult Function(T failedValue, int length) stringLength,
    required TResult Function(T failedValue) multiLine,
    required TResult Function(T failedValue) notANumber,
    required TResult Function(T failedValue) unsignedDouble,
    required TResult Function(T failedValue) percentage,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalid,
  }) {
    return notANumber(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue, int maxLength)? exceedingLength,
    TResult? Function(T failedValue, int length)? stringLength,
    TResult? Function(T failedValue)? multiLine,
    TResult? Function(T failedValue)? notANumber,
    TResult? Function(T failedValue)? unsignedDouble,
    TResult? Function(T failedValue)? percentage,
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? invalid,
  }) {
    return notANumber?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int length)? stringLength,
    TResult Function(T failedValue)? multiLine,
    TResult Function(T failedValue)? notANumber,
    TResult Function(T failedValue)? unsignedDouble,
    TResult Function(T failedValue)? percentage,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalid,
    required TResult orElse(),
  }) {
    if (notANumber != null) {
      return notANumber(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ExceedingLength<T> value) exceedingLength,
    required TResult Function(_StringLength<T> value) stringLength,
    required TResult Function(_MultiLine<T> value) multiLine,
    required TResult Function(_NotANumber<T> value) notANumber,
    required TResult Function(_UnsignedDouble<T> value) unsignedDouble,
    required TResult Function(_Percentage<T> value) percentage,
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_Invalid<T> value) invalid,
  }) {
    return notANumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ExceedingLength<T> value)? exceedingLength,
    TResult? Function(_StringLength<T> value)? stringLength,
    TResult? Function(_MultiLine<T> value)? multiLine,
    TResult? Function(_NotANumber<T> value)? notANumber,
    TResult? Function(_UnsignedDouble<T> value)? unsignedDouble,
    TResult? Function(_Percentage<T> value)? percentage,
    TResult? Function(_Empty<T> value)? empty,
    TResult? Function(_Invalid<T> value)? invalid,
  }) {
    return notANumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_StringLength<T> value)? stringLength,
    TResult Function(_MultiLine<T> value)? multiLine,
    TResult Function(_NotANumber<T> value)? notANumber,
    TResult Function(_UnsignedDouble<T> value)? unsignedDouble,
    TResult Function(_Percentage<T> value)? percentage,
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_Invalid<T> value)? invalid,
    required TResult orElse(),
  }) {
    if (notANumber != null) {
      return notANumber(this);
    }
    return orElse();
  }
}

abstract class _NotANumber<T> implements ValueFailure<T> {
  const factory _NotANumber({required final T failedValue}) =
      _$NotANumberImpl<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$NotANumberImplCopyWith<T, _$NotANumberImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnsignedDoubleImplCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$UnsignedDoubleImplCopyWith(_$UnsignedDoubleImpl<T> value,
          $Res Function(_$UnsignedDoubleImpl<T>) then) =
      __$$UnsignedDoubleImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$UnsignedDoubleImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$UnsignedDoubleImpl<T>>
    implements _$$UnsignedDoubleImplCopyWith<T, $Res> {
  __$$UnsignedDoubleImplCopyWithImpl(_$UnsignedDoubleImpl<T> _value,
      $Res Function(_$UnsignedDoubleImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$UnsignedDoubleImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$UnsignedDoubleImpl<T> implements _UnsignedDouble<T> {
  const _$UnsignedDoubleImpl({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.unsignedDouble(failedValue: $failedValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnsignedDoubleImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnsignedDoubleImplCopyWith<T, _$UnsignedDoubleImpl<T>> get copyWith =>
      __$$UnsignedDoubleImplCopyWithImpl<T, _$UnsignedDoubleImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int maxLength) exceedingLength,
    required TResult Function(T failedValue, int length) stringLength,
    required TResult Function(T failedValue) multiLine,
    required TResult Function(T failedValue) notANumber,
    required TResult Function(T failedValue) unsignedDouble,
    required TResult Function(T failedValue) percentage,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalid,
  }) {
    return unsignedDouble(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue, int maxLength)? exceedingLength,
    TResult? Function(T failedValue, int length)? stringLength,
    TResult? Function(T failedValue)? multiLine,
    TResult? Function(T failedValue)? notANumber,
    TResult? Function(T failedValue)? unsignedDouble,
    TResult? Function(T failedValue)? percentage,
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? invalid,
  }) {
    return unsignedDouble?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int length)? stringLength,
    TResult Function(T failedValue)? multiLine,
    TResult Function(T failedValue)? notANumber,
    TResult Function(T failedValue)? unsignedDouble,
    TResult Function(T failedValue)? percentage,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalid,
    required TResult orElse(),
  }) {
    if (unsignedDouble != null) {
      return unsignedDouble(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ExceedingLength<T> value) exceedingLength,
    required TResult Function(_StringLength<T> value) stringLength,
    required TResult Function(_MultiLine<T> value) multiLine,
    required TResult Function(_NotANumber<T> value) notANumber,
    required TResult Function(_UnsignedDouble<T> value) unsignedDouble,
    required TResult Function(_Percentage<T> value) percentage,
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_Invalid<T> value) invalid,
  }) {
    return unsignedDouble(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ExceedingLength<T> value)? exceedingLength,
    TResult? Function(_StringLength<T> value)? stringLength,
    TResult? Function(_MultiLine<T> value)? multiLine,
    TResult? Function(_NotANumber<T> value)? notANumber,
    TResult? Function(_UnsignedDouble<T> value)? unsignedDouble,
    TResult? Function(_Percentage<T> value)? percentage,
    TResult? Function(_Empty<T> value)? empty,
    TResult? Function(_Invalid<T> value)? invalid,
  }) {
    return unsignedDouble?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_StringLength<T> value)? stringLength,
    TResult Function(_MultiLine<T> value)? multiLine,
    TResult Function(_NotANumber<T> value)? notANumber,
    TResult Function(_UnsignedDouble<T> value)? unsignedDouble,
    TResult Function(_Percentage<T> value)? percentage,
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_Invalid<T> value)? invalid,
    required TResult orElse(),
  }) {
    if (unsignedDouble != null) {
      return unsignedDouble(this);
    }
    return orElse();
  }
}

abstract class _UnsignedDouble<T> implements ValueFailure<T> {
  const factory _UnsignedDouble({required final T failedValue}) =
      _$UnsignedDoubleImpl<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$UnsignedDoubleImplCopyWith<T, _$UnsignedDoubleImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PercentageImplCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$PercentageImplCopyWith(
          _$PercentageImpl<T> value, $Res Function(_$PercentageImpl<T>) then) =
      __$$PercentageImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$PercentageImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$PercentageImpl<T>>
    implements _$$PercentageImplCopyWith<T, $Res> {
  __$$PercentageImplCopyWithImpl(
      _$PercentageImpl<T> _value, $Res Function(_$PercentageImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$PercentageImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$PercentageImpl<T> implements _Percentage<T> {
  const _$PercentageImpl({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.percentage(failedValue: $failedValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PercentageImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PercentageImplCopyWith<T, _$PercentageImpl<T>> get copyWith =>
      __$$PercentageImplCopyWithImpl<T, _$PercentageImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int maxLength) exceedingLength,
    required TResult Function(T failedValue, int length) stringLength,
    required TResult Function(T failedValue) multiLine,
    required TResult Function(T failedValue) notANumber,
    required TResult Function(T failedValue) unsignedDouble,
    required TResult Function(T failedValue) percentage,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalid,
  }) {
    return percentage(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue, int maxLength)? exceedingLength,
    TResult? Function(T failedValue, int length)? stringLength,
    TResult? Function(T failedValue)? multiLine,
    TResult? Function(T failedValue)? notANumber,
    TResult? Function(T failedValue)? unsignedDouble,
    TResult? Function(T failedValue)? percentage,
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? invalid,
  }) {
    return percentage?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int length)? stringLength,
    TResult Function(T failedValue)? multiLine,
    TResult Function(T failedValue)? notANumber,
    TResult Function(T failedValue)? unsignedDouble,
    TResult Function(T failedValue)? percentage,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalid,
    required TResult orElse(),
  }) {
    if (percentage != null) {
      return percentage(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ExceedingLength<T> value) exceedingLength,
    required TResult Function(_StringLength<T> value) stringLength,
    required TResult Function(_MultiLine<T> value) multiLine,
    required TResult Function(_NotANumber<T> value) notANumber,
    required TResult Function(_UnsignedDouble<T> value) unsignedDouble,
    required TResult Function(_Percentage<T> value) percentage,
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_Invalid<T> value) invalid,
  }) {
    return percentage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ExceedingLength<T> value)? exceedingLength,
    TResult? Function(_StringLength<T> value)? stringLength,
    TResult? Function(_MultiLine<T> value)? multiLine,
    TResult? Function(_NotANumber<T> value)? notANumber,
    TResult? Function(_UnsignedDouble<T> value)? unsignedDouble,
    TResult? Function(_Percentage<T> value)? percentage,
    TResult? Function(_Empty<T> value)? empty,
    TResult? Function(_Invalid<T> value)? invalid,
  }) {
    return percentage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_StringLength<T> value)? stringLength,
    TResult Function(_MultiLine<T> value)? multiLine,
    TResult Function(_NotANumber<T> value)? notANumber,
    TResult Function(_UnsignedDouble<T> value)? unsignedDouble,
    TResult Function(_Percentage<T> value)? percentage,
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_Invalid<T> value)? invalid,
    required TResult orElse(),
  }) {
    if (percentage != null) {
      return percentage(this);
    }
    return orElse();
  }
}

abstract class _Percentage<T> implements ValueFailure<T> {
  const factory _Percentage({required final T failedValue}) =
      _$PercentageImpl<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$PercentageImplCopyWith<T, _$PercentageImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmptyImplCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$EmptyImplCopyWith(
          _$EmptyImpl<T> value, $Res Function(_$EmptyImpl<T>) then) =
      __$$EmptyImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$EmptyImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$EmptyImpl<T>>
    implements _$$EmptyImplCopyWith<T, $Res> {
  __$$EmptyImplCopyWithImpl(
      _$EmptyImpl<T> _value, $Res Function(_$EmptyImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$EmptyImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$EmptyImpl<T> implements _Empty<T> {
  const _$EmptyImpl({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.empty(failedValue: $failedValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmptyImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmptyImplCopyWith<T, _$EmptyImpl<T>> get copyWith =>
      __$$EmptyImplCopyWithImpl<T, _$EmptyImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int maxLength) exceedingLength,
    required TResult Function(T failedValue, int length) stringLength,
    required TResult Function(T failedValue) multiLine,
    required TResult Function(T failedValue) notANumber,
    required TResult Function(T failedValue) unsignedDouble,
    required TResult Function(T failedValue) percentage,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalid,
  }) {
    return empty(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue, int maxLength)? exceedingLength,
    TResult? Function(T failedValue, int length)? stringLength,
    TResult? Function(T failedValue)? multiLine,
    TResult? Function(T failedValue)? notANumber,
    TResult? Function(T failedValue)? unsignedDouble,
    TResult? Function(T failedValue)? percentage,
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? invalid,
  }) {
    return empty?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int length)? stringLength,
    TResult Function(T failedValue)? multiLine,
    TResult Function(T failedValue)? notANumber,
    TResult Function(T failedValue)? unsignedDouble,
    TResult Function(T failedValue)? percentage,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalid,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ExceedingLength<T> value) exceedingLength,
    required TResult Function(_StringLength<T> value) stringLength,
    required TResult Function(_MultiLine<T> value) multiLine,
    required TResult Function(_NotANumber<T> value) notANumber,
    required TResult Function(_UnsignedDouble<T> value) unsignedDouble,
    required TResult Function(_Percentage<T> value) percentage,
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_Invalid<T> value) invalid,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ExceedingLength<T> value)? exceedingLength,
    TResult? Function(_StringLength<T> value)? stringLength,
    TResult? Function(_MultiLine<T> value)? multiLine,
    TResult? Function(_NotANumber<T> value)? notANumber,
    TResult? Function(_UnsignedDouble<T> value)? unsignedDouble,
    TResult? Function(_Percentage<T> value)? percentage,
    TResult? Function(_Empty<T> value)? empty,
    TResult? Function(_Invalid<T> value)? invalid,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_StringLength<T> value)? stringLength,
    TResult Function(_MultiLine<T> value)? multiLine,
    TResult Function(_NotANumber<T> value)? notANumber,
    TResult Function(_UnsignedDouble<T> value)? unsignedDouble,
    TResult Function(_Percentage<T> value)? percentage,
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_Invalid<T> value)? invalid,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty<T> implements ValueFailure<T> {
  const factory _Empty({required final T failedValue}) = _$EmptyImpl<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$EmptyImplCopyWith<T, _$EmptyImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvalidImplCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$InvalidImplCopyWith(
          _$InvalidImpl<T> value, $Res Function(_$InvalidImpl<T>) then) =
      __$$InvalidImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T failedValue});
}

/// @nodoc
class __$$InvalidImplCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$InvalidImpl<T>>
    implements _$$InvalidImplCopyWith<T, $Res> {
  __$$InvalidImplCopyWithImpl(
      _$InvalidImpl<T> _value, $Res Function(_$InvalidImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$InvalidImpl<T>(
      failedValue: freezed == failedValue
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$InvalidImpl<T> implements _Invalid<T> {
  const _$InvalidImpl({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalid(failedValue: $failedValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidImpl<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidImplCopyWith<T, _$InvalidImpl<T>> get copyWith =>
      __$$InvalidImplCopyWithImpl<T, _$InvalidImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue, int maxLength) exceedingLength,
    required TResult Function(T failedValue, int length) stringLength,
    required TResult Function(T failedValue) multiLine,
    required TResult Function(T failedValue) notANumber,
    required TResult Function(T failedValue) unsignedDouble,
    required TResult Function(T failedValue) percentage,
    required TResult Function(T failedValue) empty,
    required TResult Function(T failedValue) invalid,
  }) {
    return invalid(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T failedValue, int maxLength)? exceedingLength,
    TResult? Function(T failedValue, int length)? stringLength,
    TResult? Function(T failedValue)? multiLine,
    TResult? Function(T failedValue)? notANumber,
    TResult? Function(T failedValue)? unsignedDouble,
    TResult? Function(T failedValue)? percentage,
    TResult? Function(T failedValue)? empty,
    TResult? Function(T failedValue)? invalid,
  }) {
    return invalid?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue, int maxLength)? exceedingLength,
    TResult Function(T failedValue, int length)? stringLength,
    TResult Function(T failedValue)? multiLine,
    TResult Function(T failedValue)? notANumber,
    TResult Function(T failedValue)? unsignedDouble,
    TResult Function(T failedValue)? percentage,
    TResult Function(T failedValue)? empty,
    TResult Function(T failedValue)? invalid,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ExceedingLength<T> value) exceedingLength,
    required TResult Function(_StringLength<T> value) stringLength,
    required TResult Function(_MultiLine<T> value) multiLine,
    required TResult Function(_NotANumber<T> value) notANumber,
    required TResult Function(_UnsignedDouble<T> value) unsignedDouble,
    required TResult Function(_Percentage<T> value) percentage,
    required TResult Function(_Empty<T> value) empty,
    required TResult Function(_Invalid<T> value) invalid,
  }) {
    return invalid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ExceedingLength<T> value)? exceedingLength,
    TResult? Function(_StringLength<T> value)? stringLength,
    TResult? Function(_MultiLine<T> value)? multiLine,
    TResult? Function(_NotANumber<T> value)? notANumber,
    TResult? Function(_UnsignedDouble<T> value)? unsignedDouble,
    TResult? Function(_Percentage<T> value)? percentage,
    TResult? Function(_Empty<T> value)? empty,
    TResult? Function(_Invalid<T> value)? invalid,
  }) {
    return invalid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ExceedingLength<T> value)? exceedingLength,
    TResult Function(_StringLength<T> value)? stringLength,
    TResult Function(_MultiLine<T> value)? multiLine,
    TResult Function(_NotANumber<T> value)? notANumber,
    TResult Function(_UnsignedDouble<T> value)? unsignedDouble,
    TResult Function(_Percentage<T> value)? percentage,
    TResult Function(_Empty<T> value)? empty,
    TResult Function(_Invalid<T> value)? invalid,
    required TResult orElse(),
  }) {
    if (invalid != null) {
      return invalid(this);
    }
    return orElse();
  }
}

abstract class _Invalid<T> implements ValueFailure<T> {
  const factory _Invalid({required final T failedValue}) = _$InvalidImpl<T>;

  @override
  T get failedValue;
  @override
  @JsonKey(ignore: true)
  _$$InvalidImplCopyWith<T, _$InvalidImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
