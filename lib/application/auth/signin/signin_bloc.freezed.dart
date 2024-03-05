// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signin_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SigninEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() obscureTextChanged,
    required TResult Function() signinButtonPressed,
    required TResult Function() signupButtonPressed,
    required TResult Function() signinWithGoogle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? obscureTextChanged,
    TResult? Function()? signinButtonPressed,
    TResult? Function()? signupButtonPressed,
    TResult? Function()? signinWithGoogle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? obscureTextChanged,
    TResult Function()? signinButtonPressed,
    TResult Function()? signupButtonPressed,
    TResult Function()? signinWithGoogle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(obscureTextChanged value) obscureTextChanged,
    required TResult Function(_SigninButtonPressed value) signinButtonPressed,
    required TResult Function(_SignupButtonPressed value) signupButtonPressed,
    required TResult Function(_SigninWithGoogle value) signinWithGoogle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(obscureTextChanged value)? obscureTextChanged,
    TResult? Function(_SigninButtonPressed value)? signinButtonPressed,
    TResult? Function(_SignupButtonPressed value)? signupButtonPressed,
    TResult? Function(_SigninWithGoogle value)? signinWithGoogle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(obscureTextChanged value)? obscureTextChanged,
    TResult Function(_SigninButtonPressed value)? signinButtonPressed,
    TResult Function(_SignupButtonPressed value)? signupButtonPressed,
    TResult Function(_SigninWithGoogle value)? signinWithGoogle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SigninEventCopyWith<$Res> {
  factory $SigninEventCopyWith(
          SigninEvent value, $Res Function(SigninEvent) then) =
      _$SigninEventCopyWithImpl<$Res, SigninEvent>;
}

