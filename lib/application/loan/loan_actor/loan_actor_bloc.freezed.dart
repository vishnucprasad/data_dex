// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'loan_actor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoanActorEvent {
  UniqueId get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueId id) dropLoan,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UniqueId id)? dropLoan,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueId id)? dropLoan,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DropLoan value) dropLoan,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DropLoan value)? dropLoan,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DropLoan value)? dropLoan,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoanActorEventCopyWith<LoanActorEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoanActorEventCopyWith<$Res> {
  factory $LoanActorEventCopyWith(
          LoanActorEvent value, $Res Function(LoanActorEvent) then) =
      _$LoanActorEventCopyWithImpl<$Res, LoanActorEvent>;
  @useResult
  $Res call({UniqueId id});
}

/// @nodoc
class _$LoanActorEventCopyWithImpl<$Res, $Val extends LoanActorEvent>
    implements $LoanActorEventCopyWith<$Res> {
  _$LoanActorEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DropLoanImplCopyWith<$Res>
    implements $LoanActorEventCopyWith<$Res> {
  factory _$$DropLoanImplCopyWith(
          _$DropLoanImpl value, $Res Function(_$DropLoanImpl) then) =
      __$$DropLoanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UniqueId id});
}

/// @nodoc
class __$$DropLoanImplCopyWithImpl<$Res>
    extends _$LoanActorEventCopyWithImpl<$Res, _$DropLoanImpl>
    implements _$$DropLoanImplCopyWith<$Res> {
  __$$DropLoanImplCopyWithImpl(
      _$DropLoanImpl _value, $Res Function(_$DropLoanImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DropLoanImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ));
  }
}

/// @nodoc

class _$DropLoanImpl implements _DropLoan {
  const _$DropLoanImpl(this.id);

  @override
  final UniqueId id;

  @override
  String toString() {
    return 'LoanActorEvent.dropLoan(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DropLoanImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DropLoanImplCopyWith<_$DropLoanImpl> get copyWith =>
      __$$DropLoanImplCopyWithImpl<_$DropLoanImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueId id) dropLoan,
  }) {
    return dropLoan(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UniqueId id)? dropLoan,
  }) {
    return dropLoan?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueId id)? dropLoan,
    required TResult orElse(),
  }) {
    if (dropLoan != null) {
      return dropLoan(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DropLoan value) dropLoan,
  }) {
    return dropLoan(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DropLoan value)? dropLoan,
  }) {
    return dropLoan?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DropLoan value)? dropLoan,
    required TResult orElse(),
  }) {
    if (dropLoan != null) {
      return dropLoan(this);
    }
    return orElse();
  }
}

abstract class _DropLoan implements LoanActorEvent {
  const factory _DropLoan(final UniqueId id) = _$DropLoanImpl;

  @override
  UniqueId get id;
  @override
  @JsonKey(ignore: true)
  _$$DropLoanImplCopyWith<_$DropLoanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoanActorState {
  bool get isLoading => throw _privateConstructorUsedError;
  Option<Either<LoanFailure, Unit>> get failureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoanActorStateCopyWith<LoanActorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoanActorStateCopyWith<$Res> {
  factory $LoanActorStateCopyWith(
          LoanActorState value, $Res Function(LoanActorState) then) =
      _$LoanActorStateCopyWithImpl<$Res, LoanActorState>;
  @useResult
  $Res call(
      {bool isLoading, Option<Either<LoanFailure, Unit>> failureOrSuccess});
}

/// @nodoc
class _$LoanActorStateCopyWithImpl<$Res, $Val extends LoanActorState>
    implements $LoanActorStateCopyWith<$Res> {
  _$LoanActorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? failureOrSuccess = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccess: null == failureOrSuccess
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<LoanFailure, Unit>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoanActorStateImplCopyWith<$Res>
    implements $LoanActorStateCopyWith<$Res> {
  factory _$$LoanActorStateImplCopyWith(_$LoanActorStateImpl value,
          $Res Function(_$LoanActorStateImpl) then) =
      __$$LoanActorStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading, Option<Either<LoanFailure, Unit>> failureOrSuccess});
}

/// @nodoc
class __$$LoanActorStateImplCopyWithImpl<$Res>
    extends _$LoanActorStateCopyWithImpl<$Res, _$LoanActorStateImpl>
    implements _$$LoanActorStateImplCopyWith<$Res> {
  __$$LoanActorStateImplCopyWithImpl(
      _$LoanActorStateImpl _value, $Res Function(_$LoanActorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? failureOrSuccess = null,
  }) {
    return _then(_$LoanActorStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccess: null == failureOrSuccess
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<LoanFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$LoanActorStateImpl implements _LoanActorState {
  const _$LoanActorStateImpl(
      {required this.isLoading, required this.failureOrSuccess});

  @override
  final bool isLoading;
  @override
  final Option<Either<LoanFailure, Unit>> failureOrSuccess;

  @override
  String toString() {
    return 'LoanActorState(isLoading: $isLoading, failureOrSuccess: $failureOrSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoanActorStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.failureOrSuccess, failureOrSuccess) ||
                other.failureOrSuccess == failureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, failureOrSuccess);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoanActorStateImplCopyWith<_$LoanActorStateImpl> get copyWith =>
      __$$LoanActorStateImplCopyWithImpl<_$LoanActorStateImpl>(
          this, _$identity);
}

abstract class _LoanActorState implements LoanActorState {
  const factory _LoanActorState(
          {required final bool isLoading,
          required final Option<Either<LoanFailure, Unit>> failureOrSuccess}) =
      _$LoanActorStateImpl;

  @override
  bool get isLoading;
  @override
  Option<Either<LoanFailure, Unit>> get failureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$$LoanActorStateImplCopyWith<_$LoanActorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
