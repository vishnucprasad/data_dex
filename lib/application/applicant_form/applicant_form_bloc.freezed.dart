// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'applicant_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ApplicantFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) formStepChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String email) emailChnaged,
    required TResult Function(DateTime date) dateOfBirthChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? formStepChanged,
    TResult? Function(String name)? nameChanged,
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function(String email)? emailChnaged,
    TResult? Function(DateTime date)? dateOfBirthChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? formStepChanged,
    TResult Function(String name)? nameChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String email)? emailChnaged,
    TResult Function(DateTime date)? dateOfBirthChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FormStepChanged value) formStepChanged,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_EmailChnaged value) emailChnaged,
    required TResult Function(_DateOfBirthChanged value) dateOfBirthChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FormStepChanged value)? formStepChanged,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(_EmailChnaged value)? emailChnaged,
    TResult? Function(_DateOfBirthChanged value)? dateOfBirthChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FormStepChanged value)? formStepChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_EmailChnaged value)? emailChnaged,
    TResult Function(_DateOfBirthChanged value)? dateOfBirthChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplicantFormEventCopyWith<$Res> {
  factory $ApplicantFormEventCopyWith(
          ApplicantFormEvent value, $Res Function(ApplicantFormEvent) then) =
      _$ApplicantFormEventCopyWithImpl<$Res, ApplicantFormEvent>;
}

/// @nodoc
class _$ApplicantFormEventCopyWithImpl<$Res, $Val extends ApplicantFormEvent>
    implements $ApplicantFormEventCopyWith<$Res> {
  _$ApplicantFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FormStepChangedImplCopyWith<$Res> {
  factory _$$FormStepChangedImplCopyWith(_$FormStepChangedImpl value,
          $Res Function(_$FormStepChangedImpl) then) =
      __$$FormStepChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$FormStepChangedImplCopyWithImpl<$Res>
    extends _$ApplicantFormEventCopyWithImpl<$Res, _$FormStepChangedImpl>
    implements _$$FormStepChangedImplCopyWith<$Res> {
  __$$FormStepChangedImplCopyWithImpl(
      _$FormStepChangedImpl _value, $Res Function(_$FormStepChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$FormStepChangedImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FormStepChangedImpl implements _FormStepChanged {
  const _$FormStepChangedImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'ApplicantFormEvent.formStepChanged(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormStepChangedImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FormStepChangedImplCopyWith<_$FormStepChangedImpl> get copyWith =>
      __$$FormStepChangedImplCopyWithImpl<_$FormStepChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) formStepChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String email) emailChnaged,
    required TResult Function(DateTime date) dateOfBirthChanged,
  }) {
    return formStepChanged(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? formStepChanged,
    TResult? Function(String name)? nameChanged,
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function(String email)? emailChnaged,
    TResult? Function(DateTime date)? dateOfBirthChanged,
  }) {
    return formStepChanged?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? formStepChanged,
    TResult Function(String name)? nameChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String email)? emailChnaged,
    TResult Function(DateTime date)? dateOfBirthChanged,
    required TResult orElse(),
  }) {
    if (formStepChanged != null) {
      return formStepChanged(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FormStepChanged value) formStepChanged,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_EmailChnaged value) emailChnaged,
    required TResult Function(_DateOfBirthChanged value) dateOfBirthChanged,
  }) {
    return formStepChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FormStepChanged value)? formStepChanged,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(_EmailChnaged value)? emailChnaged,
    TResult? Function(_DateOfBirthChanged value)? dateOfBirthChanged,
  }) {
    return formStepChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FormStepChanged value)? formStepChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_EmailChnaged value)? emailChnaged,
    TResult Function(_DateOfBirthChanged value)? dateOfBirthChanged,
    required TResult orElse(),
  }) {
    if (formStepChanged != null) {
      return formStepChanged(this);
    }
    return orElse();
  }
}

