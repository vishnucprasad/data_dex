// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'co_applicant.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CoApplicant {
  BasicInfo get basicInfo => throw _privateConstructorUsedError;
  Address get address => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CoApplicantCopyWith<CoApplicant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoApplicantCopyWith<$Res> {
  factory $CoApplicantCopyWith(
          CoApplicant value, $Res Function(CoApplicant) then) =
      _$CoApplicantCopyWithImpl<$Res, CoApplicant>;
  @useResult
  $Res call({BasicInfo basicInfo, Address address});

  $BasicInfoCopyWith<$Res> get basicInfo;
  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class _$CoApplicantCopyWithImpl<$Res, $Val extends CoApplicant>
    implements $CoApplicantCopyWith<$Res> {
  _$CoApplicantCopyWithImpl(this._value, this._then);

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
              as BasicInfo,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
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
}

/// @nodoc
abstract class _$$CoApplicantImplCopyWith<$Res>
    implements $CoApplicantCopyWith<$Res> {
  factory _$$CoApplicantImplCopyWith(
          _$CoApplicantImpl value, $Res Function(_$CoApplicantImpl) then) =
      __$$CoApplicantImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BasicInfo basicInfo, Address address});

  @override
  $BasicInfoCopyWith<$Res> get basicInfo;
  @override
  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class __$$CoApplicantImplCopyWithImpl<$Res>
    extends _$CoApplicantCopyWithImpl<$Res, _$CoApplicantImpl>
    implements _$$CoApplicantImplCopyWith<$Res> {
  __$$CoApplicantImplCopyWithImpl(
      _$CoApplicantImpl _value, $Res Function(_$CoApplicantImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? basicInfo = null,
    Object? address = null,
  }) {
    return _then(_$CoApplicantImpl(
      basicInfo: null == basicInfo
          ? _value.basicInfo
          : basicInfo // ignore: cast_nullable_to_non_nullable
              as BasicInfo,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
    ));
  }
}

/// @nodoc

class _$CoApplicantImpl implements _CoApplicant {
  const _$CoApplicantImpl({required this.basicInfo, required this.address});

  @override
  final BasicInfo basicInfo;
  @override
  final Address address;

  @override
  String toString() {
    return 'CoApplicant(basicInfo: $basicInfo, address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoApplicantImpl &&
            (identical(other.basicInfo, basicInfo) ||
                other.basicInfo == basicInfo) &&
            (identical(other.address, address) || other.address == address));
  }

  @override
  int get hashCode => Object.hash(runtimeType, basicInfo, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoApplicantImplCopyWith<_$CoApplicantImpl> get copyWith =>
      __$$CoApplicantImplCopyWithImpl<_$CoApplicantImpl>(this, _$identity);
}

abstract class _CoApplicant implements CoApplicant {
  const factory _CoApplicant(
      {required final BasicInfo basicInfo,
      required final Address address}) = _$CoApplicantImpl;

  @override
  BasicInfo get basicInfo;
  @override
  Address get address;
  @override
  @JsonKey(ignore: true)
  _$$CoApplicantImplCopyWith<_$CoApplicantImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
