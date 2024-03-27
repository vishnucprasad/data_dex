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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueId id) dropLoan,
    required TResult Function(UniqueId id, DateTime date) disburse,
    required TResult Function(UniqueId id) restore,
    required TResult Function(UniqueId id) deleteLoan,
    required TResult Function(List<Loan> loans) findFollowUps,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UniqueId id)? dropLoan,
    TResult? Function(UniqueId id, DateTime date)? disburse,
    TResult? Function(UniqueId id)? restore,
    TResult? Function(UniqueId id)? deleteLoan,
    TResult? Function(List<Loan> loans)? findFollowUps,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueId id)? dropLoan,
    TResult Function(UniqueId id, DateTime date)? disburse,
    TResult Function(UniqueId id)? restore,
    TResult Function(UniqueId id)? deleteLoan,
    TResult Function(List<Loan> loans)? findFollowUps,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DropLoan value) dropLoan,
    required TResult Function(_DisburseLoan value) disburse,
    required TResult Function(_RestoreDropped value) restore,
    required TResult Function(_DeleteLoan value) deleteLoan,
    required TResult Function(_findFollowUps value) findFollowUps,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DropLoan value)? dropLoan,
    TResult? Function(_DisburseLoan value)? disburse,
    TResult? Function(_RestoreDropped value)? restore,
    TResult? Function(_DeleteLoan value)? deleteLoan,
    TResult? Function(_findFollowUps value)? findFollowUps,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DropLoan value)? dropLoan,
    TResult Function(_DisburseLoan value)? disburse,
    TResult Function(_RestoreDropped value)? restore,
    TResult Function(_DeleteLoan value)? deleteLoan,
    TResult Function(_findFollowUps value)? findFollowUps,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoanActorEventCopyWith<$Res> {
  factory $LoanActorEventCopyWith(
          LoanActorEvent value, $Res Function(LoanActorEvent) then) =
      _$LoanActorEventCopyWithImpl<$Res, LoanActorEvent>;
}

/// @nodoc
class _$LoanActorEventCopyWithImpl<$Res, $Val extends LoanActorEvent>
    implements $LoanActorEventCopyWith<$Res> {
  _$LoanActorEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DropLoanImplCopyWith<$Res> {
  factory _$$DropLoanImplCopyWith(
          _$DropLoanImpl value, $Res Function(_$DropLoanImpl) then) =
      __$$DropLoanImplCopyWithImpl<$Res>;
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
    required TResult Function(UniqueId id, DateTime date) disburse,
    required TResult Function(UniqueId id) restore,
    required TResult Function(UniqueId id) deleteLoan,
    required TResult Function(List<Loan> loans) findFollowUps,
  }) {
    return dropLoan(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UniqueId id)? dropLoan,
    TResult? Function(UniqueId id, DateTime date)? disburse,
    TResult? Function(UniqueId id)? restore,
    TResult? Function(UniqueId id)? deleteLoan,
    TResult? Function(List<Loan> loans)? findFollowUps,
  }) {
    return dropLoan?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueId id)? dropLoan,
    TResult Function(UniqueId id, DateTime date)? disburse,
    TResult Function(UniqueId id)? restore,
    TResult Function(UniqueId id)? deleteLoan,
    TResult Function(List<Loan> loans)? findFollowUps,
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
    required TResult Function(_DisburseLoan value) disburse,
    required TResult Function(_RestoreDropped value) restore,
    required TResult Function(_DeleteLoan value) deleteLoan,
    required TResult Function(_findFollowUps value) findFollowUps,
  }) {
    return dropLoan(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DropLoan value)? dropLoan,
    TResult? Function(_DisburseLoan value)? disburse,
    TResult? Function(_RestoreDropped value)? restore,
    TResult? Function(_DeleteLoan value)? deleteLoan,
    TResult? Function(_findFollowUps value)? findFollowUps,
  }) {
    return dropLoan?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DropLoan value)? dropLoan,
    TResult Function(_DisburseLoan value)? disburse,
    TResult Function(_RestoreDropped value)? restore,
    TResult Function(_DeleteLoan value)? deleteLoan,
    TResult Function(_findFollowUps value)? findFollowUps,
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

  UniqueId get id;
  @JsonKey(ignore: true)
  _$$DropLoanImplCopyWith<_$DropLoanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DisburseLoanImplCopyWith<$Res> {
  factory _$$DisburseLoanImplCopyWith(
          _$DisburseLoanImpl value, $Res Function(_$DisburseLoanImpl) then) =
      __$$DisburseLoanImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UniqueId id, DateTime date});
}

