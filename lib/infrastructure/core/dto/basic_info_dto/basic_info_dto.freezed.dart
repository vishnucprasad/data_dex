// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'basic_info_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BasicInfoDto _$BasicInfoDtoFromJson(Map<String, dynamic> json) {
  return _BasicInfoDto.fromJson(json);
}

/// @nodoc
mixin _$BasicInfoDto {
  String get name => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String? get emailAddress => throw _privateConstructorUsedError;
  String get dateOfBirth => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BasicInfoDtoCopyWith<BasicInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BasicInfoDtoCopyWith<$Res> {
  factory $BasicInfoDtoCopyWith(
          BasicInfoDto value, $Res Function(BasicInfoDto) then) =
      _$BasicInfoDtoCopyWithImpl<$Res, BasicInfoDto>;
  @useResult
  $Res call(
      {String name,
      String phoneNumber,
      String? emailAddress,
      String dateOfBirth});
}

/// @nodoc
class _$BasicInfoDtoCopyWithImpl<$Res, $Val extends BasicInfoDto>
    implements $BasicInfoDtoCopyWith<$Res> {
  _$BasicInfoDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? phoneNumber = null,
    Object? emailAddress = freezed,
    Object? dateOfBirth = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      emailAddress: freezed == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BasicInfoDtoImplCopyWith<$Res>
    implements $BasicInfoDtoCopyWith<$Res> {
  factory _$$BasicInfoDtoImplCopyWith(
          _$BasicInfoDtoImpl value, $Res Function(_$BasicInfoDtoImpl) then) =
      __$$BasicInfoDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String phoneNumber,
      String? emailAddress,
      String dateOfBirth});
}

/// @nodoc
class __$$BasicInfoDtoImplCopyWithImpl<$Res>
    extends _$BasicInfoDtoCopyWithImpl<$Res, _$BasicInfoDtoImpl>
    implements _$$BasicInfoDtoImplCopyWith<$Res> {
  __$$BasicInfoDtoImplCopyWithImpl(
      _$BasicInfoDtoImpl _value, $Res Function(_$BasicInfoDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? phoneNumber = null,
    Object? emailAddress = freezed,
    Object? dateOfBirth = null,
  }) {
    return _then(_$BasicInfoDtoImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      emailAddress: freezed == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BasicInfoDtoImpl extends _BasicInfoDto {
  const _$BasicInfoDtoImpl(
      {required this.name,
      required this.phoneNumber,
      required this.emailAddress,
      required this.dateOfBirth})
      : super._();

  factory _$BasicInfoDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$BasicInfoDtoImplFromJson(json);

  @override
  final String name;
  @override
  final String phoneNumber;
  @override
  final String? emailAddress;
  @override
  final String dateOfBirth;

  @override
  String toString() {
    return 'BasicInfoDto(name: $name, phoneNumber: $phoneNumber, emailAddress: $emailAddress, dateOfBirth: $dateOfBirth)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BasicInfoDtoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, phoneNumber, emailAddress, dateOfBirth);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BasicInfoDtoImplCopyWith<_$BasicInfoDtoImpl> get copyWith =>
      __$$BasicInfoDtoImplCopyWithImpl<_$BasicInfoDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BasicInfoDtoImplToJson(
      this,
    );
  }
}

abstract class _BasicInfoDto extends BasicInfoDto {
  const factory _BasicInfoDto(
      {required final String name,
      required final String phoneNumber,
      required final String? emailAddress,
      required final String dateOfBirth}) = _$BasicInfoDtoImpl;
  const _BasicInfoDto._() : super._();

  factory _BasicInfoDto.fromJson(Map<String, dynamic> json) =
      _$BasicInfoDtoImpl.fromJson;

  @override
  String get name;
  @override
  String get phoneNumber;
  @override
  String? get emailAddress;
  @override
  String get dateOfBirth;
  @override
  @JsonKey(ignore: true)
  _$$BasicInfoDtoImplCopyWith<_$BasicInfoDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