abstract class _FormStepChanged implements ApplicantFormEvent {
  const factory _FormStepChanged(final int index) = _$FormStepChangedImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$FormStepChangedImplCopyWith<_$FormStepChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NameChangedImplCopyWith<$Res> {
  factory _$$NameChangedImplCopyWith(
          _$NameChangedImpl value, $Res Function(_$NameChangedImpl) then) =
      __$$NameChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$NameChangedImplCopyWithImpl<$Res>
    extends _$ApplicantFormEventCopyWithImpl<$Res, _$NameChangedImpl>
    implements _$$NameChangedImplCopyWith<$Res> {
  __$$NameChangedImplCopyWithImpl(
      _$NameChangedImpl _value, $Res Function(_$NameChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$NameChangedImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NameChangedImpl implements _NameChanged {
  const _$NameChangedImpl(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'ApplicantFormEvent.nameChanged(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NameChangedImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NameChangedImplCopyWith<_$NameChangedImpl> get copyWith =>
      __$$NameChangedImplCopyWithImpl<_$NameChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) formStepChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String email) emailChnaged,
    required TResult Function(DateTime date) dateOfBirthChanged,
  }) {
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? formStepChanged,
    TResult? Function(String name)? nameChanged,
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function(String email)? emailChnaged,
    TResult? Function(DateTime date)? dateOfBirthChanged,
  }) {
    return nameChanged?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? formStepChanged,
    TResult Function(String name)? nameChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String email)? emailChnaged,
    TResult Function(DateTime date)? dateOfBirthChanged,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FormStepChanged value) formStepChanged,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_EmailChnaged value) emailChnaged,
    required TResult Function(_DateOfBirthChanged value) dateOfBirthChanged,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FormStepChanged value)? formStepChanged,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(_EmailChnaged value)? emailChnaged,
    TResult? Function(_DateOfBirthChanged value)? dateOfBirthChanged,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FormStepChanged value)? formStepChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_EmailChnaged value)? emailChnaged,
    TResult Function(_DateOfBirthChanged value)? dateOfBirthChanged,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements ApplicantFormEvent {
  const factory _NameChanged(final String name) = _$NameChangedImpl;

  String get name;
  @JsonKey(ignore: true)
  _$$NameChangedImplCopyWith<_$NameChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PhoneNumberChangedImplCopyWith<$Res> {
  factory _$$PhoneNumberChangedImplCopyWith(_$PhoneNumberChangedImpl value,
          $Res Function(_$PhoneNumberChangedImpl) then) =
      __$$PhoneNumberChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$PhoneNumberChangedImplCopyWithImpl<$Res>
    extends _$ApplicantFormEventCopyWithImpl<$Res, _$PhoneNumberChangedImpl>
    implements _$$PhoneNumberChangedImplCopyWith<$Res> {
  __$$PhoneNumberChangedImplCopyWithImpl(_$PhoneNumberChangedImpl _value,
      $Res Function(_$PhoneNumberChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$PhoneNumberChangedImpl(
      null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PhoneNumberChangedImpl implements _PhoneNumberChanged {
  const _$PhoneNumberChangedImpl(this.phoneNumber);

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'ApplicantFormEvent.phoneNumberChanged(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhoneNumberChangedImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhoneNumberChangedImplCopyWith<_$PhoneNumberChangedImpl> get copyWith =>
      __$$PhoneNumberChangedImplCopyWithImpl<_$PhoneNumberChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) formStepChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String email) emailChnaged,
    required TResult Function(DateTime date) dateOfBirthChanged,
  }) {
    return phoneNumberChanged(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? formStepChanged,
    TResult? Function(String name)? nameChanged,
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function(String email)? emailChnaged,
    TResult? Function(DateTime date)? dateOfBirthChanged,
  }) {
    return phoneNumberChanged?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? formStepChanged,
    TResult Function(String name)? nameChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String email)? emailChnaged,
    TResult Function(DateTime date)? dateOfBirthChanged,
    required TResult orElse(),
  }) {
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FormStepChanged value) formStepChanged,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_EmailChnaged value) emailChnaged,
    required TResult Function(_DateOfBirthChanged value) dateOfBirthChanged,
  }) {
    return phoneNumberChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FormStepChanged value)? formStepChanged,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(_EmailChnaged value)? emailChnaged,
    TResult? Function(_DateOfBirthChanged value)? dateOfBirthChanged,
  }) {
    return phoneNumberChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FormStepChanged value)? formStepChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_EmailChnaged value)? emailChnaged,
    TResult Function(_DateOfBirthChanged value)? dateOfBirthChanged,
    required TResult orElse(),
  }) {
    if (phoneNumberChanged != null) {
      return phoneNumberChanged(this);
    }
    return orElse();
  }
}