/// @nodoc
class __$$DisburseLoanImplCopyWithImpl<$Res>
    extends _$LoanActorEventCopyWithImpl<$Res, _$DisburseLoanImpl>
    implements _$$DisburseLoanImplCopyWith<$Res> {
  __$$DisburseLoanImplCopyWithImpl(
      _$DisburseLoanImpl _value, $Res Function(_$DisburseLoanImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
  }) {
    return _then(_$DisburseLoanImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$DisburseLoanImpl implements _DisburseLoan {
  const _$DisburseLoanImpl(this.id, this.date);

  @override
  final UniqueId id;
  @override
  final DateTime date;

  @override
  String toString() {
    return 'LoanActorEvent.disburse(id: $id, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisburseLoanImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DisburseLoanImplCopyWith<_$DisburseLoanImpl> get copyWith =>
      __$$DisburseLoanImplCopyWithImpl<_$DisburseLoanImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueId id) dropLoan,
    required TResult Function(UniqueId id, DateTime date) disburse,
    required TResult Function(UniqueId id) restore,
    required TResult Function(UniqueId id) deleteLoan,
    required TResult Function(List<Loan> loans) findFollowUps,
  }) {
    return disburse(id, date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UniqueId id)? dropLoan,
    TResult? Function(UniqueId id, DateTime date)? disburse,
    TResult? Function(UniqueId id)? restore,
    TResult? Function(UniqueId id)? deleteLoan,
    TResult? Function(List<Loan> loans)? findFollowUps,
  }) {
    return disburse?.call(id, date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueId id)? dropLoan,
    TResult Function(UniqueId id, DateTime date)? disburse,
    TResult Function(UniqueId id)? restore,
    TResult Function(UniqueId id)? deleteLoan,
    TResult Function(List<Loan> loans)? findFollowUps,
    required TResult orElse(),
  }) {
    if (disburse != null) {
      return disburse(id, date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DropLoan value) dropLoan,
    required TResult Function(_DisburseLoan value) disburse,
    required TResult Function(_RestoreDropped value) restore,
    required TResult Function(_DeleteLoan value) deleteLoan,
    required TResult Function(_findFollowUps value) findFollowUps,
  }) {
    return disburse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DropLoan value)? dropLoan,
    TResult? Function(_DisburseLoan value)? disburse,
    TResult? Function(_RestoreDropped value)? restore,
    TResult? Function(_DeleteLoan value)? deleteLoan,
    TResult? Function(_findFollowUps value)? findFollowUps,
  }) {
    return disburse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DropLoan value)? dropLoan,
    TResult Function(_DisburseLoan value)? disburse,
    TResult Function(_RestoreDropped value)? restore,
    TResult Function(_DeleteLoan value)? deleteLoan,
    TResult Function(_findFollowUps value)? findFollowUps,
    required TResult orElse(),
  }) {
    if (disburse != null) {
      return disburse(this);
    }
    return orElse();
  }
}

abstract class _DisburseLoan implements LoanActorEvent {
  const factory _DisburseLoan(final UniqueId id, final DateTime date) =
      _$DisburseLoanImpl;

  UniqueId get id;
  DateTime get date;
  @JsonKey(ignore: true)
  _$$DisburseLoanImplCopyWith<_$DisburseLoanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RestoreDroppedImplCopyWith<$Res> {
  factory _$$RestoreDroppedImplCopyWith(_$RestoreDroppedImpl value,
          $Res Function(_$RestoreDroppedImpl) then) =
      __$$RestoreDroppedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UniqueId id});
}

