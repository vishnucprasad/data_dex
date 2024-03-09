// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'emi_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EMIDetails {
  RequiredPrice get emiAmount => throw _privateConstructorUsedError;
  Tenure get tenure => throw _privateConstructorUsedError;
  EMIDate get firstEMIDate => throw _privateConstructorUsedError;
  Name get bankName => throw _privateConstructorUsedError;
  RepaymentMode get repaymentMode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EMIDetailsCopyWith<EMIDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EMIDetailsCopyWith<$Res> {
  factory $EMIDetailsCopyWith(
          EMIDetails value, $Res Function(EMIDetails) then) =
      _$EMIDetailsCopyWithImpl<$Res, EMIDetails>;
  @useResult
  $Res call(
      {RequiredPrice emiAmount,
      Tenure tenure,
      EMIDate firstEMIDate,
      Name bankName,
      RepaymentMode repaymentMode});
}

/// @nodoc
class _$EMIDetailsCopyWithImpl<$Res, $Val extends EMIDetails>
    implements $EMIDetailsCopyWith<$Res> {
  _$EMIDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emiAmount = null,
    Object? tenure = null,
    Object? firstEMIDate = null,
    Object? bankName = null,
    Object? repaymentMode = null,
  }) {
    return _then(_value.copyWith(
      emiAmount: null == emiAmount
          ? _value.emiAmount
          : emiAmount // ignore: cast_nullable_to_non_nullable
              as RequiredPrice,
      tenure: null == tenure
          ? _value.tenure
          : tenure // ignore: cast_nullable_to_non_nullable
              as Tenure,
      firstEMIDate: null == firstEMIDate
          ? _value.firstEMIDate
          : firstEMIDate // ignore: cast_nullable_to_non_nullable
              as EMIDate,
      bankName: null == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as Name,
      repaymentMode: null == repaymentMode
          ? _value.repaymentMode
          : repaymentMode // ignore: cast_nullable_to_non_nullable
              as RepaymentMode,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EMIDetailsImplCopyWith<$Res>
    implements $EMIDetailsCopyWith<$Res> {
  factory _$$EMIDetailsImplCopyWith(
          _$EMIDetailsImpl value, $Res Function(_$EMIDetailsImpl) then) =
      __$$EMIDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RequiredPrice emiAmount,
      Tenure tenure,
      EMIDate firstEMIDate,
      Name bankName,
      RepaymentMode repaymentMode});
}

/// @nodoc
class __$$EMIDetailsImplCopyWithImpl<$Res>
    extends _$EMIDetailsCopyWithImpl<$Res, _$EMIDetailsImpl>
    implements _$$EMIDetailsImplCopyWith<$Res> {
  __$$EMIDetailsImplCopyWithImpl(
      _$EMIDetailsImpl _value, $Res Function(_$EMIDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emiAmount = null,
    Object? tenure = null,
    Object? firstEMIDate = null,
    Object? bankName = null,
    Object? repaymentMode = null,
  }) {
    return _then(_$EMIDetailsImpl(
      emiAmount: null == emiAmount
          ? _value.emiAmount
          : emiAmount // ignore: cast_nullable_to_non_nullable
              as RequiredPrice,
      tenure: null == tenure
          ? _value.tenure
          : tenure // ignore: cast_nullable_to_non_nullable
              as Tenure,
      firstEMIDate: null == firstEMIDate
          ? _value.firstEMIDate
          : firstEMIDate // ignore: cast_nullable_to_non_nullable
              as EMIDate,
      bankName: null == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as Name,
      repaymentMode: null == repaymentMode
          ? _value.repaymentMode
          : repaymentMode // ignore: cast_nullable_to_non_nullable
              as RepaymentMode,
    ));
  }
}

/// @nodoc

class _$EMIDetailsImpl extends _EMIDetails {
  const _$EMIDetailsImpl(
      {required this.emiAmount,
      required this.tenure,
      required this.firstEMIDate,
      required this.bankName,
      required this.repaymentMode})
      : super._();

  @override
  final RequiredPrice emiAmount;
  @override
  final Tenure tenure;
  @override
  final EMIDate firstEMIDate;
  @override
  final Name bankName;
  @override
  final RepaymentMode repaymentMode;

  @override
  String toString() {
    return 'EMIDetails(emiAmount: $emiAmount, tenure: $tenure, firstEMIDate: $firstEMIDate, bankName: $bankName, repaymentMode: $repaymentMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EMIDetailsImpl &&
            (identical(other.emiAmount, emiAmount) ||
                other.emiAmount == emiAmount) &&
            (identical(other.tenure, tenure) || other.tenure == tenure) &&
            (identical(other.firstEMIDate, firstEMIDate) ||
                other.firstEMIDate == firstEMIDate) &&
            (identical(other.bankName, bankName) ||
                other.bankName == bankName) &&
            (identical(other.repaymentMode, repaymentMode) ||
                other.repaymentMode == repaymentMode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, emiAmount, tenure, firstEMIDate, bankName, repaymentMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EMIDetailsImplCopyWith<_$EMIDetailsImpl> get copyWith =>
      __$$EMIDetailsImplCopyWithImpl<_$EMIDetailsImpl>(this, _$identity);
}

abstract class _EMIDetails extends EMIDetails {
  const factory _EMIDetails(
      {required final RequiredPrice emiAmount,
      required final Tenure tenure,
      required final EMIDate firstEMIDate,
      required final Name bankName,
      required final RepaymentMode repaymentMode}) = _$EMIDetailsImpl;
  const _EMIDetails._() : super._();

  @override
  RequiredPrice get emiAmount;
  @override
  Tenure get tenure;
  @override
  EMIDate get firstEMIDate;
  @override
  Name get bankName;
  @override
  RepaymentMode get repaymentMode;
  @override
  @JsonKey(ignore: true)
  _$$EMIDetailsImplCopyWith<_$EMIDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
