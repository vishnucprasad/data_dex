// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'applicant_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ApplicantFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clientFailure,
    required TResult Function(String msg) locationFailure,
    required TResult Function(String msg) imageFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clientFailure,
    TResult? Function(String msg)? locationFailure,
    TResult? Function(String msg)? imageFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clientFailure,
    TResult Function(String msg)? locationFailure,
    TResult Function(String msg)? imageFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientFailure value) clientFailure,
    required TResult Function(_LocationFailure value) locationFailure,
    required TResult Function(_ImageFailure value) imageFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClientFailure value)? clientFailure,
    TResult? Function(_LocationFailure value)? locationFailure,
    TResult? Function(_ImageFailure value)? imageFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_LocationFailure value)? locationFailure,
    TResult Function(_ImageFailure value)? imageFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplicantFailureCopyWith<$Res> {
  factory $ApplicantFailureCopyWith(
          ApplicantFailure value, $Res Function(ApplicantFailure) then) =
      _$ApplicantFailureCopyWithImpl<$Res, ApplicantFailure>;
}

/// @nodoc
class _$ApplicantFailureCopyWithImpl<$Res, $Val extends ApplicantFailure>
    implements $ApplicantFailureCopyWith<$Res> {
  _$ApplicantFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ClientFailureImplCopyWith<$Res> {
  factory _$$ClientFailureImplCopyWith(
          _$ClientFailureImpl value, $Res Function(_$ClientFailureImpl) then) =
      __$$ClientFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClientFailureImplCopyWithImpl<$Res>
    extends _$ApplicantFailureCopyWithImpl<$Res, _$ClientFailureImpl>
    implements _$$ClientFailureImplCopyWith<$Res> {
  __$$ClientFailureImplCopyWithImpl(
      _$ClientFailureImpl _value, $Res Function(_$ClientFailureImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClientFailureImpl implements _ClientFailure {
  const _$ClientFailureImpl();

  @override
  String toString() {
    return 'ApplicantFailure.clientFailure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClientFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clientFailure,
    required TResult Function(String msg) locationFailure,
    required TResult Function(String msg) imageFailure,
  }) {
    return clientFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clientFailure,
    TResult? Function(String msg)? locationFailure,
    TResult? Function(String msg)? imageFailure,
  }) {
    return clientFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clientFailure,
    TResult Function(String msg)? locationFailure,
    TResult Function(String msg)? imageFailure,
    required TResult orElse(),
  }) {
    if (clientFailure != null) {
      return clientFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientFailure value) clientFailure,
    required TResult Function(_LocationFailure value) locationFailure,
    required TResult Function(_ImageFailure value) imageFailure,
  }) {
    return clientFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClientFailure value)? clientFailure,
    TResult? Function(_LocationFailure value)? locationFailure,
    TResult? Function(_ImageFailure value)? imageFailure,
  }) {
    return clientFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_LocationFailure value)? locationFailure,
    TResult Function(_ImageFailure value)? imageFailure,
    required TResult orElse(),
  }) {
    if (clientFailure != null) {
      return clientFailure(this);
    }
    return orElse();
  }
}

abstract class _ClientFailure implements ApplicantFailure {
  const factory _ClientFailure() = _$ClientFailureImpl;
}