/// @nodoc
class __$$RestoreDroppedImplCopyWithImpl<$Res>
    extends _$LoanActorEventCopyWithImpl<$Res, _$RestoreDroppedImpl>
    implements _$$RestoreDroppedImplCopyWith<$Res> {
  __$$RestoreDroppedImplCopyWithImpl(
      _$RestoreDroppedImpl _value, $Res Function(_$RestoreDroppedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$RestoreDroppedImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ));
  }
}

/// @nodoc

class _$RestoreDroppedImpl implements _RestoreDropped {
  const _$RestoreDroppedImpl(this.id);

  @override
  final UniqueId id;

  @override
  String toString() {
    return 'LoanActorEvent.restore(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RestoreDroppedImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RestoreDroppedImplCopyWith<_$RestoreDroppedImpl> get copyWith =>
      __$$RestoreDroppedImplCopyWithImpl<_$RestoreDroppedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueId id) dropLoan,
    required TResult Function(UniqueId id, DateTime date) disburse,
    required TResult Function(UniqueId id) restore,
    required TResult Function(UniqueId id) deleteLoan,
    required TResult Function(List<Loan> loans) findFollowUps,
  }) {
    return restore(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UniqueId id)? dropLoan,
    TResult? Function(UniqueId id, DateTime date)? disburse,
    TResult? Function(UniqueId id)? restore,
    TResult? Function(UniqueId id)? deleteLoan,
    TResult? Function(List<Loan> loans)? findFollowUps,
  }) {
    return restore?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueId id)? dropLoan,
    TResult Function(UniqueId id, DateTime date)? disburse,
    TResult Function(UniqueId id)? restore,
    TResult Function(UniqueId id)? deleteLoan,
    TResult Function(List<Loan> loans)? findFollowUps,
    required TResult orElse(),
  }) {
    if (restore != null) {
      return restore(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DropLoan value) dropLoan,
    required TResult Function(_DisburseLoan value) disburse,
    required TResult Function(_RestoreDropped value) restore,
    required TResult Function(_DeleteLoan value) deleteLoan,
    required TResult Function(_findFollowUps value) findFollowUps,
  }) {
    return restore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DropLoan value)? dropLoan,
    TResult? Function(_DisburseLoan value)? disburse,
    TResult? Function(_RestoreDropped value)? restore,
    TResult? Function(_DeleteLoan value)? deleteLoan,
    TResult? Function(_findFollowUps value)? findFollowUps,
  }) {
    return restore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DropLoan value)? dropLoan,
    TResult Function(_DisburseLoan value)? disburse,
    TResult Function(_RestoreDropped value)? restore,
    TResult Function(_DeleteLoan value)? deleteLoan,
    TResult Function(_findFollowUps value)? findFollowUps,
    required TResult orElse(),
  }) {
    if (restore != null) {
      return restore(this);
    }
    return orElse();
  }
}

abstract class _RestoreDropped implements LoanActorEvent {
  const factory _RestoreDropped(final UniqueId id) = _$RestoreDroppedImpl;

  UniqueId get id;
  @JsonKey(ignore: true)
  _$$RestoreDroppedImplCopyWith<_$RestoreDroppedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteLoanImplCopyWith<$Res> {
  factory _$$DeleteLoanImplCopyWith(
          _$DeleteLoanImpl value, $Res Function(_$DeleteLoanImpl) then) =
      __$$DeleteLoanImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UniqueId id});
}

/// @nodoc
class __$$DeleteLoanImplCopyWithImpl<$Res>
    extends _$LoanActorEventCopyWithImpl<$Res, _$DeleteLoanImpl>
    implements _$$DeleteLoanImplCopyWith<$Res> {
  __$$DeleteLoanImplCopyWithImpl(
      _$DeleteLoanImpl _value, $Res Function(_$DeleteLoanImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteLoanImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ));
  }
}

/// @nodoc

class _$DeleteLoanImpl implements _DeleteLoan {
  const _$DeleteLoanImpl(this.id);

  @override
  final UniqueId id;