abstract class _PhoneNumberChanged implements ApplicantFormEvent {
  const factory _PhoneNumberChanged(final String phoneNumber) =
      _$PhoneNumberChangedImpl;

  String get phoneNumber;
  @JsonKey(ignore: true)
  _$$PhoneNumberChangedImplCopyWith<_$PhoneNumberChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmailChnagedImplCopyWith<$Res> {
  factory _$$EmailChnagedImplCopyWith(
          _$EmailChnagedImpl value, $Res Function(_$EmailChnagedImpl) then) =
      __$$EmailChnagedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$EmailChnagedImplCopyWithImpl<$Res>
    extends _$ApplicantFormEventCopyWithImpl<$Res, _$EmailChnagedImpl>
    implements _$$EmailChnagedImplCopyWith<$Res> {
  __$$EmailChnagedImplCopyWithImpl(
      _$EmailChnagedImpl _value, $Res Function(_$EmailChnagedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$EmailChnagedImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailChnagedImpl implements _EmailChnaged {
  const _$EmailChnagedImpl(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'ApplicantFormEvent.emailChnaged(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailChnagedImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailChnagedImplCopyWith<_$EmailChnagedImpl> get copyWith =>
      __$$EmailChnagedImplCopyWithImpl<_$EmailChnagedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) formStepChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String email) emailChnaged,
    required TResult Function(DateTime date) dateOfBirthChanged,
  }) {
    return emailChnaged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? formStepChanged,
    TResult? Function(String name)? nameChanged,
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function(String email)? emailChnaged,
    TResult? Function(DateTime date)? dateOfBirthChanged,
  }) {
    return emailChnaged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? formStepChanged,
    TResult Function(String name)? nameChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String email)? emailChnaged,
    TResult Function(DateTime date)? dateOfBirthChanged,
    required TResult orElse(),
  }) {
    if (emailChnaged != null) {
      return emailChnaged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FormStepChanged value) formStepChanged,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_EmailChnaged value) emailChnaged,
    required TResult Function(_DateOfBirthChanged value) dateOfBirthChanged,
  }) {
    return emailChnaged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FormStepChanged value)? formStepChanged,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(_EmailChnaged value)? emailChnaged,
    TResult? Function(_DateOfBirthChanged value)? dateOfBirthChanged,
  }) {
    return emailChnaged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FormStepChanged value)? formStepChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_EmailChnaged value)? emailChnaged,
    TResult Function(_DateOfBirthChanged value)? dateOfBirthChanged,
    required TResult orElse(),
  }) {
    if (emailChnaged != null) {
      return emailChnaged(this);
    }
    return orElse();
  }
}

abstract class _EmailChnaged implements ApplicantFormEvent {
  const factory _EmailChnaged(final String email) = _$EmailChnagedImpl;

