// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remarks_and_more_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RemarksAndMoreDto _$RemarksAndMoreDtoFromJson(Map<String, dynamic> json) {
  return _RemarksAndMoreDto.fromJson(json);
}

/// @nodoc
mixin _$RemarksAndMoreDto {
  String get appId => throw _privateConstructorUsedError;
  String get leadId => throw _privateConstructorUsedError;
  String? get agreementNumber => throw _privateConstructorUsedError;
  String? get vehicleNumber => throw _privateConstructorUsedError;
  String? get remarks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RemarksAndMoreDtoCopyWith<RemarksAndMoreDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemarksAndMoreDtoCopyWith<$Res> {
  factory $RemarksAndMoreDtoCopyWith(
          RemarksAndMoreDto value, $Res Function(RemarksAndMoreDto) then) =
      _$RemarksAndMoreDtoCopyWithImpl<$Res, RemarksAndMoreDto>;
  @useResult
  $Res call(
      {String appId,
      String leadId,
      String? agreementNumber,
      String? vehicleNumber,
      String? remarks});
}

/// @nodoc
class _$RemarksAndMoreDtoCopyWithImpl<$Res, $Val extends RemarksAndMoreDto>
    implements $RemarksAndMoreDtoCopyWith<$Res> {
  _$RemarksAndMoreDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appId = null,
    Object? leadId = null,
    Object? agreementNumber = freezed,
    Object? vehicleNumber = freezed,
    Object? remarks = freezed,
  }) {
    return _then(_value.copyWith(
      appId: null == appId
          ? _value.appId
          : appId // ignore: cast_nullable_to_non_nullable
              as String,
      leadId: null == leadId
          ? _value.leadId
          : leadId // ignore: cast_nullable_to_non_nullable
              as String,
      agreementNumber: freezed == agreementNumber
          ? _value.agreementNumber
          : agreementNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleNumber: freezed == vehicleNumber
          ? _value.vehicleNumber
          : vehicleNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      remarks: freezed == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RemarksAndMoreDtoImplCopyWith<$Res>
    implements $RemarksAndMoreDtoCopyWith<$Res> {
  factory _$$RemarksAndMoreDtoImplCopyWith(_$RemarksAndMoreDtoImpl value,
          $Res Function(_$RemarksAndMoreDtoImpl) then) =
      __$$RemarksAndMoreDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String appId,
      String leadId,
      String? agreementNumber,
      String? vehicleNumber,
      String? remarks});
}

/// @nodoc
class __$$RemarksAndMoreDtoImplCopyWithImpl<$Res>
    extends _$RemarksAndMoreDtoCopyWithImpl<$Res, _$RemarksAndMoreDtoImpl>
    implements _$$RemarksAndMoreDtoImplCopyWith<$Res> {
  __$$RemarksAndMoreDtoImplCopyWithImpl(_$RemarksAndMoreDtoImpl _value,
      $Res Function(_$RemarksAndMoreDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appId = null,
    Object? leadId = null,
    Object? agreementNumber = freezed,
    Object? vehicleNumber = freezed,
    Object? remarks = freezed,
  }) {
    return _then(_$RemarksAndMoreDtoImpl(
      appId: null == appId
          ? _value.appId
          : appId // ignore: cast_nullable_to_non_nullable
              as String,
      leadId: null == leadId
          ? _value.leadId
          : leadId // ignore: cast_nullable_to_non_nullable
              as String,
      agreementNumber: freezed == agreementNumber
          ? _value.agreementNumber
          : agreementNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleNumber: freezed == vehicleNumber
          ? _value.vehicleNumber
          : vehicleNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      remarks: freezed == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RemarksAndMoreDtoImpl extends _RemarksAndMoreDto {
  const _$RemarksAndMoreDtoImpl(
      {required this.appId,
      required this.leadId,
      required this.agreementNumber,
      required this.vehicleNumber,
      required this.remarks})
      : super._();

  factory _$RemarksAndMoreDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RemarksAndMoreDtoImplFromJson(json);

  @override
  final String appId;
  @override
  final String leadId;
  @override
  final String? agreementNumber;
  @override
  final String? vehicleNumber;
  @override
  final String? remarks;

  @override
  String toString() {
    return 'RemarksAndMoreDto(appId: $appId, leadId: $leadId, agreementNumber: $agreementNumber, vehicleNumber: $vehicleNumber, remarks: $remarks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemarksAndMoreDtoImpl &&
            (identical(other.appId, appId) || other.appId == appId) &&
            (identical(other.leadId, leadId) || other.leadId == leadId) &&
            (identical(other.agreementNumber, agreementNumber) ||
                other.agreementNumber == agreementNumber) &&
            (identical(other.vehicleNumber, vehicleNumber) ||
                other.vehicleNumber == vehicleNumber) &&
            (identical(other.remarks, remarks) || other.remarks == remarks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, appId, leadId, agreementNumber, vehicleNumber, remarks);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemarksAndMoreDtoImplCopyWith<_$RemarksAndMoreDtoImpl> get copyWith =>
      __$$RemarksAndMoreDtoImplCopyWithImpl<_$RemarksAndMoreDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RemarksAndMoreDtoImplToJson(
      this,
    );
  }
}

abstract class _RemarksAndMoreDto extends RemarksAndMoreDto {
  const factory _RemarksAndMoreDto(
      {required final String appId,
      required final String leadId,
      required final String? agreementNumber,
      required final String? vehicleNumber,
      required final String? remarks}) = _$RemarksAndMoreDtoImpl;
  const _RemarksAndMoreDto._() : super._();

  factory _RemarksAndMoreDto.fromJson(Map<String, dynamic> json) =
      _$RemarksAndMoreDtoImpl.fromJson;

  @override
  String get appId;
  @override
  String get leadId;
  @override
  String? get agreementNumber;
  @override
  String? get vehicleNumber;
  @override
  String? get remarks;
  @override
  @JsonKey(ignore: true)
  _$$RemarksAndMoreDtoImplCopyWith<_$RemarksAndMoreDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
