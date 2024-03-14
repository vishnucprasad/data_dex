// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'common_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CommonFailure {
  String get msg => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) clientFailure,
    required TResult Function(String msg) locationFailure,
    required TResult Function(String msg) shareFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? clientFailure,
    TResult? Function(String msg)? locationFailure,
    TResult? Function(String msg)? shareFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? clientFailure,
    TResult Function(String msg)? locationFailure,
    TResult Function(String msg)? shareFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientFailure value) clientFailure,
    required TResult Function(_LocationFailure value) locationFailure,
    required TResult Function(_ShareFailure value) shareFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClientFailure value)? clientFailure,
    TResult? Function(_LocationFailure value)? locationFailure,
    TResult? Function(_ShareFailure value)? shareFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_LocationFailure value)? locationFailure,
    TResult Function(_ShareFailure value)? shareFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommonFailureCopyWith<CommonFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommonFailureCopyWith<$Res> {
  factory $CommonFailureCopyWith(
          CommonFailure value, $Res Function(CommonFailure) then) =
      _$CommonFailureCopyWithImpl<$Res, CommonFailure>;
  @useResult
  $Res call({String msg});
}

/// @nodoc
class _$CommonFailureCopyWithImpl<$Res, $Val extends CommonFailure>
    implements $CommonFailureCopyWith<$Res> {
  _$CommonFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_value.copyWith(
      msg: null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClientFailureImplCopyWith<$Res>
    implements $CommonFailureCopyWith<$Res> {
  factory _$$ClientFailureImplCopyWith(
          _$ClientFailureImpl value, $Res Function(_$ClientFailureImpl) then) =
      __$$ClientFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$ClientFailureImplCopyWithImpl<$Res>
    extends _$CommonFailureCopyWithImpl<$Res, _$ClientFailureImpl>
    implements _$$ClientFailureImplCopyWith<$Res> {
  __$$ClientFailureImplCopyWithImpl(
      _$ClientFailureImpl _value, $Res Function(_$ClientFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$ClientFailureImpl(
      null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ClientFailureImpl implements _ClientFailure {
  const _$ClientFailureImpl(this.msg);

  @override
  final String msg;

  @override
  String toString() {
    return 'CommonFailure.clientFailure(msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClientFailureImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClientFailureImplCopyWith<_$ClientFailureImpl> get copyWith =>
      __$$ClientFailureImplCopyWithImpl<_$ClientFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) clientFailure,
    required TResult Function(String msg) locationFailure,
    required TResult Function(String msg) shareFailure,
  }) {
    return clientFailure(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? clientFailure,
    TResult? Function(String msg)? locationFailure,
    TResult? Function(String msg)? shareFailure,
  }) {
    return clientFailure?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? clientFailure,
    TResult Function(String msg)? locationFailure,
    TResult Function(String msg)? shareFailure,
    required TResult orElse(),
  }) {
    if (clientFailure != null) {
      return clientFailure(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientFailure value) clientFailure,
    required TResult Function(_LocationFailure value) locationFailure,
    required TResult Function(_ShareFailure value) shareFailure,
  }) {
    return clientFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClientFailure value)? clientFailure,
    TResult? Function(_LocationFailure value)? locationFailure,
    TResult? Function(_ShareFailure value)? shareFailure,
  }) {
    return clientFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_LocationFailure value)? locationFailure,
    TResult Function(_ShareFailure value)? shareFailure,
    required TResult orElse(),
  }) {
    if (clientFailure != null) {
      return clientFailure(this);
    }
    return orElse();
  }
}

abstract class _ClientFailure implements CommonFailure {
  const factory _ClientFailure(final String msg) = _$ClientFailureImpl;