  @override
  String toString() {
    return 'LoanActorEvent.deleteLoan(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteLoanImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteLoanImplCopyWith<_$DeleteLoanImpl> get copyWith =>
      __$$DeleteLoanImplCopyWithImpl<_$DeleteLoanImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueId id) dropLoan,
    required TResult Function(UniqueId id, DateTime date) disburse,
    required TResult Function(UniqueId id) restore,
    required TResult Function(UniqueId id) deleteLoan,
    required TResult Function(List<Loan> loans) findFollowUps,
  }) {
    return deleteLoan(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UniqueId id)? dropLoan,
    TResult? Function(UniqueId id, DateTime date)? disburse,
    TResult? Function(UniqueId id)? restore,
    TResult? Function(UniqueId id)? deleteLoan,
    TResult? Function(List<Loan> loans)? findFollowUps,
  }) {
    return deleteLoan?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueId id)? dropLoan,
    TResult Function(UniqueId id, DateTime date)? disburse,
    TResult Function(UniqueId id)? restore,
    TResult Function(UniqueId id)? deleteLoan,
    TResult Function(List<Loan> loans)? findFollowUps,
    required TResult orElse(),
  }) {
    if (deleteLoan != null) {
      return deleteLoan(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DropLoan value) dropLoan,
    required TResult Function(_DisburseLoan value) disburse,
    required TResult Function(_RestoreDropped value) restore,
    required TResult Function(_DeleteLoan value) deleteLoan,
    required TResult Function(_findFollowUps value) findFollowUps,
  }) {
    return deleteLoan(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DropLoan value)? dropLoan,
    TResult? Function(_DisburseLoan value)? disburse,
    TResult? Function(_RestoreDropped value)? restore,
    TResult? Function(_DeleteLoan value)? deleteLoan,
    TResult? Function(_findFollowUps value)? findFollowUps,
  }) {
    return deleteLoan?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DropLoan value)? dropLoan,
    TResult Function(_DisburseLoan value)? disburse,
    TResult Function(_RestoreDropped value)? restore,
    TResult Function(_DeleteLoan value)? deleteLoan,
    TResult Function(_findFollowUps value)? findFollowUps,
    required TResult orElse(),
  }) {
    if (deleteLoan != null) {
      return deleteLoan(this);
    }
    return orElse();
  }
}

abstract class _DeleteLoan implements LoanActorEvent {
  const factory _DeleteLoan(final UniqueId id) = _$DeleteLoanImpl;

  UniqueId get id;
  @JsonKey(ignore: true)
  _$$DeleteLoanImplCopyWith<_$DeleteLoanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$findFollowUpsImplCopyWith<$Res> {
  factory _$$findFollowUpsImplCopyWith(
          _$findFollowUpsImpl value, $Res Function(_$findFollowUpsImpl) then) =
      __$$findFollowUpsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Loan> loans});
}

/// @nodoc
class __$$findFollowUpsImplCopyWithImpl<$Res>
    extends _$LoanActorEventCopyWithImpl<$Res, _$findFollowUpsImpl>
    implements _$$findFollowUpsImplCopyWith<$Res> {
  __$$findFollowUpsImplCopyWithImpl(
      _$findFollowUpsImpl _value, $Res Function(_$findFollowUpsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loans = null,
  }) {
    return _then(_$findFollowUpsImpl(
      null == loans
          ? _value._loans
          : loans // ignore: cast_nullable_to_non_nullable
              as List<Loan>,
    ));
  }
}

/// @nodoc

class _$findFollowUpsImpl implements _findFollowUps {
  const _$findFollowUpsImpl(final List<Loan> loans) : _loans = loans;

