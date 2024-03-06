// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'applicant_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ApplicantDto _$ApplicantDtoFromJson(Map<String, dynamic> json) {
  return _ApplicantDto.fromJson(json);
}

/// @nodoc
mixin _$ApplicantDto {
  BasicInfoDto get basicInfo => throw _privateConstructorUsedError;
  AddressDto get address => throw _privateConstructorUsedError;
  LocationDto? get location => throw _privateConstructorUsedError;
  @Uint8ListConverter()
  Uint8List? get houseImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApplicantDtoCopyWith<ApplicantDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplicantDtoCopyWith<$Res> {
  factory $ApplicantDtoCopyWith(
          ApplicantDto value, $Res Function(ApplicantDto) then) =
      _$ApplicantDtoCopyWithImpl<$Res, ApplicantDto>;
  @useResult
  $Res call(
      {BasicInfoDto basicInfo,
      AddressDto address,
      LocationDto? location,
      @Uint8ListConverter() Uint8List? houseImage});

  $BasicInfoDtoCopyWith<$Res> get basicInfo;
  $AddressDtoCopyWith<$Res> get address;
  $LocationDtoCopyWith<$Res>? get location;
}

/// @nodoc
class _$ApplicantDtoCopyWithImpl<$Res, $Val extends ApplicantDto>
    implements $ApplicantDtoCopyWith<$Res> {
  _$ApplicantDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? basicInfo = null,
    Object? address = null,
    Object? location = freezed,
    Object? houseImage = freezed,
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
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationDto?,
      houseImage: freezed == houseImage
          ? _value.houseImage
          : houseImage // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
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

  @override
  @pragma('vm:prefer-inline')
  $LocationDtoCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LocationDtoCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ApplicantDtoImplCopyWith<$Res>
    implements $ApplicantDtoCopyWith<$Res> {
  factory _$$ApplicantDtoImplCopyWith(
          _$ApplicantDtoImpl value, $Res Function(_$ApplicantDtoImpl) then) =
      __$$ApplicantDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BasicInfoDto basicInfo,
      AddressDto address,
      LocationDto? location,
      @Uint8ListConverter() Uint8List? houseImage});

  @override
  $BasicInfoDtoCopyWith<$Res> get basicInfo;
  @override
  $AddressDtoCopyWith<$Res> get address;
  @override
  $LocationDtoCopyWith<$Res>? get location;
}

/// @nodoc
class __$$ApplicantDtoImplCopyWithImpl<$Res>
    extends _$ApplicantDtoCopyWithImpl<$Res, _$ApplicantDtoImpl>
    implements _$$ApplicantDtoImplCopyWith<$Res> {
  __$$ApplicantDtoImplCopyWithImpl(
      _$ApplicantDtoImpl _value, $Res Function(_$ApplicantDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? basicInfo = null,
    Object? address = null,
    Object? location = freezed,
    Object? houseImage = freezed,
  }) {
    return _then(_$ApplicantDtoImpl(
      basicInfo: null == basicInfo
          ? _value.basicInfo
          : basicInfo // ignore: cast_nullable_to_non_nullable
              as BasicInfoDto,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressDto,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationDto?,
      houseImage: freezed == houseImage
          ? _value.houseImage
          : houseImage // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ApplicantDtoImpl extends _ApplicantDto with DiagnosticableTreeMixin {
  const _$ApplicantDtoImpl(
      {required this.basicInfo,
      required this.address,
      required this.location,
      @Uint8ListConverter() required this.houseImage})
      : super._();

  factory _$ApplicantDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApplicantDtoImplFromJson(json);

  @override
  final BasicInfoDto basicInfo;
  @override
  final AddressDto address;
  @override
  final LocationDto? location;
  @override
  @Uint8ListConverter()
  final Uint8List? houseImage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ApplicantDto(basicInfo: $basicInfo, address: $address, location: $location, houseImage: $houseImage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ApplicantDto'))
      ..add(DiagnosticsProperty('basicInfo', basicInfo))
      ..add(DiagnosticsProperty('address', address))
      ..add(DiagnosticsProperty('location', location))
      ..add(DiagnosticsProperty('houseImage', houseImage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApplicantDtoImpl &&
            (identical(other.basicInfo, basicInfo) ||
                other.basicInfo == basicInfo) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.location, location) ||
                other.location == location) &&
            const DeepCollectionEquality()
                .equals(other.houseImage, houseImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, basicInfo, address, location,
      const DeepCollectionEquality().hash(houseImage));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApplicantDtoImplCopyWith<_$ApplicantDtoImpl> get copyWith =>
      __$$ApplicantDtoImplCopyWithImpl<_$ApplicantDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ApplicantDtoImplToJson(
      this,
    );
  }
}

abstract class _ApplicantDto extends ApplicantDto {
  const factory _ApplicantDto(
          {required final BasicInfoDto basicInfo,
          required final AddressDto address,
          required final LocationDto? location,
          @Uint8ListConverter() required final Uint8List? houseImage}) =
      _$ApplicantDtoImpl;
  const _ApplicantDto._() : super._();

  factory _ApplicantDto.fromJson(Map<String, dynamic> json) =
      _$ApplicantDtoImpl.fromJson;

  @override
  BasicInfoDto get basicInfo;
  @override
  AddressDto get address;
  @override
  LocationDto? get location;
  @override
  @Uint8ListConverter()
  Uint8List? get houseImage;
  @override
  @JsonKey(ignore: true)
  _$$ApplicantDtoImplCopyWith<_$ApplicantDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
