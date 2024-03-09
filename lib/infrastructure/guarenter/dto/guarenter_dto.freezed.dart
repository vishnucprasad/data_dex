// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'guarenter_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GuarenterDto _$GuarenterDtoFromJson(Map<String, dynamic> json) {
  return _GuarenterDto.fromJson(json);
}

/// @nodoc
mixin _$GuarenterDto {
  BasicInfoDto get basicInfo => throw _privateConstructorUsedError;
  AddressDto get address => throw _privateConstructorUsedError;
  LocationDto? get location => throw _privateConstructorUsedError;
  @Uint8ListConverter()
  Uint8List? get houseImage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GuarenterDtoCopyWith<GuarenterDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuarenterDtoCopyWith<$Res> {
  factory $GuarenterDtoCopyWith(
          GuarenterDto value, $Res Function(GuarenterDto) then) =
      _$GuarenterDtoCopyWithImpl<$Res, GuarenterDto>;
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
class _$GuarenterDtoCopyWithImpl<$Res, $Val extends GuarenterDto>
    implements $GuarenterDtoCopyWith<$Res> {
  _$GuarenterDtoCopyWithImpl(this._value, this._then);

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
abstract class _$$GuarenterDtoImplCopyWith<$Res>
    implements $GuarenterDtoCopyWith<$Res> {
  factory _$$GuarenterDtoImplCopyWith(
          _$GuarenterDtoImpl value, $Res Function(_$GuarenterDtoImpl) then) =
      __$$GuarenterDtoImplCopyWithImpl<$Res>;
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
class __$$GuarenterDtoImplCopyWithImpl<$Res>
    extends _$GuarenterDtoCopyWithImpl<$Res, _$GuarenterDtoImpl>
    implements _$$GuarenterDtoImplCopyWith<$Res> {
  __$$GuarenterDtoImplCopyWithImpl(
      _$GuarenterDtoImpl _value, $Res Function(_$GuarenterDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? basicInfo = null,
    Object? address = null,
    Object? location = freezed,
    Object? houseImage = freezed,
  }) {
    return _then(_$GuarenterDtoImpl(
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
class _$GuarenterDtoImpl extends _GuarenterDto with DiagnosticableTreeMixin {
  const _$GuarenterDtoImpl(
      {required this.basicInfo,
      required this.address,
      required this.location,
      @Uint8ListConverter() required this.houseImage})
      : super._();

  factory _$GuarenterDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$GuarenterDtoImplFromJson(json);

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
    return 'GuarenterDto(basicInfo: $basicInfo, address: $address, location: $location, houseImage: $houseImage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'GuarenterDto'))
      ..add(DiagnosticsProperty('basicInfo', basicInfo))
      ..add(DiagnosticsProperty('address', address))
      ..add(DiagnosticsProperty('location', location))
      ..add(DiagnosticsProperty('houseImage', houseImage));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GuarenterDtoImpl &&
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
  _$$GuarenterDtoImplCopyWith<_$GuarenterDtoImpl> get copyWith =>
      __$$GuarenterDtoImplCopyWithImpl<_$GuarenterDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GuarenterDtoImplToJson(
      this,
    );
  }
}

abstract class _GuarenterDto extends GuarenterDto {
  const factory _GuarenterDto(
          {required final BasicInfoDto basicInfo,
          required final AddressDto address,
          required final LocationDto? location,
          @Uint8ListConverter() required final Uint8List? houseImage}) =
      _$GuarenterDtoImpl;
  const _GuarenterDto._() : super._();

  factory _GuarenterDto.fromJson(Map<String, dynamic> json) =
      _$GuarenterDtoImpl.fromJson;

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
  _$$GuarenterDtoImplCopyWith<_$GuarenterDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
