// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'loan_details_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoanDetailsDto _$LoanDetailsDtoFromJson(Map<String, dynamic> json) {
  return _LoanDetailsDto.fromJson(json);
}

/// @nodoc
mixin _$LoanDetailsDto {
  double get loanAmount => throw _privateConstructorUsedError;
  double get ltv => throw _privateConstructorUsedError;
  double get serviceCharge => throw _privateConstructorUsedError;
  double? get documentationCharge => throw _privateConstructorUsedError;
  double? get lifeAmount => throw _privateConstructorUsedError;
  double? get pacAmount => throw _privateConstructorUsedError;
  double get stampDuty => throw _privateConstructorUsedError;
  double? get dateShiftingCharge => throw _privateConstructorUsedError;
  double? get counterAmount => throw _privateConstructorUsedError;
  int? get loanScheme => throw _privateConstructorUsedError;
  List<int>? get fundedChargesList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoanDetailsDtoCopyWith<LoanDetailsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoanDetailsDtoCopyWith<$Res> {
  factory $LoanDetailsDtoCopyWith(
          LoanDetailsDto value, $Res Function(LoanDetailsDto) then) =
      _$LoanDetailsDtoCopyWithImpl<$Res, LoanDetailsDto>;
  @useResult
  $Res call(
      {double loanAmount,
      double ltv,
      double serviceCharge,
      double? documentationCharge,
      double? lifeAmount,
      double? pacAmount,
      double stampDuty,
      double? dateShiftingCharge,
      double? counterAmount,
      int? loanScheme,
      List<int>? fundedChargesList});
}

/// @nodoc
class _$LoanDetailsDtoCopyWithImpl<$Res, $Val extends LoanDetailsDto>
    implements $LoanDetailsDtoCopyWith<$Res> {
  _$LoanDetailsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loanAmount = null,
    Object? ltv = null,
    Object? serviceCharge = null,
    Object? documentationCharge = freezed,
    Object? lifeAmount = freezed,
    Object? pacAmount = freezed,
    Object? stampDuty = null,
    Object? dateShiftingCharge = freezed,
    Object? counterAmount = freezed,
    Object? loanScheme = freezed,
    Object? fundedChargesList = freezed,
  }) {
    return _then(_value.copyWith(
      loanAmount: null == loanAmount
          ? _value.loanAmount
          : loanAmount // ignore: cast_nullable_to_non_nullable
              as double,
      ltv: null == ltv
          ? _value.ltv
          : ltv // ignore: cast_nullable_to_non_nullable
              as double,
      serviceCharge: null == serviceCharge
          ? _value.serviceCharge
          : serviceCharge // ignore: cast_nullable_to_non_nullable
              as double,
      documentationCharge: freezed == documentationCharge
          ? _value.documentationCharge
          : documentationCharge // ignore: cast_nullable_to_non_nullable
              as double?,
      lifeAmount: freezed == lifeAmount
          ? _value.lifeAmount
          : lifeAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      pacAmount: freezed == pacAmount
          ? _value.pacAmount
          : pacAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      stampDuty: null == stampDuty
          ? _value.stampDuty
          : stampDuty // ignore: cast_nullable_to_non_nullable
              as double,
      dateShiftingCharge: freezed == dateShiftingCharge
          ? _value.dateShiftingCharge
          : dateShiftingCharge // ignore: cast_nullable_to_non_nullable
              as double?,
      counterAmount: freezed == counterAmount
          ? _value.counterAmount
          : counterAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      loanScheme: freezed == loanScheme
          ? _value.loanScheme
          : loanScheme // ignore: cast_nullable_to_non_nullable
              as int?,
      fundedChargesList: freezed == fundedChargesList
          ? _value.fundedChargesList
          : fundedChargesList // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoanDetailsDtoImplCopyWith<$Res>
    implements $LoanDetailsDtoCopyWith<$Res> {
  factory _$$LoanDetailsDtoImplCopyWith(_$LoanDetailsDtoImpl value,
          $Res Function(_$LoanDetailsDtoImpl) then) =
      __$$LoanDetailsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double loanAmount,
      double ltv,
      double serviceCharge,
      double? documentationCharge,
      double? lifeAmount,
      double? pacAmount,
      double stampDuty,
      double? dateShiftingCharge,
      double? counterAmount,
      int? loanScheme,
      List<int>? fundedChargesList});
}

/// @nodoc
class __$$LoanDetailsDtoImplCopyWithImpl<$Res>
    extends _$LoanDetailsDtoCopyWithImpl<$Res, _$LoanDetailsDtoImpl>
    implements _$$LoanDetailsDtoImplCopyWith<$Res> {
  __$$LoanDetailsDtoImplCopyWithImpl(
      _$LoanDetailsDtoImpl _value, $Res Function(_$LoanDetailsDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loanAmount = null,
    Object? ltv = null,
    Object? serviceCharge = null,
    Object? documentationCharge = freezed,
    Object? lifeAmount = freezed,
    Object? pacAmount = freezed,
    Object? stampDuty = null,
    Object? dateShiftingCharge = freezed,
    Object? counterAmount = freezed,
    Object? loanScheme = freezed,
    Object? fundedChargesList = freezed,
  }) {
    return _then(_$LoanDetailsDtoImpl(
      loanAmount: null == loanAmount
          ? _value.loanAmount
          : loanAmount // ignore: cast_nullable_to_non_nullable
              as double,
      ltv: null == ltv
          ? _value.ltv
          : ltv // ignore: cast_nullable_to_non_nullable
              as double,
      serviceCharge: null == serviceCharge
          ? _value.serviceCharge
          : serviceCharge // ignore: cast_nullable_to_non_nullable
              as double,
      documentationCharge: freezed == documentationCharge
          ? _value.documentationCharge
          : documentationCharge // ignore: cast_nullable_to_non_nullable
              as double?,
      lifeAmount: freezed == lifeAmount
          ? _value.lifeAmount
          : lifeAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      pacAmount: freezed == pacAmount
          ? _value.pacAmount
          : pacAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      stampDuty: null == stampDuty
          ? _value.stampDuty
          : stampDuty // ignore: cast_nullable_to_non_nullable
              as double,
      dateShiftingCharge: freezed == dateShiftingCharge
          ? _value.dateShiftingCharge
          : dateShiftingCharge // ignore: cast_nullable_to_non_nullable
              as double?,
      counterAmount: freezed == counterAmount
          ? _value.counterAmount
          : counterAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      loanScheme: freezed == loanScheme
          ? _value.loanScheme
          : loanScheme // ignore: cast_nullable_to_non_nullable
              as int?,
      fundedChargesList: freezed == fundedChargesList
          ? _value._fundedChargesList
          : fundedChargesList // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoanDetailsDtoImpl extends _LoanDetailsDto {
  const _$LoanDetailsDtoImpl(
      {required this.loanAmount,
      required this.ltv,
      required this.serviceCharge,
      required this.documentationCharge,
      required this.lifeAmount,
      required this.pacAmount,
      required this.stampDuty,
      required this.dateShiftingCharge,
      required this.counterAmount,
      required this.loanScheme,
      required final List<int>? fundedChargesList})
      : _fundedChargesList = fundedChargesList,
        super._();

  factory _$LoanDetailsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoanDetailsDtoImplFromJson(json);

  @override
  final double loanAmount;
  @override
  final double ltv;
  @override
  final double serviceCharge;
  @override
  final double? documentationCharge;
  @override
  final double? lifeAmount;
  @override
  final double? pacAmount;
  @override
  final double stampDuty;
  @override
  final double? dateShiftingCharge;
  @override
  final double? counterAmount;
  @override
  final int? loanScheme;
  final List<int>? _fundedChargesList;
  @override
  List<int>? get fundedChargesList {
    final value = _fundedChargesList;
    if (value == null) return null;
    if (_fundedChargesList is EqualUnmodifiableListView)
      return _fundedChargesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'LoanDetailsDto(loanAmount: $loanAmount, ltv: $ltv, serviceCharge: $serviceCharge, documentationCharge: $documentationCharge, lifeAmount: $lifeAmount, pacAmount: $pacAmount, stampDuty: $stampDuty, dateShiftingCharge: $dateShiftingCharge, counterAmount: $counterAmount, loanScheme: $loanScheme, fundedChargesList: $fundedChargesList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoanDetailsDtoImpl &&
            (identical(other.loanAmount, loanAmount) ||
                other.loanAmount == loanAmount) &&
            (identical(other.ltv, ltv) || other.ltv == ltv) &&
            (identical(other.serviceCharge, serviceCharge) ||
                other.serviceCharge == serviceCharge) &&
            (identical(other.documentationCharge, documentationCharge) ||
                other.documentationCharge == documentationCharge) &&
            (identical(other.lifeAmount, lifeAmount) ||
                other.lifeAmount == lifeAmount) &&
            (identical(other.pacAmount, pacAmount) ||
                other.pacAmount == pacAmount) &&
            (identical(other.stampDuty, stampDuty) ||
                other.stampDuty == stampDuty) &&
            (identical(other.dateShiftingCharge, dateShiftingCharge) ||
                other.dateShiftingCharge == dateShiftingCharge) &&
            (identical(other.counterAmount, counterAmount) ||
                other.counterAmount == counterAmount) &&
            (identical(other.loanScheme, loanScheme) ||
                other.loanScheme == loanScheme) &&
            const DeepCollectionEquality()
                .equals(other._fundedChargesList, _fundedChargesList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      loanAmount,
      ltv,
      serviceCharge,
      documentationCharge,
      lifeAmount,
      pacAmount,
      stampDuty,
      dateShiftingCharge,
      counterAmount,
      loanScheme,
      const DeepCollectionEquality().hash(_fundedChargesList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoanDetailsDtoImplCopyWith<_$LoanDetailsDtoImpl> get copyWith =>
      __$$LoanDetailsDtoImplCopyWithImpl<_$LoanDetailsDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoanDetailsDtoImplToJson(
      this,
    );
  }
}

abstract class _LoanDetailsDto extends LoanDetailsDto {
  const factory _LoanDetailsDto(
      {required final double loanAmount,
      required final double ltv,
      required final double serviceCharge,
      required final double? documentationCharge,
      required final double? lifeAmount,
      required final double? pacAmount,
      required final double stampDuty,
      required final double? dateShiftingCharge,
      required final double? counterAmount,
      required final int? loanScheme,
      required final List<int>? fundedChargesList}) = _$LoanDetailsDtoImpl;
  const _LoanDetailsDto._() : super._();

  factory _LoanDetailsDto.fromJson(Map<String, dynamic> json) =
      _$LoanDetailsDtoImpl.fromJson;

  @override
  double get loanAmount;
  @override
  double get ltv;
  @override
  double get serviceCharge;
  @override
  double? get documentationCharge;
  @override
  double? get lifeAmount;
  @override
  double? get pacAmount;
  @override
  double get stampDuty;
  @override
  double? get dateShiftingCharge;
  @override
  double? get counterAmount;
  @override
  int? get loanScheme;
  @override
  List<int>? get fundedChargesList;
  @override
  @JsonKey(ignore: true)
  _$$LoanDetailsDtoImplCopyWith<_$LoanDetailsDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
