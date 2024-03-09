// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'emi_details_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EMIDetailsDto _$EMIDetailsDtoFromJson(Map<String, dynamic> json) {
  return _EMIDetailsDto.fromJson(json);
}

/// @nodoc
mixin _$EMIDetailsDto {
  double get emiAmount => throw _privateConstructorUsedError;
  int get tenure => throw _privateConstructorUsedError;
  String get firstEMIDate => throw _privateConstructorUsedError;
  String get bankName => throw _privateConstructorUsedError;
  String get repaymentMode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EMIDetailsDtoCopyWith<EMIDetailsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EMIDetailsDtoCopyWith<$Res> {
  factory $EMIDetailsDtoCopyWith(
          EMIDetailsDto value, $Res Function(EMIDetailsDto) then) =
      _$EMIDetailsDtoCopyWithImpl<$Res, EMIDetailsDto>;
  @useResult
  $Res call(
      {double emiAmount,
      int tenure,
      String firstEMIDate,
      String bankName,
      String repaymentMode});
}

/// @nodoc
class _$EMIDetailsDtoCopyWithImpl<$Res, $Val extends EMIDetailsDto>
    implements $EMIDetailsDtoCopyWith<$Res> {
  _$EMIDetailsDtoCopyWithImpl(this._value, this._then);

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
              as double,
      tenure: null == tenure
          ? _value.tenure
          : tenure // ignore: cast_nullable_to_non_nullable
              as int,
      firstEMIDate: null == firstEMIDate
          ? _value.firstEMIDate
          : firstEMIDate // ignore: cast_nullable_to_non_nullable
              as String,
      bankName: null == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String,
      repaymentMode: null == repaymentMode
          ? _value.repaymentMode
          : repaymentMode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EMIDetailsDtoImplCopyWith<$Res>
    implements $EMIDetailsDtoCopyWith<$Res> {
  factory _$$EMIDetailsDtoImplCopyWith(
          _$EMIDetailsDtoImpl value, $Res Function(_$EMIDetailsDtoImpl) then) =
      __$$EMIDetailsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double emiAmount,
      int tenure,
      String firstEMIDate,
      String bankName,
      String repaymentMode});
}

/// @nodoc
class __$$EMIDetailsDtoImplCopyWithImpl<$Res>
    extends _$EMIDetailsDtoCopyWithImpl<$Res, _$EMIDetailsDtoImpl>
    implements _$$EMIDetailsDtoImplCopyWith<$Res> {
  __$$EMIDetailsDtoImplCopyWithImpl(
      _$EMIDetailsDtoImpl _value, $Res Function(_$EMIDetailsDtoImpl) _then)
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
    return _then(_$EMIDetailsDtoImpl(
      emiAmount: null == emiAmount
          ? _value.emiAmount
          : emiAmount // ignore: cast_nullable_to_non_nullable
              as double,
      tenure: null == tenure
          ? _value.tenure
          : tenure // ignore: cast_nullable_to_non_nullable
              as int,
      firstEMIDate: null == firstEMIDate
          ? _value.firstEMIDate
          : firstEMIDate // ignore: cast_nullable_to_non_nullable
              as String,
      bankName: null == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String,
      repaymentMode: null == repaymentMode
          ? _value.repaymentMode
          : repaymentMode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EMIDetailsDtoImpl extends _EMIDetailsDto {
  const _$EMIDetailsDtoImpl(
      {required this.emiAmount,
      required this.tenure,
      required this.firstEMIDate,
      required this.bankName,
      required this.repaymentMode})
      : super._();

  factory _$EMIDetailsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$EMIDetailsDtoImplFromJson(json);

  @override
  final double emiAmount;
  @override
  final int tenure;
  @override
  final String firstEMIDate;
  @override
  final String bankName;
  @override
  final String repaymentMode;

  @override
  String toString() {
    return 'EMIDetailsDto(emiAmount: $emiAmount, tenure: $tenure, firstEMIDate: $firstEMIDate, bankName: $bankName, repaymentMode: $repaymentMode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EMIDetailsDtoImpl &&
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, emiAmount, tenure, firstEMIDate, bankName, repaymentMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EMIDetailsDtoImplCopyWith<_$EMIDetailsDtoImpl> get copyWith =>
      __$$EMIDetailsDtoImplCopyWithImpl<_$EMIDetailsDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EMIDetailsDtoImplToJson(
      this,
    );
  }
}

abstract class _EMIDetailsDto extends EMIDetailsDto {
  const factory _EMIDetailsDto(
      {required final double emiAmount,
      required final int tenure,
      required final String firstEMIDate,
      required final String bankName,
      required final String repaymentMode}) = _$EMIDetailsDtoImpl;
  const _EMIDetailsDto._() : super._();

  factory _EMIDetailsDto.fromJson(Map<String, dynamic> json) =
      _$EMIDetailsDtoImpl.fromJson;

  @override
  double get emiAmount;
  @override
  int get tenure;
  @override
  String get firstEMIDate;
  @override
  String get bankName;
  @override
  String get repaymentMode;
  @override
  @JsonKey(ignore: true)
  _$$EMIDetailsDtoImplCopyWith<_$EMIDetailsDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
