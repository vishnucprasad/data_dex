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
  int get index => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) formStepChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? formStepChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? formStepChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FormStepChanged value) formStepChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FormStepChanged value)? formStepChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FormStepChanged value)? formStepChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ApplicantFormEventCopyWith<ApplicantFormEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplicantFormEventCopyWith<$Res> {
  factory $ApplicantFormEventCopyWith(
          ApplicantFormEvent value, $Res Function(ApplicantFormEvent) then) =
      _$ApplicantFormEventCopyWithImpl<$Res, ApplicantFormEvent>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class _$ApplicantFormEventCopyWithImpl<$Res, $Val extends ApplicantFormEvent>
    implements $ApplicantFormEventCopyWith<$Res> {
  _$ApplicantFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FormStepChangedImplCopyWith<$Res>
    implements $ApplicantFormEventCopyWith<$Res> {
  factory _$$FormStepChangedImplCopyWith(_$FormStepChangedImpl value,
          $Res Function(_$FormStepChangedImpl) then) =
      __$$FormStepChangedImplCopyWithImpl<$Res>;
  @override
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
  }) {
    return formStepChanged(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? formStepChanged,
  }) {
    return formStepChanged?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? formStepChanged,
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
  }) {
    return formStepChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FormStepChanged value)? formStepChanged,
  }) {
    return formStepChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FormStepChanged value)? formStepChanged,
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

  @override
  int get index;
  @override
  @JsonKey(ignore: true)
  _$$FormStepChangedImplCopyWith<_$FormStepChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ApplicantFormState {
  int get formStep => throw _privateConstructorUsedError;

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
  $Res call({int formStep});
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
  }) {
    return _then(_value.copyWith(
      formStep: null == formStep
          ? _value.formStep
          : formStep // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
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
  $Res call({int formStep});
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
  }) {
    return _then(_$ApplicantFormStateImpl(
      formStep: null == formStep
          ? _value.formStep
          : formStep // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ApplicantFormStateImpl implements _ApplicantFormState {
  const _$ApplicantFormStateImpl({required this.formStep});

  @override
  final int formStep;

  @override
  String toString() {
    return 'ApplicantFormState(formStep: $formStep)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApplicantFormStateImpl &&
            (identical(other.formStep, formStep) ||
                other.formStep == formStep));
  }

  @override
  int get hashCode => Object.hash(runtimeType, formStep);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApplicantFormStateImplCopyWith<_$ApplicantFormStateImpl> get copyWith =>
      __$$ApplicantFormStateImplCopyWithImpl<_$ApplicantFormStateImpl>(
          this, _$identity);
}

abstract class _ApplicantFormState implements ApplicantFormState {
  const factory _ApplicantFormState({required final int formStep}) =
      _$ApplicantFormStateImpl;

  @override
  int get formStep;
  @override
  @JsonKey(ignore: true)
  _$$ApplicantFormStateImplCopyWith<_$ApplicantFormStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