  String get email;
  @JsonKey(ignore: true)
  _$$EmailChnagedImplCopyWith<_$EmailChnagedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DateOfBirthChangedImplCopyWith<$Res> {
  factory _$$DateOfBirthChangedImplCopyWith(_$DateOfBirthChangedImpl value,
          $Res Function(_$DateOfBirthChangedImpl) then) =
      __$$DateOfBirthChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class __$$DateOfBirthChangedImplCopyWithImpl<$Res>
    extends _$ApplicantFormEventCopyWithImpl<$Res, _$DateOfBirthChangedImpl>
    implements _$$DateOfBirthChangedImplCopyWith<$Res> {
  __$$DateOfBirthChangedImplCopyWithImpl(_$DateOfBirthChangedImpl _value,
      $Res Function(_$DateOfBirthChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$DateOfBirthChangedImpl(
      null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$DateOfBirthChangedImpl implements _DateOfBirthChanged {
  const _$DateOfBirthChangedImpl(this.date);

  @override
  final DateTime date;

  @override
  String toString() {
    return 'ApplicantFormEvent.dateOfBirthChanged(date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DateOfBirthChangedImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DateOfBirthChangedImplCopyWith<_$DateOfBirthChangedImpl> get copyWith =>
      __$$DateOfBirthChangedImplCopyWithImpl<_$DateOfBirthChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) formStepChanged,
    required TResult Function(String name) nameChanged,
    required TResult Function(String phoneNumber) phoneNumberChanged,
    required TResult Function(String email) emailChnaged,
    required TResult Function(DateTime date) dateOfBirthChanged,
  }) {
    return dateOfBirthChanged(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? formStepChanged,
    TResult? Function(String name)? nameChanged,
    TResult? Function(String phoneNumber)? phoneNumberChanged,
    TResult? Function(String email)? emailChnaged,
    TResult? Function(DateTime date)? dateOfBirthChanged,
  }) {
    return dateOfBirthChanged?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? formStepChanged,
    TResult Function(String name)? nameChanged,
    TResult Function(String phoneNumber)? phoneNumberChanged,
    TResult Function(String email)? emailChnaged,
    TResult Function(DateTime date)? dateOfBirthChanged,
    required TResult orElse(),
  }) {
    if (dateOfBirthChanged != null) {
      return dateOfBirthChanged(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FormStepChanged value) formStepChanged,
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_PhoneNumberChanged value) phoneNumberChanged,
    required TResult Function(_EmailChnaged value) emailChnaged,
    required TResult Function(_DateOfBirthChanged value) dateOfBirthChanged,
  }) {
    return dateOfBirthChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FormStepChanged value)? formStepChanged,
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult? Function(_EmailChnaged value)? emailChnaged,
    TResult? Function(_DateOfBirthChanged value)? dateOfBirthChanged,
  }) {
    return dateOfBirthChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FormStepChanged value)? formStepChanged,
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_PhoneNumberChanged value)? phoneNumberChanged,
    TResult Function(_EmailChnaged value)? emailChnaged,
    TResult Function(_DateOfBirthChanged value)? dateOfBirthChanged,
    required TResult orElse(),
  }) {
    if (dateOfBirthChanged != null) {
      return dateOfBirthChanged(this);
    }
    return orElse();
  }
}

abstract class _DateOfBirthChanged implements ApplicantFormEvent {
  const factory _DateOfBirthChanged(final DateTime date) =
      _$DateOfBirthChangedImpl;

