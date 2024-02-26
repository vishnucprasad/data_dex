// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'applicant_address_form_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ApplicantAddressFormData {
  HouseName get houseName => throw _privateConstructorUsedError;
  PostOffice get postOffice => throw _privateConstructorUsedError;
  StreetName get streetName => throw _privateConstructorUsedError;
  PinCode get pincode => throw _privateConstructorUsedError;
  dynamic get key => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ApplicantAddressFormDataCopyWith<ApplicantAddressFormData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplicantAddressFormDataCopyWith<$Res> {
  factory $ApplicantAddressFormDataCopyWith(ApplicantAddressFormData value,
          $Res Function(ApplicantAddressFormData) then) =
      _$ApplicantAddressFormDataCopyWithImpl<$Res, ApplicantAddressFormData>;
  @useResult
  $Res call(
      {HouseName houseName,
      PostOffice postOffice,
      StreetName streetName,
      PinCode pincode,
      dynamic key});
}

/// @nodoc
class _$ApplicantAddressFormDataCopyWithImpl<$Res,
        $Val extends ApplicantAddressFormData>
    implements $ApplicantAddressFormDataCopyWith<$Res> {
  _$ApplicantAddressFormDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? houseName = null,
    Object? postOffice = null,
    Object? streetName = null,
    Object? pincode = null,
    Object? key = freezed,
  }) {
    return _then(_value.copyWith(
      houseName: null == houseName
          ? _value.houseName
          : houseName // ignore: cast_nullable_to_non_nullable
              as HouseName,
      postOffice: null == postOffice
          ? _value.postOffice
          : postOffice // ignore: cast_nullable_to_non_nullable
              as PostOffice,
      streetName: null == streetName
          ? _value.streetName
          : streetName // ignore: cast_nullable_to_non_nullable
              as StreetName,
      pincode: null == pincode
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as PinCode,
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApplicantAddressFormDataImplCopyWith<$Res>
    implements $ApplicantAddressFormDataCopyWith<$Res> {
  factory _$$ApplicantAddressFormDataImplCopyWith(
          _$ApplicantAddressFormDataImpl value,
          $Res Function(_$ApplicantAddressFormDataImpl) then) =
      __$$ApplicantAddressFormDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {HouseName houseName,
      PostOffice postOffice,
      StreetName streetName,
      PinCode pincode,
      dynamic key});
}

/// @nodoc
class __$$ApplicantAddressFormDataImplCopyWithImpl<$Res>
    extends _$ApplicantAddressFormDataCopyWithImpl<$Res,
        _$ApplicantAddressFormDataImpl>
    implements _$$ApplicantAddressFormDataImplCopyWith<$Res> {
  __$$ApplicantAddressFormDataImplCopyWithImpl(
      _$ApplicantAddressFormDataImpl _value,
      $Res Function(_$ApplicantAddressFormDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? houseName = null,
    Object? postOffice = null,
    Object? streetName = null,
    Object? pincode = null,
    Object? key = freezed,
  }) {
    return _then(_$ApplicantAddressFormDataImpl(
      houseName: null == houseName
          ? _value.houseName
          : houseName // ignore: cast_nullable_to_non_nullable
              as HouseName,
      postOffice: null == postOffice
          ? _value.postOffice
          : postOffice // ignore: cast_nullable_to_non_nullable
              as PostOffice,
      streetName: null == streetName
          ? _value.streetName
          : streetName // ignore: cast_nullable_to_non_nullable
              as StreetName,
      pincode: null == pincode
          ? _value.pincode
          : pincode // ignore: cast_nullable_to_non_nullable
              as PinCode,
      key: freezed == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$ApplicantAddressFormDataImpl extends _ApplicantAddressFormData {
  const _$ApplicantAddressFormDataImpl(
      {required this.houseName,
      required this.postOffice,
      required this.streetName,
      required this.pincode,
      this.key})
      : super._();

  @override
  final HouseName houseName;
  @override
  final PostOffice postOffice;
  @override
  final StreetName streetName;
  @override
  final PinCode pincode;
  @override
  final dynamic key;

  @override
  String toString() {
    return 'ApplicantAddressFormData(houseName: $houseName, postOffice: $postOffice, streetName: $streetName, pincode: $pincode, key: $key)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApplicantAddressFormDataImpl &&
            (identical(other.houseName, houseName) ||
                other.houseName == houseName) &&
            (identical(other.postOffice, postOffice) ||
                other.postOffice == postOffice) &&
            (identical(other.streetName, streetName) ||
                other.streetName == streetName) &&
            (identical(other.pincode, pincode) || other.pincode == pincode) &&
            const DeepCollectionEquality().equals(other.key, key));
  }

  @override
  int get hashCode => Object.hash(runtimeType, houseName, postOffice,
      streetName, pincode, const DeepCollectionEquality().hash(key));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApplicantAddressFormDataImplCopyWith<_$ApplicantAddressFormDataImpl>
      get copyWith => __$$ApplicantAddressFormDataImplCopyWithImpl<
          _$ApplicantAddressFormDataImpl>(this, _$identity);
}

abstract class _ApplicantAddressFormData extends ApplicantAddressFormData {
  const factory _ApplicantAddressFormData(
      {required final HouseName houseName,
      required final PostOffice postOffice,
      required final StreetName streetName,
      required final PinCode pincode,
      final dynamic key}) = _$ApplicantAddressFormDataImpl;
  const _ApplicantAddressFormData._() : super._();

  @override
  HouseName get houseName;
  @override
  PostOffice get postOffice;
  @override
  StreetName get streetName;
  @override
  PinCode get pincode;
  @override
  dynamic get key;
  @override
  @JsonKey(ignore: true)
  _$$ApplicantAddressFormDataImplCopyWith<_$ApplicantAddressFormDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