/// @nodoc
abstract class _$$LocationFailureImplCopyWith<$Res> {
  factory _$$LocationFailureImplCopyWith(_$LocationFailureImpl value,
          $Res Function(_$LocationFailureImpl) then) =
      __$$LocationFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$LocationFailureImplCopyWithImpl<$Res>
    extends _$ApplicantFailureCopyWithImpl<$Res, _$LocationFailureImpl>
    implements _$$LocationFailureImplCopyWith<$Res> {
  __$$LocationFailureImplCopyWithImpl(
      _$LocationFailureImpl _value, $Res Function(_$LocationFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$LocationFailureImpl(
      null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LocationFailureImpl implements _LocationFailure {
  const _$LocationFailureImpl(this.msg);

  @override
  final String msg;

  @override
  String toString() {
    return 'ApplicantFailure.locationFailure(msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationFailureImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationFailureImplCopyWith<_$LocationFailureImpl> get copyWith =>
      __$$LocationFailureImplCopyWithImpl<_$LocationFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clientFailure,
    required TResult Function(String msg) locationFailure,
    required TResult Function(String msg) imageFailure,
  }) {
    return locationFailure(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clientFailure,
    TResult? Function(String msg)? locationFailure,
    TResult? Function(String msg)? imageFailure,
  }) {
    return locationFailure?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clientFailure,
    TResult Function(String msg)? locationFailure,
    TResult Function(String msg)? imageFailure,
    required TResult orElse(),
  }) {
    if (locationFailure != null) {
      return locationFailure(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientFailure value) clientFailure,
    required TResult Function(_LocationFailure value) locationFailure,
    required TResult Function(_ImageFailure value) imageFailure,
  }) {
    return locationFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClientFailure value)? clientFailure,
    TResult? Function(_LocationFailure value)? locationFailure,
    TResult? Function(_ImageFailure value)? imageFailure,
  }) {
    return locationFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_LocationFailure value)? locationFailure,
    TResult Function(_ImageFailure value)? imageFailure,
    required TResult orElse(),
  }) {
    if (locationFailure != null) {
      return locationFailure(this);
    }
    return orElse();
  }
}

abstract class _LocationFailure implements ApplicantFailure {
  const factory _LocationFailure(final String msg) = _$LocationFailureImpl;

  String get msg;
  @JsonKey(ignore: true)
  _$$LocationFailureImplCopyWith<_$LocationFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ImageFailureImplCopyWith<$Res> {
  factory _$$ImageFailureImplCopyWith(
          _$ImageFailureImpl value, $Res Function(_$ImageFailureImpl) then) =
      __$$ImageFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$ImageFailureImplCopyWithImpl<$Res>
    extends _$ApplicantFailureCopyWithImpl<$Res, _$ImageFailureImpl>
    implements _$$ImageFailureImplCopyWith<$Res> {
  __$$ImageFailureImplCopyWithImpl(
      _$ImageFailureImpl _value, $Res Function(_$ImageFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$ImageFailureImpl(
      null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ImageFailureImpl implements _ImageFailure {
  const _$ImageFailureImpl(this.msg);

  @override
  final String msg;

  @override
  String toString() {
    return 'ApplicantFailure.imageFailure(msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageFailureImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageFailureImplCopyWith<_$ImageFailureImpl> get copyWith =>
      __$$ImageFailureImplCopyWithImpl<_$ImageFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clientFailure,
    required TResult Function(String msg) locationFailure,
    required TResult Function(String msg) imageFailure,
  }) {
    return imageFailure(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? clientFailure,
    TResult? Function(String msg)? locationFailure,
    TResult? Function(String msg)? imageFailure,
  }) {
    return imageFailure?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clientFailure,
    TResult Function(String msg)? locationFailure,
    TResult Function(String msg)? imageFailure,
    required TResult orElse(),
  }) {
    if (imageFailure != null) {
      return imageFailure(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientFailure value) clientFailure,
    required TResult Function(_LocationFailure value) locationFailure,
    required TResult Function(_ImageFailure value) imageFailure,
  }) {
    return imageFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClientFailure value)? clientFailure,
    TResult? Function(_LocationFailure value)? locationFailure,
    TResult? Function(_ImageFailure value)? imageFailure,
  }) {
    return imageFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_LocationFailure value)? locationFailure,
    TResult Function(_ImageFailure value)? imageFailure,
    required TResult orElse(),
  }) {
    if (imageFailure != null) {
      return imageFailure(this);
    }
    return orElse();
  }
}

abstract class _ImageFailure implements ApplicantFailure {
  const factory _ImageFailure(final String msg) = _$ImageFailureImpl;

  String get msg;
  @JsonKey(ignore: true)
  _$$ImageFailureImplCopyWith<_$ImageFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
