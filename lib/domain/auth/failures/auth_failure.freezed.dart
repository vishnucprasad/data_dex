// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) clientFailure,
    required TResult Function(String msg) serverFailure,
    required TResult Function() emailAlredyInUse,
    required TResult Function() invalidCredentials,
    required TResult Function() cancelledByUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? clientFailure,
    TResult? Function(String msg)? serverFailure,
    TResult? Function()? emailAlredyInUse,
    TResult? Function()? invalidCredentials,
    TResult? Function()? cancelledByUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? clientFailure,
    TResult Function(String msg)? serverFailure,
    TResult Function()? emailAlredyInUse,
    TResult Function()? invalidCredentials,
    TResult Function()? cancelledByUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientFailure value) clientFailure,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_EmailAlredyInUse value) emailAlredyInUse,
    required TResult Function(_InvalidCredentials value) invalidCredentials,
    required TResult Function(_CancelledByUser value) cancelledByUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClientFailure value)? clientFailure,
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_EmailAlredyInUse value)? emailAlredyInUse,
    TResult? Function(_InvalidCredentials value)? invalidCredentials,
    TResult? Function(_CancelledByUser value)? cancelledByUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_EmailAlredyInUse value)? emailAlredyInUse,
    TResult Function(_InvalidCredentials value)? invalidCredentials,
    TResult Function(_CancelledByUser value)? cancelledByUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res, AuthFailure>;
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res, $Val extends AuthFailure>
    implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

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
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$ClientFailureImplCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$ClientFailureImpl>
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
    return 'AuthFailure.clientFailure(msg: $msg)';
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
    required TResult Function(String msg) serverFailure,
    required TResult Function() emailAlredyInUse,
    required TResult Function() invalidCredentials,
    required TResult Function() cancelledByUser,
  }) {
    return clientFailure(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? clientFailure,
    TResult? Function(String msg)? serverFailure,
    TResult? Function()? emailAlredyInUse,
    TResult? Function()? invalidCredentials,
    TResult? Function()? cancelledByUser,
  }) {
    return clientFailure?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? clientFailure,
    TResult Function(String msg)? serverFailure,
    TResult Function()? emailAlredyInUse,
    TResult Function()? invalidCredentials,
    TResult Function()? cancelledByUser,
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
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_EmailAlredyInUse value) emailAlredyInUse,
    required TResult Function(_InvalidCredentials value) invalidCredentials,
    required TResult Function(_CancelledByUser value) cancelledByUser,
  }) {
    return clientFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClientFailure value)? clientFailure,
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_EmailAlredyInUse value)? emailAlredyInUse,
    TResult? Function(_InvalidCredentials value)? invalidCredentials,
    TResult? Function(_CancelledByUser value)? cancelledByUser,
  }) {
    return clientFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_EmailAlredyInUse value)? emailAlredyInUse,
    TResult Function(_InvalidCredentials value)? invalidCredentials,
    TResult Function(_CancelledByUser value)? cancelledByUser,
    required TResult orElse(),
  }) {
    if (clientFailure != null) {
      return clientFailure(this);
    }
    return orElse();
  }
}

abstract class _ClientFailure implements AuthFailure {
  const factory _ClientFailure(final String msg) = _$ClientFailureImpl;

  String get msg;
  @JsonKey(ignore: true)
  _$$ClientFailureImplCopyWith<_$ClientFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServerFailureImplCopyWith<$Res> {
  factory _$$ServerFailureImplCopyWith(
          _$ServerFailureImpl value, $Res Function(_$ServerFailureImpl) then) =
      __$$ServerFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$ServerFailureImplCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$ServerFailureImpl>
    implements _$$ServerFailureImplCopyWith<$Res> {
  __$$ServerFailureImplCopyWithImpl(
      _$ServerFailureImpl _value, $Res Function(_$ServerFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$ServerFailureImpl(
      null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ServerFailureImpl implements _ServerFailure {
  const _$ServerFailureImpl(this.msg);

  @override
  final String msg;

  @override
  String toString() {
    return 'AuthFailure.serverFailure(msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerFailureImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerFailureImplCopyWith<_$ServerFailureImpl> get copyWith =>
      __$$ServerFailureImplCopyWithImpl<_$ServerFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) clientFailure,
    required TResult Function(String msg) serverFailure,
    required TResult Function() emailAlredyInUse,
    required TResult Function() invalidCredentials,
    required TResult Function() cancelledByUser,
  }) {
    return serverFailure(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? clientFailure,
    TResult? Function(String msg)? serverFailure,
    TResult? Function()? emailAlredyInUse,
    TResult? Function()? invalidCredentials,
    TResult? Function()? cancelledByUser,
  }) {
    return serverFailure?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? clientFailure,
    TResult Function(String msg)? serverFailure,
    TResult Function()? emailAlredyInUse,
    TResult Function()? invalidCredentials,
    TResult Function()? cancelledByUser,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientFailure value) clientFailure,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_EmailAlredyInUse value) emailAlredyInUse,
    required TResult Function(_InvalidCredentials value) invalidCredentials,
    required TResult Function(_CancelledByUser value) cancelledByUser,
  }) {
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClientFailure value)? clientFailure,
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_EmailAlredyInUse value)? emailAlredyInUse,
    TResult? Function(_InvalidCredentials value)? invalidCredentials,
    TResult? Function(_CancelledByUser value)? cancelledByUser,
  }) {
    return serverFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_EmailAlredyInUse value)? emailAlredyInUse,
    TResult Function(_InvalidCredentials value)? invalidCredentials,
    TResult Function(_CancelledByUser value)? cancelledByUser,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }
}

