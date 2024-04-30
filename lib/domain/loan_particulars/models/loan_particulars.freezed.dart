// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'loan_particulars.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoanParticulars {
  VehicleDetails get vehicleDetails => throw _privateConstructorUsedError;
  LoanDetails get loanDetails => throw _privateConstructorUsedError;
  EMIDetails get emiDetails => throw _privateConstructorUsedError;
  double? get fundedLoanAmount => throw _privateConstructorUsedError;
  double? get ddAmount => throw _privateConstructorUsedError;
  double? get downPayment => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoanParticularsCopyWith<LoanParticulars> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoanParticularsCopyWith<$Res> {
  factory $LoanParticularsCopyWith(
          LoanParticulars value, $Res Function(LoanParticulars) then) =
      _$LoanParticularsCopyWithImpl<$Res, LoanParticulars>;
  @useResult
  $Res call(
      {VehicleDetails vehicleDetails,
      LoanDetails loanDetails,
      EMIDetails emiDetails,
      double? fundedLoanAmount,
      double? ddAmount,
      double? downPayment});

  $VehicleDetailsCopyWith<$Res> get vehicleDetails;
  $LoanDetailsCopyWith<$Res> get loanDetails;
  $EMIDetailsCopyWith<$Res> get emiDetails;
}

/// @nodoc
class _$LoanParticularsCopyWithImpl<$Res, $Val extends LoanParticulars>
    implements $LoanParticularsCopyWith<$Res> {
  _$LoanParticularsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vehicleDetails = null,
    Object? loanDetails = null,
    Object? emiDetails = null,
    Object? fundedLoanAmount = freezed,
    Object? ddAmount = freezed,
    Object? downPayment = freezed,
  }) {
    return _then(_value.copyWith(
      vehicleDetails: null == vehicleDetails
          ? _value.vehicleDetails
          : vehicleDetails // ignore: cast_nullable_to_non_nullable
              as VehicleDetails,
      loanDetails: null == loanDetails
          ? _value.loanDetails
          : loanDetails // ignore: cast_nullable_to_non_nullable
              as LoanDetails,
      emiDetails: null == emiDetails
          ? _value.emiDetails
          : emiDetails // ignore: cast_nullable_to_non_nullable
              as EMIDetails,
      fundedLoanAmount: freezed == fundedLoanAmount
          ? _value.fundedLoanAmount
          : fundedLoanAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      ddAmount: freezed == ddAmount
          ? _value.ddAmount
          : ddAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      downPayment: freezed == downPayment
          ? _value.downPayment
          : downPayment // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VehicleDetailsCopyWith<$Res> get vehicleDetails {
    return $VehicleDetailsCopyWith<$Res>(_value.vehicleDetails, (value) {
      return _then(_value.copyWith(vehicleDetails: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LoanDetailsCopyWith<$Res> get loanDetails {
    return $LoanDetailsCopyWith<$Res>(_value.loanDetails, (value) {
      return _then(_value.copyWith(loanDetails: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $EMIDetailsCopyWith<$Res> get emiDetails {
    return $EMIDetailsCopyWith<$Res>(_value.emiDetails, (value) {
      return _then(_value.copyWith(emiDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoanParticularsImplCopyWith<$Res>
    implements $LoanParticularsCopyWith<$Res> {
  factory _$$LoanParticularsImplCopyWith(_$LoanParticularsImpl value,
          $Res Function(_$LoanParticularsImpl) then) =
      __$$LoanParticularsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {VehicleDetails vehicleDetails,
      LoanDetails loanDetails,
      EMIDetails emiDetails,
      double? fundedLoanAmount,
      double? ddAmount,
      double? downPayment});

  @override
  $VehicleDetailsCopyWith<$Res> get vehicleDetails;
  @override
  $LoanDetailsCopyWith<$Res> get loanDetails;
  @override
  $EMIDetailsCopyWith<$Res> get emiDetails;
}

/// @nodoc
class __$$LoanParticularsImplCopyWithImpl<$Res>
    extends _$LoanParticularsCopyWithImpl<$Res, _$LoanParticularsImpl>
    implements _$$LoanParticularsImplCopyWith<$Res> {
  __$$LoanParticularsImplCopyWithImpl(
      _$LoanParticularsImpl _value, $Res Function(_$LoanParticularsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vehicleDetails = null,
    Object? loanDetails = null,
    Object? emiDetails = null,
    Object? fundedLoanAmount = freezed,
    Object? ddAmount = freezed,
    Object? downPayment = freezed,
  }) {
    return _then(_$LoanParticularsImpl(
      vehicleDetails: null == vehicleDetails
          ? _value.vehicleDetails
          : vehicleDetails // ignore: cast_nullable_to_non_nullable
              as VehicleDetails,
      loanDetails: null == loanDetails
          ? _value.loanDetails
          : loanDetails // ignore: cast_nullable_to_non_nullable
              as LoanDetails,
      emiDetails: null == emiDetails
          ? _value.emiDetails
          : emiDetails // ignore: cast_nullable_to_non_nullable
              as EMIDetails,
      fundedLoanAmount: freezed == fundedLoanAmount
          ? _value.fundedLoanAmount
          : fundedLoanAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      ddAmount: freezed == ddAmount
          ? _value.ddAmount
          : ddAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      downPayment: freezed == downPayment
          ? _value.downPayment
          : downPayment // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$LoanParticularsImpl implements _LoanParticulars {
  const _$LoanParticularsImpl(
      {required this.vehicleDetails,
      required this.loanDetails,
      required this.emiDetails,
      this.fundedLoanAmount,
      this.ddAmount,
      this.downPayment});

  @override
  final VehicleDetails vehicleDetails;
  @override
  final LoanDetails loanDetails;
  @override
  final EMIDetails emiDetails;
  @override
  final double? fundedLoanAmount;
  @override
  final double? ddAmount;
  @override
  final double? downPayment;

  @override
  String toString() {
    return 'LoanParticulars(vehicleDetails: $vehicleDetails, loanDetails: $loanDetails, emiDetails: $emiDetails, fundedLoanAmount: $fundedLoanAmount, ddAmount: $ddAmount, downPayment: $downPayment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoanParticularsImpl &&
            (identical(other.vehicleDetails, vehicleDetails) ||
                other.vehicleDetails == vehicleDetails) &&
            (identical(other.loanDetails, loanDetails) ||
                other.loanDetails == loanDetails) &&
            (identical(other.emiDetails, emiDetails) ||
                other.emiDetails == emiDetails) &&
            (identical(other.fundedLoanAmount, fundedLoanAmount) ||
                other.fundedLoanAmount == fundedLoanAmount) &&
            (identical(other.ddAmount, ddAmount) ||
                other.ddAmount == ddAmount) &&
            (identical(other.downPayment, downPayment) ||
                other.downPayment == downPayment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, vehicleDetails, loanDetails,
      emiDetails, fundedLoanAmount, ddAmount, downPayment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoanParticularsImplCopyWith<_$LoanParticularsImpl> get copyWith =>
      __$$LoanParticularsImplCopyWithImpl<_$LoanParticularsImpl>(
          this, _$identity);
}

abstract class _LoanParticulars implements LoanParticulars {
  const factory _LoanParticulars(
      {required final VehicleDetails vehicleDetails,
      required final LoanDetails loanDetails,
      required final EMIDetails emiDetails,
      final double? fundedLoanAmount,
      final double? ddAmount,
      final double? downPayment}) = _$LoanParticularsImpl;

  @override
  VehicleDetails get vehicleDetails;
  @override
  LoanDetails get loanDetails;
  @override
  EMIDetails get emiDetails;
  @override
  double? get fundedLoanAmount;
  @override
  double? get ddAmount;
  @override
  double? get downPayment;
  @override
  @JsonKey(ignore: true)
  _$$LoanParticularsImplCopyWith<_$LoanParticularsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