  DateTime get date;
  @JsonKey(ignore: true)
  _$$DateOfBirthChangedImplCopyWith<_$DateOfBirthChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ApplicantFormState {
  int get formStep => throw _privateConstructorUsedError;
  bool get showValidationError => throw _privateConstructorUsedError;
  ApplicantBasicInfoFormData get basicInfo =>
      throw _privateConstructorUsedError;
  Option<Either<ApplicantFailure, Unit>> get failureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ApplicantFormStateCopyWith<ApplicantFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplicantFormStateCopyWith<$Res> {
  factory $ApplicantFormStateCopyWith(
          ApplicantFormState value, $Res Function(ApplicantFormState) then) =
      _$ApplicantFormStateCopyWithImpl<$Res, ApplicantFormState>;
  @useResult
  $Res call(
      {int formStep,
      bool showValidationError,
      ApplicantBasicInfoFormData basicInfo,
      Option<Either<ApplicantFailure, Unit>> failureOrSuccess});

  $ApplicantBasicInfoFormDataCopyWith<$Res> get basicInfo;
}

/// @nodoc
class _$ApplicantFormStateCopyWithImpl<$Res, $Val extends ApplicantFormState>
    implements $ApplicantFormStateCopyWith<$Res> {
  _$ApplicantFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formStep = null,
    Object? showValidationError = null,
    Object? basicInfo = null,
    Object? failureOrSuccess = null,
  }) {
    return _then(_value.copyWith(
      formStep: null == formStep
          ? _value.formStep
          : formStep // ignore: cast_nullable_to_non_nullable
              as int,
      showValidationError: null == showValidationError
          ? _value.showValidationError
          : showValidationError // ignore: cast_nullable_to_non_nullable
              as bool,
      basicInfo: null == basicInfo
          ? _value.basicInfo
          : basicInfo // ignore: cast_nullable_to_non_nullable
              as ApplicantBasicInfoFormData,
      failureOrSuccess: null == failureOrSuccess
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApplicantFailure, Unit>>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ApplicantBasicInfoFormDataCopyWith<$Res> get basicInfo {
    return $ApplicantBasicInfoFormDataCopyWith<$Res>(_value.basicInfo, (value) {
      return _then(_value.copyWith(basicInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ApplicantFormStateImplCopyWith<$Res>
    implements $ApplicantFormStateCopyWith<$Res> {
  factory _$$ApplicantFormStateImplCopyWith(_$ApplicantFormStateImpl value,
          $Res Function(_$ApplicantFormStateImpl) then) =
      __$$ApplicantFormStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int formStep,
      bool showValidationError,
      ApplicantBasicInfoFormData basicInfo,
      Option<Either<ApplicantFailure, Unit>> failureOrSuccess});

  @override
  $ApplicantBasicInfoFormDataCopyWith<$Res> get basicInfo;
}

/// @nodoc
class __$$ApplicantFormStateImplCopyWithImpl<$Res>
    extends _$ApplicantFormStateCopyWithImpl<$Res, _$ApplicantFormStateImpl>
    implements _$$ApplicantFormStateImplCopyWith<$Res> {
  __$$ApplicantFormStateImplCopyWithImpl(_$ApplicantFormStateImpl _value,
      $Res Function(_$ApplicantFormStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formStep = null,
    Object? showValidationError = null,
    Object? basicInfo = null,
    Object? failureOrSuccess = null,
  }) {
    return _then(_$ApplicantFormStateImpl(
      formStep: null == formStep
          ? _value.formStep
          : formStep // ignore: cast_nullable_to_non_nullable
              as int,
      showValidationError: null == showValidationError
          ? _value.showValidationError
          : showValidationError // ignore: cast_nullable_to_non_nullable
              as bool,
      basicInfo: null == basicInfo
          ? _value.basicInfo
          : basicInfo // ignore: cast_nullable_to_non_nullable
              as ApplicantBasicInfoFormData,
      failureOrSuccess: null == failureOrSuccess
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApplicantFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$ApplicantFormStateImpl implements _ApplicantFormState {
  const _$ApplicantFormStateImpl(
      {required this.formStep,
      required this.showValidationError,
      required this.basicInfo,
      required this.failureOrSuccess});

  @override
  final int formStep;
  @override
  final bool showValidationError;
  @override
  final ApplicantBasicInfoFormData basicInfo;
  @override
  final Option<Either<ApplicantFailure, Unit>> failureOrSuccess;

  @override
  String toString() {
    return 'ApplicantFormState(formStep: $formStep, showValidationError: $showValidationError, basicInfo: $basicInfo, failureOrSuccess: $failureOrSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApplicantFormStateImpl &&
            (identical(other.formStep, formStep) ||
                other.formStep == formStep) &&
            (identical(other.showValidationError, showValidationError) ||
                other.showValidationError == showValidationError) &&
            (identical(other.basicInfo, basicInfo) ||
                other.basicInfo == basicInfo) &&
            (identical(other.failureOrSuccess, failureOrSuccess) ||
                other.failureOrSuccess == failureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, formStep, showValidationError, basicInfo, failureOrSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApplicantFormStateImplCopyWith<_$ApplicantFormStateImpl> get copyWith =>
      __$$ApplicantFormStateImplCopyWithImpl<_$ApplicantFormStateImpl>(
          this, _$identity);
}

abstract class _ApplicantFormState implements ApplicantFormState {
  const factory _ApplicantFormState(
      {required final int formStep,
      required final bool showValidationError,
      required final ApplicantBasicInfoFormData basicInfo,
      required final Option<Either<ApplicantFailure, Unit>>
          failureOrSuccess}) = _$ApplicantFormStateImpl;

  @override
  int get formStep;
  @override
  bool get showValidationError;
  @override
  ApplicantBasicInfoFormData get basicInfo;
  @override
  Option<Either<ApplicantFailure, Unit>> get failureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$$ApplicantFormStateImplCopyWith<_$ApplicantFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
