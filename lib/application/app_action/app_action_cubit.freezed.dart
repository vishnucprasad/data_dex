// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_action_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppActionState {
  int get bottomNavIndex => throw _privateConstructorUsedError;
  Option<Either<CommonFailure, Unit>> get failureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppActionStateCopyWith<AppActionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppActionStateCopyWith<$Res> {
  factory $AppActionStateCopyWith(
          AppActionState value, $Res Function(AppActionState) then) =
      _$AppActionStateCopyWithImpl<$Res, AppActionState>;
  @useResult
  $Res call(
      {int bottomNavIndex,
      Option<Either<CommonFailure, Unit>> failureOrSuccess});
}

/// @nodoc
class _$AppActionStateCopyWithImpl<$Res, $Val extends AppActionState>
    implements $AppActionStateCopyWith<$Res> {
  _$AppActionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bottomNavIndex = null,
    Object? failureOrSuccess = null,
  }) {
    return _then(_value.copyWith(
      bottomNavIndex: null == bottomNavIndex
          ? _value.bottomNavIndex
          : bottomNavIndex // ignore: cast_nullable_to_non_nullable
              as int,
      failureOrSuccess: null == failureOrSuccess
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<CommonFailure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppActionStateImplCopyWith<$Res>
    implements $AppActionStateCopyWith<$Res> {
  factory _$$AppActionStateImplCopyWith(_$AppActionStateImpl value,
          $Res Function(_$AppActionStateImpl) then) =
      __$$AppActionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int bottomNavIndex,
      Option<Either<CommonFailure, Unit>> failureOrSuccess});
}

/// @nodoc
class __$$AppActionStateImplCopyWithImpl<$Res>
    extends _$AppActionStateCopyWithImpl<$Res, _$AppActionStateImpl>
    implements _$$AppActionStateImplCopyWith<$Res> {
  __$$AppActionStateImplCopyWithImpl(
      _$AppActionStateImpl _value, $Res Function(_$AppActionStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bottomNavIndex = null,
    Object? failureOrSuccess = null,
  }) {
    return _then(_$AppActionStateImpl(
      bottomNavIndex: null == bottomNavIndex
          ? _value.bottomNavIndex
          : bottomNavIndex // ignore: cast_nullable_to_non_nullable
              as int,
      failureOrSuccess: null == failureOrSuccess
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<CommonFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$AppActionStateImpl implements _AppActionState {
  const _$AppActionStateImpl(
      {required this.bottomNavIndex, required this.failureOrSuccess});

  @override
  final int bottomNavIndex;
  @override
  final Option<Either<CommonFailure, Unit>> failureOrSuccess;

  @override
  String toString() {
    return 'AppActionState(bottomNavIndex: $bottomNavIndex, failureOrSuccess: $failureOrSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppActionStateImpl &&
            (identical(other.bottomNavIndex, bottomNavIndex) ||
                other.bottomNavIndex == bottomNavIndex) &&
            (identical(other.failureOrSuccess, failureOrSuccess) ||
                other.failureOrSuccess == failureOrSuccess));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, bottomNavIndex, failureOrSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppActionStateImplCopyWith<_$AppActionStateImpl> get copyWith =>
      __$$AppActionStateImplCopyWithImpl<_$AppActionStateImpl>(
          this, _$identity);
}

abstract class _AppActionState implements AppActionState {
  const factory _AppActionState(
      {required final int bottomNavIndex,
      required final Option<Either<CommonFailure, Unit>>
          failureOrSuccess}) = _$AppActionStateImpl;

  @override
  int get bottomNavIndex;
  @override
  Option<Either<CommonFailure, Unit>> get failureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$$AppActionStateImplCopyWith<_$AppActionStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
