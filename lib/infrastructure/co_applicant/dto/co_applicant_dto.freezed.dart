// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'co_applicant_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CoApplicantDto _$CoApplicantDtoFromJson(Map<String, dynamic> json) {
  return _CoApplicantDto.fromJson(json);
}

/// @nodoc
mixin _$CoApplicantDto {
  BasicInfoDto get basicInfo => throw _privateConstructorUsedError;
  AddressDto get address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoApplicantDtoCopyWith<CoApplicantDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoApplicantDtoCopyWith<$Res> {
  factory $CoApplicantDtoCopyWith(
          CoApplicantDto value, $Res Function(CoApplicantDto) then) =
      _$CoApplicantDtoCopyWithImpl<$Res, CoApplicantDto>;
  @useResult
  $Res call({BasicInfoDto basicInfo, AddressDto address});

  $BasicInfoDtoCopyWith<$Res> get basicInfo;
  $AddressDtoCopyWith<$Res> get address;
}

/// @nodoc
class _$CoApplicantDtoCopyWithImpl<$Res, $Val extends CoApplicantDto>
    implements $CoApplicantDtoCopyWith<$Res> {
  _$CoApplicantDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? basicInfo = null,
    Object? address = null,
  }) {
    return _then(_value.copyWith(
      basicInfo: null == basicInfo
          ? _value.basicInfo
          : basicInfo // ignore: cast_nullable_to_non_nullable
              as BasicInfoDto,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BasicInfoDtoCopyWith<$Res> get basicInfo {
    return $BasicInfoDtoCopyWith<$Res>(_value.basicInfo, (value) {
      return _then(_value.copyWith(basicInfo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressDtoCopyWith<$Res> get address {
    return $AddressDtoCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CoApplicantDtoImplCopyWith<$Res>
    implements $CoApplicantDtoCopyWith<$Res> {
  factory _$$CoApplicantDtoImplCopyWith(_$CoApplicantDtoImpl value,
          $Res Function(_$CoApplicantDtoImpl) then) =
      __$$CoApplicantDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BasicInfoDto basicInfo, AddressDto address});

  @override
  $BasicInfoDtoCopyWith<$Res> get basicInfo;
  @override
  $AddressDtoCopyWith<$Res> get address;
}

/// @nodoc
class __$$CoApplicantDtoImplCopyWithImpl<$Res>
    extends _$CoApplicantDtoCopyWithImpl<$Res, _$CoApplicantDtoImpl>
    implements _$$CoApplicantDtoImplCopyWith<$Res> {
  __$$CoApplicantDtoImplCopyWithImpl(
      _$CoApplicantDtoImpl _value, $Res Function(_$CoApplicantDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? basicInfo = null,
    Object? address = null,
  }) {
    return _then(_$CoApplicantDtoImpl(
      basicInfo: null == basicInfo
          ? _value.basicInfo
          : basicInfo // ignore: cast_nullable_to_non_nullable
              as BasicInfoDto,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressDto,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$CoApplicantDtoImpl extends _CoApplicantDto {
  const _$CoApplicantDtoImpl({required this.basicInfo, required this.address})
      : super._();

  factory _$CoApplicantDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoApplicantDtoImplFromJson(json);

  @override
  final BasicInfoDto basicInfo;
  @override
  final AddressDto address;

  @override
  String toString() {
    return 'CoApplicantDto(basicInfo: $basicInfo, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoApplicantDtoImpl &&
            (identical(other.basicInfo, basicInfo) ||
                other.basicInfo == basicInfo) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, basicInfo, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoApplicantDtoImplCopyWith<_$CoApplicantDtoImpl> get copyWith =>
      __$$CoApplicantDtoImplCopyWithImpl<_$CoApplicantDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoApplicantDtoImplToJson(
      this,
    );
  }
}

abstract class _CoApplicantDto extends CoApplicantDto {
  const factory _CoApplicantDto(
      {required final BasicInfoDto basicInfo,
      required final AddressDto address}) = _$CoApplicantDtoImpl;
  const _CoApplicantDto._() : super._();

  factory _CoApplicantDto.fromJson(Map<String, dynamic> json) =
      _$CoApplicantDtoImpl.fromJson;

  @override
  BasicInfoDto get basicInfo;
  @override
  AddressDto get address;
  @override
  @JsonKey(ignore: true)
  _$$CoApplicantDtoImplCopyWith<_$CoApplicantDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
