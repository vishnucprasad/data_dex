// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'applicant_basic_info_form_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ApplicantBasicInfoFormData {
  Name get name => throw _privateConstructorUsedError;
  PhoneNumber get phoneNumber => throw _privateConstructorUsedError;
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  DateOfBirth get dateOfBirth => throw _privateConstructorUsedError;
  dynamic get key => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ApplicantBasicInfoFormDataCopyWith<ApplicantBasicInfoFormData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplicantBasicInfoFormDataCopyWith<$Res> {
  factory $ApplicantBasicInfoFormDataCopyWith(ApplicantBasicInfoFormData value,
          $Res Function(ApplicantBasicInfoFormData) then) =
      _$ApplicantBasicInfoFormDataCopyWithImpl<$Res,
          ApplicantBasicInfoFormData>;
  @useResult
  $Res call(
      {Name name,
      PhoneNumber phoneNumber,
      EmailAddress emailAddress,
      DateOfBirth dateOfBirth,
      dynamic key});
}

/// @nodoc
class _$ApplicantBasicInfoFormDataCopyWithImpl<$Res,
        $Val extends ApplicantBasicInfoFormData>
    implements $ApplicantBasicInfoFormDataCopyWith<$Res> {
  _$ApplicantBasicInfoFormDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? phoneNumber = null,
    Object? emailAddress = null,
    Object? dateOfBirth = null,
    Object? key = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateOfBirth,
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApplicantBasicInfoFormDataImplCopyWith<$Res>
    implements $ApplicantBasicInfoFormDataCopyWith<$Res> {
  factory _$$ApplicantBasicInfoFormDataImplCopyWith(
          _$ApplicantBasicInfoFormDataImpl value,
          $Res Function(_$ApplicantBasicInfoFormDataImpl) then) =
      __$$ApplicantBasicInfoFormDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Name name,
      PhoneNumber phoneNumber,
      EmailAddress emailAddress,
      DateOfBirth dateOfBirth,
      dynamic key});
}

/// @nodoc
class __$$ApplicantBasicInfoFormDataImplCopyWithImpl<$Res>
    extends _$ApplicantBasicInfoFormDataCopyWithImpl<$Res,
        _$ApplicantBasicInfoFormDataImpl>
    implements _$$ApplicantBasicInfoFormDataImplCopyWith<$Res> {
  __$$ApplicantBasicInfoFormDataImplCopyWithImpl(
      _$ApplicantBasicInfoFormDataImpl _value,
      $Res Function(_$ApplicantBasicInfoFormDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? phoneNumber = null,
    Object? emailAddress = null,
    Object? dateOfBirth = null,
    Object? key = freezed,
  }) {
    return _then(_$ApplicantBasicInfoFormDataImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateOfBirth,
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$ApplicantBasicInfoFormDataImpl extends _ApplicantBasicInfoFormData {
  const _$ApplicantBasicInfoFormDataImpl(
      {required this.name,
      required this.phoneNumber,
      required this.emailAddress,
      required this.dateOfBirth,
      this.key})
      : super._();

  @override
  final Name name;
  @override
  final PhoneNumber phoneNumber;
  @override
  final EmailAddress emailAddress;
  @override
  final DateOfBirth dateOfBirth;
  @override
  final dynamic key;

  @override
  String toString() {
    return 'ApplicantBasicInfoFormData(name: $name, phoneNumber: $phoneNumber, emailAddress: $emailAddress, dateOfBirth: $dateOfBirth, key: $key)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApplicantBasicInfoFormDataImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            const DeepCollectionEquality().equals(other.key, key));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, phoneNumber, emailAddress,
      dateOfBirth, const DeepCollectionEquality().hash(key));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApplicantBasicInfoFormDataImplCopyWith<_$ApplicantBasicInfoFormDataImpl>
      get copyWith => __$$ApplicantBasicInfoFormDataImplCopyWithImpl<
          _$ApplicantBasicInfoFormDataImpl>(this, _$identity);
}

abstract class _ApplicantBasicInfoFormData extends ApplicantBasicInfoFormData {
  const factory _ApplicantBasicInfoFormData(
      {required final Name name,
      required final PhoneNumber phoneNumber,
      required final EmailAddress emailAddress,
      required final DateOfBirth dateOfBirth,
      final dynamic key}) = _$ApplicantBasicInfoFormDataImpl;
  const _ApplicantBasicInfoFormData._() : super._();

  @override
  Name get name;
  @override
  PhoneNumber get phoneNumber;
  @override
  EmailAddress get emailAddress;
  @override
  DateOfBirth get dateOfBirth;
  @override
  dynamic get key;
  @override
  @JsonKey(ignore: true)
  _$$ApplicantBasicInfoFormDataImplCopyWith<_$ApplicantBasicInfoFormDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