/// @nodoc
class _$SigninEventCopyWithImpl<$Res, $Val extends SigninEvent>
    implements $SigninEventCopyWith<$Res> {
  _$SigninEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EmailChangedImplCopyWith<$Res> {
  factory _$$EmailChangedImplCopyWith(
          _$EmailChangedImpl value, $Res Function(_$EmailChangedImpl) then) =
      __$$EmailChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$EmailChangedImplCopyWithImpl<$Res>
    extends _$SigninEventCopyWithImpl<$Res, _$EmailChangedImpl>
    implements _$$EmailChangedImplCopyWith<$Res> {
  __$$EmailChangedImplCopyWithImpl(
      _$EmailChangedImpl _value, $Res Function(_$EmailChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$EmailChangedImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailChangedImpl implements _EmailChanged {
  const _$EmailChangedImpl(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'SigninEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailChangedImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailChangedImplCopyWith<_$EmailChangedImpl> get copyWith =>
      __$$EmailChangedImplCopyWithImpl<_$EmailChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() obscureTextChanged,
    required TResult Function() signinButtonPressed,
    required TResult Function() signupButtonPressed,
    required TResult Function() signinWithGoogle,
  }) {
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? obscureTextChanged,
    TResult? Function()? signinButtonPressed,
    TResult? Function()? signupButtonPressed,
    TResult? Function()? signinWithGoogle,
  }) {
    return emailChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? obscureTextChanged,
    TResult Function()? signinButtonPressed,
    TResult Function()? signupButtonPressed,
    TResult Function()? signinWithGoogle,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(obscureTextChanged value) obscureTextChanged,
    required TResult Function(_SigninButtonPressed value) signinButtonPressed,
    required TResult Function(_SignupButtonPressed value) signupButtonPressed,
    required TResult Function(_SigninWithGoogle value) signinWithGoogle,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(obscureTextChanged value)? obscureTextChanged,
    TResult? Function(_SigninButtonPressed value)? signinButtonPressed,
    TResult? Function(_SignupButtonPressed value)? signupButtonPressed,
    TResult? Function(_SigninWithGoogle value)? signinWithGoogle,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(obscureTextChanged value)? obscureTextChanged,
    TResult Function(_SigninButtonPressed value)? signinButtonPressed,
    TResult Function(_SignupButtonPressed value)? signupButtonPressed,
    TResult Function(_SigninWithGoogle value)? signinWithGoogle,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements SigninEvent {
  const factory _EmailChanged(final String email) = _$EmailChangedImpl;

  String get email;
  @JsonKey(ignore: true)
  _$$EmailChangedImplCopyWith<_$EmailChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordChangedImplCopyWith<$Res> {
  factory _$$PasswordChangedImplCopyWith(_$PasswordChangedImpl value,
          $Res Function(_$PasswordChangedImpl) then) =
      __$$PasswordChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$PasswordChangedImplCopyWithImpl<$Res>
    extends _$SigninEventCopyWithImpl<$Res, _$PasswordChangedImpl>
    implements _$$PasswordChangedImplCopyWith<$Res> {
  __$$PasswordChangedImplCopyWithImpl(
      _$PasswordChangedImpl _value, $Res Function(_$PasswordChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$PasswordChangedImpl(
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordChangedImpl implements _PasswordChanged {
  const _$PasswordChangedImpl(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'SigninEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordChangedImpl &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordChangedImplCopyWith<_$PasswordChangedImpl> get copyWith =>
      __$$PasswordChangedImplCopyWithImpl<_$PasswordChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() obscureTextChanged,
    required TResult Function() signinButtonPressed,
    required TResult Function() signupButtonPressed,
    required TResult Function() signinWithGoogle,
  }) {
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? obscureTextChanged,
    TResult? Function()? signinButtonPressed,
    TResult? Function()? signupButtonPressed,
    TResult? Function()? signinWithGoogle,
  }) {
    return passwordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? obscureTextChanged,
    TResult Function()? signinButtonPressed,
    TResult Function()? signupButtonPressed,
    TResult Function()? signinWithGoogle,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(obscureTextChanged value) obscureTextChanged,
    required TResult Function(_SigninButtonPressed value) signinButtonPressed,
    required TResult Function(_SignupButtonPressed value) signupButtonPressed,
    required TResult Function(_SigninWithGoogle value) signinWithGoogle,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(obscureTextChanged value)? obscureTextChanged,
    TResult? Function(_SigninButtonPressed value)? signinButtonPressed,
    TResult? Function(_SignupButtonPressed value)? signupButtonPressed,
    TResult? Function(_SigninWithGoogle value)? signinWithGoogle,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(obscureTextChanged value)? obscureTextChanged,
    TResult Function(_SigninButtonPressed value)? signinButtonPressed,
    TResult Function(_SignupButtonPressed value)? signupButtonPressed,
    TResult Function(_SigninWithGoogle value)? signinWithGoogle,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordChanged implements SigninEvent {
  const factory _PasswordChanged(final String password) = _$PasswordChangedImpl;

  String get password;
  @JsonKey(ignore: true)
  _$$PasswordChangedImplCopyWith<_$PasswordChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$obscureTextChangedImplCopyWith<$Res> {
  factory _$$obscureTextChangedImplCopyWith(_$obscureTextChangedImpl value,
          $Res Function(_$obscureTextChangedImpl) then) =
      __$$obscureTextChangedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$obscureTextChangedImplCopyWithImpl<$Res>
    extends _$SigninEventCopyWithImpl<$Res, _$obscureTextChangedImpl>
    implements _$$obscureTextChangedImplCopyWith<$Res> {
  __$$obscureTextChangedImplCopyWithImpl(_$obscureTextChangedImpl _value,
      $Res Function(_$obscureTextChangedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$obscureTextChangedImpl implements obscureTextChanged {
  const _$obscureTextChangedImpl();

  @override
  String toString() {
    return 'SigninEvent.obscureTextChanged()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$obscureTextChangedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() obscureTextChanged,
    required TResult Function() signinButtonPressed,
    required TResult Function() signupButtonPressed,
    required TResult Function() signinWithGoogle,
  }) {
    return obscureTextChanged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? obscureTextChanged,
    TResult? Function()? signinButtonPressed,
    TResult? Function()? signupButtonPressed,
    TResult? Function()? signinWithGoogle,
  }) {
    return obscureTextChanged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? obscureTextChanged,
    TResult Function()? signinButtonPressed,
    TResult Function()? signupButtonPressed,
    TResult Function()? signinWithGoogle,
    required TResult orElse(),
  }) {
    if (obscureTextChanged != null) {
      return obscureTextChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(obscureTextChanged value) obscureTextChanged,
    required TResult Function(_SigninButtonPressed value) signinButtonPressed,
    required TResult Function(_SignupButtonPressed value) signupButtonPressed,
    required TResult Function(_SigninWithGoogle value) signinWithGoogle,
  }) {
    return obscureTextChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(obscureTextChanged value)? obscureTextChanged,
    TResult? Function(_SigninButtonPressed value)? signinButtonPressed,
    TResult? Function(_SignupButtonPressed value)? signupButtonPressed,
    TResult? Function(_SigninWithGoogle value)? signinWithGoogle,
  }) {
    return obscureTextChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(obscureTextChanged value)? obscureTextChanged,
    TResult Function(_SigninButtonPressed value)? signinButtonPressed,
    TResult Function(_SignupButtonPressed value)? signupButtonPressed,
    TResult Function(_SigninWithGoogle value)? signinWithGoogle,
    required TResult orElse(),
  }) {
    if (obscureTextChanged != null) {
      return obscureTextChanged(this);
    }
    return orElse();
  }
}

abstract class obscureTextChanged implements SigninEvent {
  const factory obscureTextChanged() = _$obscureTextChangedImpl;
}

/// @nodoc
abstract class _$$SigninButtonPressedImplCopyWith<$Res> {
  factory _$$SigninButtonPressedImplCopyWith(_$SigninButtonPressedImpl value,
          $Res Function(_$SigninButtonPressedImpl) then) =
      __$$SigninButtonPressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SigninButtonPressedImplCopyWithImpl<$Res>
    extends _$SigninEventCopyWithImpl<$Res, _$SigninButtonPressedImpl>
    implements _$$SigninButtonPressedImplCopyWith<$Res> {
  __$$SigninButtonPressedImplCopyWithImpl(_$SigninButtonPressedImpl _value,
      $Res Function(_$SigninButtonPressedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SigninButtonPressedImpl implements _SigninButtonPressed {
  const _$SigninButtonPressedImpl();

  @override
  String toString() {
    return 'SigninEvent.signinButtonPressed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SigninButtonPressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() obscureTextChanged,
    required TResult Function() signinButtonPressed,
    required TResult Function() signupButtonPressed,
    required TResult Function() signinWithGoogle,
  }) {
    return signinButtonPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? obscureTextChanged,
    TResult? Function()? signinButtonPressed,
    TResult? Function()? signupButtonPressed,
    TResult? Function()? signinWithGoogle,
  }) {
    return signinButtonPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? obscureTextChanged,
    TResult Function()? signinButtonPressed,
    TResult Function()? signupButtonPressed,
    TResult Function()? signinWithGoogle,
    required TResult orElse(),
  }) {
    if (signinButtonPressed != null) {
      return signinButtonPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(obscureTextChanged value) obscureTextChanged,
    required TResult Function(_SigninButtonPressed value) signinButtonPressed,
    required TResult Function(_SignupButtonPressed value) signupButtonPressed,
    required TResult Function(_SigninWithGoogle value) signinWithGoogle,
  }) {
    return signinButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(obscureTextChanged value)? obscureTextChanged,
    TResult? Function(_SigninButtonPressed value)? signinButtonPressed,
    TResult? Function(_SignupButtonPressed value)? signupButtonPressed,
    TResult? Function(_SigninWithGoogle value)? signinWithGoogle,
  }) {
    return signinButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(obscureTextChanged value)? obscureTextChanged,
    TResult Function(_SigninButtonPressed value)? signinButtonPressed,
    TResult Function(_SignupButtonPressed value)? signupButtonPressed,
    TResult Function(_SigninWithGoogle value)? signinWithGoogle,
    required TResult orElse(),
  }) {
    if (signinButtonPressed != null) {
      return signinButtonPressed(this);
    }
    return orElse();
  }
}

abstract class _SigninButtonPressed implements SigninEvent {
  const factory _SigninButtonPressed() = _$SigninButtonPressedImpl;
}

/// @nodoc
abstract class _$$SignupButtonPressedImplCopyWith<$Res> {
  factory _$$SignupButtonPressedImplCopyWith(_$SignupButtonPressedImpl value,
          $Res Function(_$SignupButtonPressedImpl) then) =
      __$$SignupButtonPressedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignupButtonPressedImplCopyWithImpl<$Res>
    extends _$SigninEventCopyWithImpl<$Res, _$SignupButtonPressedImpl>
    implements _$$SignupButtonPressedImplCopyWith<$Res> {
  __$$SignupButtonPressedImplCopyWithImpl(_$SignupButtonPressedImpl _value,
      $Res Function(_$SignupButtonPressedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignupButtonPressedImpl implements _SignupButtonPressed {
  const _$SignupButtonPressedImpl();

  @override
  String toString() {
    return 'SigninEvent.signupButtonPressed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupButtonPressedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() obscureTextChanged,
    required TResult Function() signinButtonPressed,
    required TResult Function() signupButtonPressed,
    required TResult Function() signinWithGoogle,
  }) {
    return signupButtonPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? obscureTextChanged,
    TResult? Function()? signinButtonPressed,
    TResult? Function()? signupButtonPressed,
    TResult? Function()? signinWithGoogle,
  }) {
    return signupButtonPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? obscureTextChanged,
    TResult Function()? signinButtonPressed,
    TResult Function()? signupButtonPressed,
    TResult Function()? signinWithGoogle,
    required TResult orElse(),
  }) {
    if (signupButtonPressed != null) {
      return signupButtonPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(obscureTextChanged value) obscureTextChanged,
    required TResult Function(_SigninButtonPressed value) signinButtonPressed,
    required TResult Function(_SignupButtonPressed value) signupButtonPressed,
    required TResult Function(_SigninWithGoogle value) signinWithGoogle,
  }) {
    return signupButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(obscureTextChanged value)? obscureTextChanged,
    TResult? Function(_SigninButtonPressed value)? signinButtonPressed,
    TResult? Function(_SignupButtonPressed value)? signupButtonPressed,
    TResult? Function(_SigninWithGoogle value)? signinWithGoogle,
  }) {
    return signupButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(obscureTextChanged value)? obscureTextChanged,
    TResult Function(_SigninButtonPressed value)? signinButtonPressed,
    TResult Function(_SignupButtonPressed value)? signupButtonPressed,
    TResult Function(_SigninWithGoogle value)? signinWithGoogle,
    required TResult orElse(),
  }) {
    if (signupButtonPressed != null) {
      return signupButtonPressed(this);
    }
    return orElse();
  }
}

abstract class _SignupButtonPressed implements SigninEvent {
  const factory _SignupButtonPressed() = _$SignupButtonPressedImpl;
}

/// @nodoc
abstract class _$$SigninWithGoogleImplCopyWith<$Res> {
  factory _$$SigninWithGoogleImplCopyWith(_$SigninWithGoogleImpl value,
          $Res Function(_$SigninWithGoogleImpl) then) =
      __$$SigninWithGoogleImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SigninWithGoogleImplCopyWithImpl<$Res>
    extends _$SigninEventCopyWithImpl<$Res, _$SigninWithGoogleImpl>
    implements _$$SigninWithGoogleImplCopyWith<$Res> {
  __$$SigninWithGoogleImplCopyWithImpl(_$SigninWithGoogleImpl _value,
      $Res Function(_$SigninWithGoogleImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SigninWithGoogleImpl implements _SigninWithGoogle {
  const _$SigninWithGoogleImpl();

  @override
  String toString() {
    return 'SigninEvent.signinWithGoogle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SigninWithGoogleImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() obscureTextChanged,
    required TResult Function() signinButtonPressed,
    required TResult Function() signupButtonPressed,
    required TResult Function() signinWithGoogle,
  }) {
    return signinWithGoogle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? obscureTextChanged,
    TResult? Function()? signinButtonPressed,
    TResult? Function()? signupButtonPressed,
    TResult? Function()? signinWithGoogle,
  }) {
    return signinWithGoogle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? obscureTextChanged,
    TResult Function()? signinButtonPressed,
    TResult Function()? signupButtonPressed,
    TResult Function()? signinWithGoogle,
    required TResult orElse(),
  }) {
    if (signinWithGoogle != null) {
      return signinWithGoogle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(obscureTextChanged value) obscureTextChanged,
    required TResult Function(_SigninButtonPressed value) signinButtonPressed,
    required TResult Function(_SignupButtonPressed value) signupButtonPressed,
    required TResult Function(_SigninWithGoogle value) signinWithGoogle,
  }) {
    return signinWithGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmailChanged value)? emailChanged,
    TResult? Function(_PasswordChanged value)? passwordChanged,
    TResult? Function(obscureTextChanged value)? obscureTextChanged,
    TResult? Function(_SigninButtonPressed value)? signinButtonPressed,
    TResult? Function(_SignupButtonPressed value)? signupButtonPressed,
    TResult? Function(_SigninWithGoogle value)? signinWithGoogle,
  }) {
    return signinWithGoogle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(obscureTextChanged value)? obscureTextChanged,
    TResult Function(_SigninButtonPressed value)? signinButtonPressed,
    TResult Function(_SignupButtonPressed value)? signupButtonPressed,
    TResult Function(_SigninWithGoogle value)? signinWithGoogle,
    required TResult orElse(),
  }) {
    if (signinWithGoogle != null) {
      return signinWithGoogle(this);
    }
    return orElse();
  }
}

abstract class _SigninWithGoogle implements SigninEvent {
  const factory _SigninWithGoogle() = _$SigninWithGoogleImpl;
}

/// @nodoc
mixin _$SigninState {
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get hidePassword => throw _privateConstructorUsedError;
  bool get showValidationError => throw _privateConstructorUsedError;
  Credentials get credentials => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SigninStateCopyWith<SigninState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SigninStateCopyWith<$Res> {
  factory $SigninStateCopyWith(
          SigninState value, $Res Function(SigninState) then) =
      _$SigninStateCopyWithImpl<$Res, SigninState>;
  @useResult
  $Res call(
      {bool isSubmitting,
      bool hidePassword,
      bool showValidationError,
      Credentials credentials,
      Option<Either<AuthFailure, Unit>> failureOrSuccessOption});

  $CredentialsCopyWith<$Res> get credentials;
}

/// @nodoc
class _$SigninStateCopyWithImpl<$Res, $Val extends SigninState>
    implements $SigninStateCopyWith<$Res> {
  _$SigninStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSubmitting = null,
    Object? hidePassword = null,
    Object? showValidationError = null,
    Object? credentials = null,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      hidePassword: null == hidePassword
          ? _value.hidePassword
          : hidePassword // ignore: cast_nullable_to_non_nullable
              as bool,
      showValidationError: null == showValidationError
          ? _value.showValidationError
          : showValidationError // ignore: cast_nullable_to_non_nullable
              as bool,
      credentials: null == credentials
          ? _value.credentials
          : credentials // ignore: cast_nullable_to_non_nullable
              as Credentials,
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CredentialsCopyWith<$Res> get credentials {
    return $CredentialsCopyWith<$Res>(_value.credentials, (value) {
      return _then(_value.copyWith(credentials: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SigninStateImplCopyWith<$Res>
    implements $SigninStateCopyWith<$Res> {
  factory _$$SigninStateImplCopyWith(
          _$SigninStateImpl value, $Res Function(_$SigninStateImpl) then) =
      __$$SigninStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isSubmitting,
      bool hidePassword,
      bool showValidationError,
      Credentials credentials,
      Option<Either<AuthFailure, Unit>> failureOrSuccessOption});

  @override
  $CredentialsCopyWith<$Res> get credentials;
}

/// @nodoc
class __$$SigninStateImplCopyWithImpl<$Res>
    extends _$SigninStateCopyWithImpl<$Res, _$SigninStateImpl>
    implements _$$SigninStateImplCopyWith<$Res> {
  __$$SigninStateImplCopyWithImpl(
      _$SigninStateImpl _value, $Res Function(_$SigninStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSubmitting = null,
    Object? hidePassword = null,
    Object? showValidationError = null,
    Object? credentials = null,
    Object? failureOrSuccessOption = null,
  }) {
    return _then(_$SigninStateImpl(
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      hidePassword: null == hidePassword
          ? _value.hidePassword
          : hidePassword // ignore: cast_nullable_to_non_nullable
              as bool,
      showValidationError: null == showValidationError
          ? _value.showValidationError
          : showValidationError // ignore: cast_nullable_to_non_nullable
              as bool,
      credentials: null == credentials
          ? _value.credentials
          : credentials // ignore: cast_nullable_to_non_nullable
              as Credentials,
      failureOrSuccessOption: null == failureOrSuccessOption
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$SigninStateImpl implements _SigninState {
  const _$SigninStateImpl(
      {required this.isSubmitting,
      required this.hidePassword,
      required this.showValidationError,
      required this.credentials,
      required this.failureOrSuccessOption});

  @override
  final bool isSubmitting;
  @override
  final bool hidePassword;
  @override
  final bool showValidationError;
  @override
  final Credentials credentials;
  @override
  final Option<Either<AuthFailure, Unit>> failureOrSuccessOption;

  @override
  String toString() {
    return 'SigninState(isSubmitting: $isSubmitting, hidePassword: $hidePassword, showValidationError: $showValidationError, credentials: $credentials, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SigninStateImpl &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.hidePassword, hidePassword) ||
                other.hidePassword == hidePassword) &&
            (identical(other.showValidationError, showValidationError) ||
                other.showValidationError == showValidationError) &&
            (identical(other.credentials, credentials) ||
                other.credentials == credentials) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                other.failureOrSuccessOption == failureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isSubmitting, hidePassword,
      showValidationError, credentials, failureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SigninStateImplCopyWith<_$SigninStateImpl> get copyWith =>
      __$$SigninStateImplCopyWithImpl<_$SigninStateImpl>(this, _$identity);
}

abstract class _SigninState implements SigninState {
  const factory _SigninState(
      {required final bool isSubmitting,
      required final bool hidePassword,
      required final bool showValidationError,
      required final Credentials credentials,
      required final Option<Either<AuthFailure, Unit>>
          failureOrSuccessOption}) = _$SigninStateImpl;

  @override
  bool get isSubmitting;
  @override
  bool get hidePassword;
  @override
  bool get showValidationError;
  @override
  Credentials get credentials;
  @override
  Option<Either<AuthFailure, Unit>> get failureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$SigninStateImplCopyWith<_$SigninStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