  @override
  String get msg;
  @override
  @JsonKey(ignore: true)
  _$$ClientFailureImplCopyWith<_$ClientFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LocationFailureImplCopyWith<$Res>
    implements $CommonFailureCopyWith<$Res> {
  factory _$$LocationFailureImplCopyWith(_$LocationFailureImpl value,
          $Res Function(_$LocationFailureImpl) then) =
      __$$LocationFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$LocationFailureImplCopyWithImpl<$Res>
    extends _$CommonFailureCopyWithImpl<$Res, _$LocationFailureImpl>
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
    return 'CommonFailure.locationFailure(msg: $msg)';
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
    required TResult Function(String msg) clientFailure,
    required TResult Function(String msg) locationFailure,
    required TResult Function(String msg) shareFailure,
  }) {
    return locationFailure(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? clientFailure,
    TResult? Function(String msg)? locationFailure,
    TResult? Function(String msg)? shareFailure,
  }) {
    return locationFailure?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? clientFailure,
    TResult Function(String msg)? locationFailure,
    TResult Function(String msg)? shareFailure,
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
    required TResult Function(_ShareFailure value) shareFailure,
  }) {
    return locationFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClientFailure value)? clientFailure,
    TResult? Function(_LocationFailure value)? locationFailure,
    TResult? Function(_ShareFailure value)? shareFailure,
  }) {
    return locationFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_LocationFailure value)? locationFailure,
    TResult Function(_ShareFailure value)? shareFailure,
    required TResult orElse(),
  }) {
    if (locationFailure != null) {
      return locationFailure(this);
    }
    return orElse();
  }
}

abstract class _LocationFailure implements CommonFailure {
  const factory _LocationFailure(final String msg) = _$LocationFailureImpl;

  @override
  String get msg;
  @override
  @JsonKey(ignore: true)
  _$$LocationFailureImplCopyWith<_$LocationFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ShareFailureImplCopyWith<$Res>
    implements $CommonFailureCopyWith<$Res> {
  factory _$$ShareFailureImplCopyWith(
          _$ShareFailureImpl value, $Res Function(_$ShareFailureImpl) then) =
      __$$ShareFailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$ShareFailureImplCopyWithImpl<$Res>
    extends _$CommonFailureCopyWithImpl<$Res, _$ShareFailureImpl>
    implements _$$ShareFailureImplCopyWith<$Res> {
  __$$ShareFailureImplCopyWithImpl(
      _$ShareFailureImpl _value, $Res Function(_$ShareFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$ShareFailureImpl(
      null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ShareFailureImpl implements _ShareFailure {
  const _$ShareFailureImpl(this.msg);

  @override
  final String msg;

  @override
  String toString() {
    return 'CommonFailure.shareFailure(msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShareFailureImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShareFailureImplCopyWith<_$ShareFailureImpl> get copyWith =>
      __$$ShareFailureImplCopyWithImpl<_$ShareFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) clientFailure,
    required TResult Function(String msg) locationFailure,
    required TResult Function(String msg) shareFailure,
  }) {
    return shareFailure(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? clientFailure,
    TResult? Function(String msg)? locationFailure,
    TResult? Function(String msg)? shareFailure,
  }) {
    return shareFailure?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? clientFailure,
    TResult Function(String msg)? locationFailure,
    TResult Function(String msg)? shareFailure,
    required TResult orElse(),
  }) {
    if (shareFailure != null) {
      return shareFailure(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientFailure value) clientFailure,
    required TResult Function(_LocationFailure value) locationFailure,
    required TResult Function(_ShareFailure value) shareFailure,
  }) {
    return shareFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClientFailure value)? clientFailure,
    TResult? Function(_LocationFailure value)? locationFailure,
    TResult? Function(_ShareFailure value)? shareFailure,
  }) {
    return shareFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_LocationFailure value)? locationFailure,
    TResult Function(_ShareFailure value)? shareFailure,
    required TResult orElse(),
  }) {
    if (shareFailure != null) {
      return shareFailure(this);
    }
    return orElse();
  }
}

abstract class _ShareFailure implements CommonFailure {
  const factory _ShareFailure(final String msg) = _$ShareFailureImpl;

  @override
  String get msg;
  @override
  @JsonKey(ignore: true)
  _$$ShareFailureImplCopyWith<_$ShareFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