abstract class _ServerFailure implements AuthFailure {
  const factory _ServerFailure(final String msg) = _$ServerFailureImpl;

  String get msg;
  @JsonKey(ignore: true)
  _$$ServerFailureImplCopyWith<_$ServerFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmailAlredyInUseImplCopyWith<$Res> {
  factory _$$EmailAlredyInUseImplCopyWith(_$EmailAlredyInUseImpl value,
          $Res Function(_$EmailAlredyInUseImpl) then) =
      __$$EmailAlredyInUseImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmailAlredyInUseImplCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$EmailAlredyInUseImpl>
    implements _$$EmailAlredyInUseImplCopyWith<$Res> {
  __$$EmailAlredyInUseImplCopyWithImpl(_$EmailAlredyInUseImpl _value,
      $Res Function(_$EmailAlredyInUseImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmailAlredyInUseImpl implements _EmailAlredyInUse {
  const _$EmailAlredyInUseImpl();

  @override
  String toString() {
    return 'AuthFailure.emailAlredyInUse()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmailAlredyInUseImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) clientFailure,
    required TResult Function(String msg) serverFailure,
    required TResult Function() emailAlredyInUse,
    required TResult Function() invalidCredentials,
    required TResult Function() cancelledByUser,
  }) {
    return emailAlredyInUse();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? clientFailure,
    TResult? Function(String msg)? serverFailure,
    TResult? Function()? emailAlredyInUse,
    TResult? Function()? invalidCredentials,
    TResult? Function()? cancelledByUser,
  }) {
    return emailAlredyInUse?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? clientFailure,
    TResult Function(String msg)? serverFailure,
    TResult Function()? emailAlredyInUse,
    TResult Function()? invalidCredentials,
    TResult Function()? cancelledByUser,
    required TResult orElse(),
  }) {
    if (emailAlredyInUse != null) {
      return emailAlredyInUse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientFailure value) clientFailure,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_EmailAlredyInUse value) emailAlredyInUse,
    required TResult Function(_InvalidCredentials value) invalidCredentials,
    required TResult Function(_CancelledByUser value) cancelledByUser,
  }) {
    return emailAlredyInUse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClientFailure value)? clientFailure,
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_EmailAlredyInUse value)? emailAlredyInUse,
    TResult? Function(_InvalidCredentials value)? invalidCredentials,
    TResult? Function(_CancelledByUser value)? cancelledByUser,
  }) {
    return emailAlredyInUse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_EmailAlredyInUse value)? emailAlredyInUse,
    TResult Function(_InvalidCredentials value)? invalidCredentials,
    TResult Function(_CancelledByUser value)? cancelledByUser,
    required TResult orElse(),
  }) {
    if (emailAlredyInUse != null) {
      return emailAlredyInUse(this);
    }
    return orElse();
  }
}

abstract class _EmailAlredyInUse implements AuthFailure {
  const factory _EmailAlredyInUse() = _$EmailAlredyInUseImpl;
}