  final List<Loan> _loans;
  @override
  List<Loan> get loans {
    if (_loans is EqualUnmodifiableListView) return _loans;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_loans);
  }

  @override
  String toString() {
    return 'LoanActorEvent.findFollowUps(loans: $loans)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$findFollowUpsImpl &&
            const DeepCollectionEquality().equals(other._loans, _loans));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_loans));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$findFollowUpsImplCopyWith<_$findFollowUpsImpl> get copyWith =>
      __$$findFollowUpsImplCopyWithImpl<_$findFollowUpsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UniqueId id) dropLoan,
    required TResult Function(UniqueId id, DateTime date) disburse,
    required TResult Function(UniqueId id) restore,
    required TResult Function(UniqueId id) deleteLoan,
    required TResult Function(List<Loan> loans) findFollowUps,
  }) {
    return findFollowUps(loans);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UniqueId id)? dropLoan,
    TResult? Function(UniqueId id, DateTime date)? disburse,
    TResult? Function(UniqueId id)? restore,
    TResult? Function(UniqueId id)? deleteLoan,
    TResult? Function(List<Loan> loans)? findFollowUps,
  }) {
    return findFollowUps?.call(loans);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UniqueId id)? dropLoan,
    TResult Function(UniqueId id, DateTime date)? disburse,
    TResult Function(UniqueId id)? restore,
    TResult Function(UniqueId id)? deleteLoan,
    TResult Function(List<Loan> loans)? findFollowUps,
    required TResult orElse(),
  }) {
    if (findFollowUps != null) {
      return findFollowUps(loans);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DropLoan value) dropLoan,
    required TResult Function(_DisburseLoan value) disburse,
    required TResult Function(_RestoreDropped value) restore,
    required TResult Function(_DeleteLoan value) deleteLoan,
    required TResult Function(_findFollowUps value) findFollowUps,
  }) {
    return findFollowUps(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DropLoan value)? dropLoan,
    TResult? Function(_DisburseLoan value)? disburse,
    TResult? Function(_RestoreDropped value)? restore,
    TResult? Function(_DeleteLoan value)? deleteLoan,
    TResult? Function(_findFollowUps value)? findFollowUps,
  }) {
    return findFollowUps?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DropLoan value)? dropLoan,
    TResult Function(_DisburseLoan value)? disburse,
    TResult Function(_RestoreDropped value)? restore,
    TResult Function(_DeleteLoan value)? deleteLoan,
    TResult Function(_findFollowUps value)? findFollowUps,
    required TResult orElse(),
  }) {
    if (findFollowUps != null) {
      return findFollowUps(this);
    }
    return orElse();
  }
}

abstract class _findFollowUps implements LoanActorEvent {
  const factory _findFollowUps(final List<Loan> loans) = _$findFollowUpsImpl;

  List<Loan> get loans;
  @JsonKey(ignore: true)
  _$$findFollowUpsImplCopyWith<_$findFollowUpsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoanActorState {
  bool get isLoading => throw _privateConstructorUsedError;
  KtList<Loan> get followUps => throw _privateConstructorUsedError;
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
      {bool isLoading,
      KtList<Loan> followUps,
      Option<Either<LoanFailure, Unit>> failureOrSuccess});
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
    Object? followUps = null,
    Object? failureOrSuccess = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      followUps: null == followUps
          ? _value.followUps
          : followUps // ignore: cast_nullable_to_non_nullable
              as KtList<Loan>,
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
      {bool isLoading,
      KtList<Loan> followUps,
      Option<Either<LoanFailure, Unit>> failureOrSuccess});
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
    Object? followUps = null,
    Object? failureOrSuccess = null,
  }) {
    return _then(_$LoanActorStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      followUps: null == followUps
          ? _value.followUps
          : followUps // ignore: cast_nullable_to_non_nullable
              as KtList<Loan>,
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
      {required this.isLoading,
      required this.followUps,
      required this.failureOrSuccess});

  @override
  final bool isLoading;
  @override
  final KtList<Loan> followUps;
  @override
  final Option<Either<LoanFailure, Unit>> failureOrSuccess;

  @override
  String toString() {
    return 'LoanActorState(isLoading: $isLoading, followUps: $followUps, failureOrSuccess: $failureOrSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoanActorStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.followUps, followUps) ||
                other.followUps == followUps) &&
            (identical(other.failureOrSuccess, failureOrSuccess) ||
                other.failureOrSuccess == failureOrSuccess));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, followUps, failureOrSuccess);

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
          required final KtList<Loan> followUps,
          required final Option<Either<LoanFailure, Unit>> failureOrSuccess}) =
      _$LoanActorStateImpl;

  @override
  bool get isLoading;
  @override
  KtList<Loan> get followUps;
  @override
  Option<Either<LoanFailure, Unit>> get failureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$$LoanActorStateImplCopyWith<_$LoanActorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
