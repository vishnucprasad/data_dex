// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'loan_particulars_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoanParticularsDto _$LoanParticularsDtoFromJson(Map<String, dynamic> json) {
  return _LoanParticularsDto.fromJson(json);
}

/// @nodoc
mixin _$LoanParticularsDto {
  VehicleDetailsDto get vehicleDetails => throw _privateConstructorUsedError;
  LoanDetailsDto get loanDetails => throw _privateConstructorUsedError;
  EMIDetailsDto get emiDetails => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoanParticularsDtoCopyWith<LoanParticularsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoanParticularsDtoCopyWith<$Res> {
  factory $LoanParticularsDtoCopyWith(
          LoanParticularsDto value, $Res Function(LoanParticularsDto) then) =
      _$LoanParticularsDtoCopyWithImpl<$Res, LoanParticularsDto>;
  @useResult
  $Res call(
      {VehicleDetailsDto vehicleDetails,
      LoanDetailsDto loanDetails,
      EMIDetailsDto emiDetails});

  $VehicleDetailsDtoCopyWith<$Res> get vehicleDetails;
  $LoanDetailsDtoCopyWith<$Res> get loanDetails;
  $EMIDetailsDtoCopyWith<$Res> get emiDetails;
}

/// @nodoc
class _$LoanParticularsDtoCopyWithImpl<$Res, $Val extends LoanParticularsDto>
    implements $LoanParticularsDtoCopyWith<$Res> {
  _$LoanParticularsDtoCopyWithImpl(this._value, this._then);

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
  }) {
    return _then(_value.copyWith(
      vehicleDetails: null == vehicleDetails
          ? _value.vehicleDetails
          : vehicleDetails // ignore: cast_nullable_to_non_nullable
              as VehicleDetailsDto,
      loanDetails: null == loanDetails
          ? _value.loanDetails
          : loanDetails // ignore: cast_nullable_to_non_nullable
              as LoanDetailsDto,
      emiDetails: null == emiDetails
          ? _value.emiDetails
          : emiDetails // ignore: cast_nullable_to_non_nullable
              as EMIDetailsDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VehicleDetailsDtoCopyWith<$Res> get vehicleDetails {
    return $VehicleDetailsDtoCopyWith<$Res>(_value.vehicleDetails, (value) {
      return _then(_value.copyWith(vehicleDetails: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LoanDetailsDtoCopyWith<$Res> get loanDetails {
    return $LoanDetailsDtoCopyWith<$Res>(_value.loanDetails, (value) {
      return _then(_value.copyWith(loanDetails: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $EMIDetailsDtoCopyWith<$Res> get emiDetails {
    return $EMIDetailsDtoCopyWith<$Res>(_value.emiDetails, (value) {
      return _then(_value.copyWith(emiDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoanParticularsDtoImplCopyWith<$Res>
    implements $LoanParticularsDtoCopyWith<$Res> {
  factory _$$LoanParticularsDtoImplCopyWith(_$LoanParticularsDtoImpl value,
          $Res Function(_$LoanParticularsDtoImpl) then) =
      __$$LoanParticularsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {VehicleDetailsDto vehicleDetails,
      LoanDetailsDto loanDetails,
      EMIDetailsDto emiDetails});

  @override
  $VehicleDetailsDtoCopyWith<$Res> get vehicleDetails;
  @override
  $LoanDetailsDtoCopyWith<$Res> get loanDetails;
  @override
  $EMIDetailsDtoCopyWith<$Res> get emiDetails;
}

/// @nodoc
class __$$LoanParticularsDtoImplCopyWithImpl<$Res>
    extends _$LoanParticularsDtoCopyWithImpl<$Res, _$LoanParticularsDtoImpl>
    implements _$$LoanParticularsDtoImplCopyWith<$Res> {
  __$$LoanParticularsDtoImplCopyWithImpl(_$LoanParticularsDtoImpl _value,
      $Res Function(_$LoanParticularsDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? vehicleDetails = null,
    Object? loanDetails = null,
    Object? emiDetails = null,
  }) {
    return _then(_$LoanParticularsDtoImpl(
      vehicleDetails: null == vehicleDetails
          ? _value.vehicleDetails
          : vehicleDetails // ignore: cast_nullable_to_non_nullable
              as VehicleDetailsDto,
      loanDetails: null == loanDetails
          ? _value.loanDetails
          : loanDetails // ignore: cast_nullable_to_non_nullable
              as LoanDetailsDto,
      emiDetails: null == emiDetails
          ? _value.emiDetails
          : emiDetails // ignore: cast_nullable_to_non_nullable
              as EMIDetailsDto,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$LoanParticularsDtoImpl extends _LoanParticularsDto {
  const _$LoanParticularsDtoImpl(
      {required this.vehicleDetails,
      required this.loanDetails,
      required this.emiDetails})
      : super._();

  factory _$LoanParticularsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoanParticularsDtoImplFromJson(json);

  @override
  final VehicleDetailsDto vehicleDetails;
  @override
  final LoanDetailsDto loanDetails;
  @override
  final EMIDetailsDto emiDetails;

  @override
  String toString() {
    return 'LoanParticularsDto(vehicleDetails: $vehicleDetails, loanDetails: $loanDetails, emiDetails: $emiDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoanParticularsDtoImpl &&
            (identical(other.vehicleDetails, vehicleDetails) ||
                other.vehicleDetails == vehicleDetails) &&
            (identical(other.loanDetails, loanDetails) ||
                other.loanDetails == loanDetails) &&
            (identical(other.emiDetails, emiDetails) ||
                other.emiDetails == emiDetails));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, vehicleDetails, loanDetails, emiDetails);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoanParticularsDtoImplCopyWith<_$LoanParticularsDtoImpl> get copyWith =>
      __$$LoanParticularsDtoImplCopyWithImpl<_$LoanParticularsDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoanParticularsDtoImplToJson(
      this,
    );
  }
}

abstract class _LoanParticularsDto extends LoanParticularsDto {
  const factory _LoanParticularsDto(
      {required final VehicleDetailsDto vehicleDetails,
      required final LoanDetailsDto loanDetails,
      required final EMIDetailsDto emiDetails}) = _$LoanParticularsDtoImpl;
  const _LoanParticularsDto._() : super._();

  factory _LoanParticularsDto.fromJson(Map<String, dynamic> json) =
      _$LoanParticularsDtoImpl.fromJson;

  @override
  VehicleDetailsDto get vehicleDetails;
  @override
  LoanDetailsDto get loanDetails;
  @override
  EMIDetailsDto get emiDetails;
  @override
  @JsonKey(ignore: true)
  _$$LoanParticularsDtoImplCopyWith<_$LoanParticularsDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