/// @nodoc
abstract class _$$InvalidCredentialsImplCopyWith<$Res> {
  factory _$$InvalidCredentialsImplCopyWith(_$InvalidCredentialsImpl value,
          $Res Function(_$InvalidCredentialsImpl) then) =
      __$$InvalidCredentialsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InvalidCredentialsImplCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$InvalidCredentialsImpl>
    implements _$$InvalidCredentialsImplCopyWith<$Res> {
  __$$InvalidCredentialsImplCopyWithImpl(_$InvalidCredentialsImpl _value,
      $Res Function(_$InvalidCredentialsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InvalidCredentialsImpl implements _InvalidCredentials {
  const _$InvalidCredentialsImpl();

  @override
  String toString() {
    return 'AuthFailure.invalidCredentials()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InvalidCredentialsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) clientFailure,
    required TResult Function(String msg) serverFailure,
    required TResult Function() emailAlredyInUse,
    required TResult Function() invalidCredentials,
    required TResult Function() cancelledByUser,
  }) {
    return invalidCredentials();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? clientFailure,
    TResult? Function(String msg)? serverFailure,
    TResult? Function()? emailAlredyInUse,
    TResult? Function()? invalidCredentials,
    TResult? Function()? cancelledByUser,
  }) {
    return invalidCredentials?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? clientFailure,
    TResult Function(String msg)? serverFailure,
    TResult Function()? emailAlredyInUse,
    TResult Function()? invalidCredentials,
    TResult Function()? cancelledByUser,
    required TResult orElse(),
  }) {
    if (invalidCredentials != null) {
      return invalidCredentials();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientFailure value) clientFailure,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_EmailAlredyInUse value) emailAlredyInUse,
    required TResult Function(_InvalidCredentials value) invalidCredentials,
    required TResult Function(_CancelledByUser value) cancelledByUser,
  }) {
    return invalidCredentials(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClientFailure value)? clientFailure,
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_EmailAlredyInUse value)? emailAlredyInUse,
    TResult? Function(_InvalidCredentials value)? invalidCredentials,
    TResult? Function(_CancelledByUser value)? cancelledByUser,
  }) {
    return invalidCredentials?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_EmailAlredyInUse value)? emailAlredyInUse,
    TResult Function(_InvalidCredentials value)? invalidCredentials,
    TResult Function(_CancelledByUser value)? cancelledByUser,
    required TResult orElse(),
  }) {
    if (invalidCredentials != null) {
      return invalidCredentials(this);
    }
    return orElse();
  }
}

abstract class _InvalidCredentials implements AuthFailure {
  const factory _InvalidCredentials() = _$InvalidCredentialsImpl;
}

/// @nodoc
abstract class _$$CancelledByUserImplCopyWith<$Res> {
  factory _$$CancelledByUserImplCopyWith(_$CancelledByUserImpl value,
          $Res Function(_$CancelledByUserImpl) then) =
      __$$CancelledByUserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CancelledByUserImplCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res, _$CancelledByUserImpl>
    implements _$$CancelledByUserImplCopyWith<$Res> {
  __$$CancelledByUserImplCopyWithImpl(
      _$CancelledByUserImpl _value, $Res Function(_$CancelledByUserImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CancelledByUserImpl implements _CancelledByUser {
  const _$CancelledByUserImpl();

  @override
  String toString() {
    return 'AuthFailure.cancelledByUser()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CancelledByUserImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String msg) clientFailure,
    required TResult Function(String msg) serverFailure,
    required TResult Function() emailAlredyInUse,
    required TResult Function() invalidCredentials,
    required TResult Function() cancelledByUser,
  }) {
    return cancelledByUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String msg)? clientFailure,
    TResult? Function(String msg)? serverFailure,
    TResult? Function()? emailAlredyInUse,
    TResult? Function()? invalidCredentials,
    TResult? Function()? cancelledByUser,
  }) {
    return cancelledByUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String msg)? clientFailure,
    TResult Function(String msg)? serverFailure,
    TResult Function()? emailAlredyInUse,
    TResult Function()? invalidCredentials,
    TResult Function()? cancelledByUser,
    required TResult orElse(),
  }) {
    if (cancelledByUser != null) {
      return cancelledByUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ClientFailure value) clientFailure,
    required TResult Function(_ServerFailure value) serverFailure,
    required TResult Function(_EmailAlredyInUse value) emailAlredyInUse,
    required TResult Function(_InvalidCredentials value) invalidCredentials,
    required TResult Function(_CancelledByUser value) cancelledByUser,
  }) {
    return cancelledByUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ClientFailure value)? clientFailure,
    TResult? Function(_ServerFailure value)? serverFailure,
    TResult? Function(_EmailAlredyInUse value)? emailAlredyInUse,
    TResult? Function(_InvalidCredentials value)? invalidCredentials,
    TResult? Function(_CancelledByUser value)? cancelledByUser,
  }) {
    return cancelledByUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ClientFailure value)? clientFailure,
    TResult Function(_ServerFailure value)? serverFailure,
    TResult Function(_EmailAlredyInUse value)? emailAlredyInUse,
    TResult Function(_InvalidCredentials value)? invalidCredentials,
    TResult Function(_CancelledByUser value)? cancelledByUser,
    required TResult orElse(),
  }) {
    if (cancelledByUser != null) {
      return cancelledByUser(this);
    }
    return orElse();
  }
}

abstract class _CancelledByUser implements AuthFailure {
  const factory _CancelledByUser() = _$CancelledByUserImpl;
}
