// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'guarenter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Guarenter {
  BasicInfo get basicInfo => throw _privateConstructorUsedError;
  Address get address => throw _privateConstructorUsedError;
  Location? get location => throw _privateConstructorUsedError;
  Uint8List? get houseImage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GuarenterCopyWith<Guarenter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GuarenterCopyWith<$Res> {
  factory $GuarenterCopyWith(Guarenter value, $Res Function(Guarenter) then) =
      _$GuarenterCopyWithImpl<$Res, Guarenter>;
  @useResult
  $Res call(
      {BasicInfo basicInfo,
      Address address,
      Location? location,
      Uint8List? houseImage});

  $BasicInfoCopyWith<$Res> get basicInfo;
  $AddressCopyWith<$Res> get address;
  $LocationCopyWith<$Res>? get location;
}

/// @nodoc
class _$GuarenterCopyWithImpl<$Res, $Val extends Guarenter>
    implements $GuarenterCopyWith<$Res> {
  _$GuarenterCopyWithImpl(this._value, this._then);

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
              as BasicInfo,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
      houseImage: freezed == houseImage
          ? _value.houseImage
          : houseImage // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BasicInfoCopyWith<$Res> get basicInfo {
    return $BasicInfoCopyWith<$Res>(_value.basicInfo, (value) {
      return _then(_value.copyWith(basicInfo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get address {
    return $AddressCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GuarenterImplCopyWith<$Res>
    implements $GuarenterCopyWith<$Res> {
  factory _$$GuarenterImplCopyWith(
          _$GuarenterImpl value, $Res Function(_$GuarenterImpl) then) =
      __$$GuarenterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BasicInfo basicInfo,
      Address address,
      Location? location,
      Uint8List? houseImage});

  @override
  $BasicInfoCopyWith<$Res> get basicInfo;
  @override
  $AddressCopyWith<$Res> get address;
  @override
  $LocationCopyWith<$Res>? get location;
}

/// @nodoc
class __$$GuarenterImplCopyWithImpl<$Res>
    extends _$GuarenterCopyWithImpl<$Res, _$GuarenterImpl>
    implements _$$GuarenterImplCopyWith<$Res> {
  __$$GuarenterImplCopyWithImpl(
      _$GuarenterImpl _value, $Res Function(_$GuarenterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? basicInfo = null,
    Object? address = null,
    Object? location = freezed,
    Object? houseImage = freezed,
  }) {
    return _then(_$GuarenterImpl(
      basicInfo: null == basicInfo
          ? _value.basicInfo
          : basicInfo // ignore: cast_nullable_to_non_nullable
              as BasicInfo,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location?,
      houseImage: freezed == houseImage
          ? _value.houseImage
          : houseImage // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ));
  }
}

/// @nodoc

class _$GuarenterImpl implements _Guarenter {
  const _$GuarenterImpl(
      {required this.basicInfo,
      required this.address,
      required this.location,
      required this.houseImage});

  @override
  final BasicInfo basicInfo;
  @override
  final Address address;
  @override
  final Location? location;
  @override
  final Uint8List? houseImage;

  @override
  String toString() {
    return 'Guarenter(basicInfo: $basicInfo, address: $address, location: $location, houseImage: $houseImage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GuarenterImpl &&
            (identical(other.basicInfo, basicInfo) ||
                other.basicInfo == basicInfo) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.location, location) ||
                other.location == location) &&
            const DeepCollectionEquality()
                .equals(other.houseImage, houseImage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, basicInfo, address, location,
      const DeepCollectionEquality().hash(houseImage));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GuarenterImplCopyWith<_$GuarenterImpl> get copyWith =>
      __$$GuarenterImplCopyWithImpl<_$GuarenterImpl>(this, _$identity);
}

abstract class _Guarenter implements Guarenter {
  const factory _Guarenter(
      {required final BasicInfo basicInfo,
      required final Address address,
      required final Location? location,
      required final Uint8List? houseImage}) = _$GuarenterImpl;

  @override
  BasicInfo get basicInfo;
  @override
  Address get address;
  @override
  Location? get location;
  @override
  Uint8List? get houseImage;
  @override
  @JsonKey(ignore: true)
  _$$GuarenterImplCopyWith<_$GuarenterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
