// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reference_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ReferenceDetails {
  Name get referenceOneName => throw _privateConstructorUsedError;
  PhoneNumber get referenceOnePhoneNumber => throw _privateConstructorUsedError;
  Name get referenceTwoName => throw _privateConstructorUsedError;
  PhoneNumber get referenceTwoPhoneNumber => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReferenceDetailsCopyWith<ReferenceDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReferenceDetailsCopyWith<$Res> {
  factory $ReferenceDetailsCopyWith(
          ReferenceDetails value, $Res Function(ReferenceDetails) then) =
      _$ReferenceDetailsCopyWithImpl<$Res, ReferenceDetails>;
  @useResult
  $Res call(
      {Name referenceOneName,
      PhoneNumber referenceOnePhoneNumber,
      Name referenceTwoName,
      PhoneNumber referenceTwoPhoneNumber});
}

/// @nodoc
class _$ReferenceDetailsCopyWithImpl<$Res, $Val extends ReferenceDetails>
    implements $ReferenceDetailsCopyWith<$Res> {
  _$ReferenceDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? referenceOneName = null,
    Object? referenceOnePhoneNumber = null,
    Object? referenceTwoName = null,
    Object? referenceTwoPhoneNumber = null,
  }) {
    return _then(_value.copyWith(
      referenceOneName: null == referenceOneName
          ? _value.referenceOneName
          : referenceOneName // ignore: cast_nullable_to_non_nullable
              as Name,
      referenceOnePhoneNumber: null == referenceOnePhoneNumber
          ? _value.referenceOnePhoneNumber
          : referenceOnePhoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
      referenceTwoName: null == referenceTwoName
          ? _value.referenceTwoName
          : referenceTwoName // ignore: cast_nullable_to_non_nullable
              as Name,
      referenceTwoPhoneNumber: null == referenceTwoPhoneNumber
          ? _value.referenceTwoPhoneNumber
          : referenceTwoPhoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReferenceDetailsImplCopyWith<$Res>
    implements $ReferenceDetailsCopyWith<$Res> {
  factory _$$ReferenceDetailsImplCopyWith(_$ReferenceDetailsImpl value,
          $Res Function(_$ReferenceDetailsImpl) then) =
      __$$ReferenceDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Name referenceOneName,
      PhoneNumber referenceOnePhoneNumber,
      Name referenceTwoName,
      PhoneNumber referenceTwoPhoneNumber});
}

/// @nodoc
class __$$ReferenceDetailsImplCopyWithImpl<$Res>
    extends _$ReferenceDetailsCopyWithImpl<$Res, _$ReferenceDetailsImpl>
    implements _$$ReferenceDetailsImplCopyWith<$Res> {
  __$$ReferenceDetailsImplCopyWithImpl(_$ReferenceDetailsImpl _value,
      $Res Function(_$ReferenceDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? referenceOneName = null,
    Object? referenceOnePhoneNumber = null,
    Object? referenceTwoName = null,
    Object? referenceTwoPhoneNumber = null,
  }) {
    return _then(_$ReferenceDetailsImpl(
      referenceOneName: null == referenceOneName
          ? _value.referenceOneName
          : referenceOneName // ignore: cast_nullable_to_non_nullable
              as Name,
      referenceOnePhoneNumber: null == referenceOnePhoneNumber
          ? _value.referenceOnePhoneNumber
          : referenceOnePhoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
      referenceTwoName: null == referenceTwoName
          ? _value.referenceTwoName
          : referenceTwoName // ignore: cast_nullable_to_non_nullable
              as Name,
      referenceTwoPhoneNumber: null == referenceTwoPhoneNumber
          ? _value.referenceTwoPhoneNumber
          : referenceTwoPhoneNumber // ignore: cast_nullable_to_non_nullable
              as PhoneNumber,
    ));
  }
}

/// @nodoc

class _$ReferenceDetailsImpl extends _ReferenceDetails {
  const _$ReferenceDetailsImpl(
      {required this.referenceOneName,
      required this.referenceOnePhoneNumber,
      required this.referenceTwoName,
      required this.referenceTwoPhoneNumber})
      : super._();

  @override
  final Name referenceOneName;
  @override
  final PhoneNumber referenceOnePhoneNumber;
  @override
  final Name referenceTwoName;
  @override
  final PhoneNumber referenceTwoPhoneNumber;

  @override
  String toString() {
    return 'ReferenceDetails(referenceOneName: $referenceOneName, referenceOnePhoneNumber: $referenceOnePhoneNumber, referenceTwoName: $referenceTwoName, referenceTwoPhoneNumber: $referenceTwoPhoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReferenceDetailsImpl &&
            (identical(other.referenceOneName, referenceOneName) ||
                other.referenceOneName == referenceOneName) &&
            (identical(
                    other.referenceOnePhoneNumber, referenceOnePhoneNumber) ||
                other.referenceOnePhoneNumber == referenceOnePhoneNumber) &&
            (identical(other.referenceTwoName, referenceTwoName) ||
                other.referenceTwoName == referenceTwoName) &&
            (identical(
                    other.referenceTwoPhoneNumber, referenceTwoPhoneNumber) ||
                other.referenceTwoPhoneNumber == referenceTwoPhoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, referenceOneName,
      referenceOnePhoneNumber, referenceTwoName, referenceTwoPhoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReferenceDetailsImplCopyWith<_$ReferenceDetailsImpl> get copyWith =>
      __$$ReferenceDetailsImplCopyWithImpl<_$ReferenceDetailsImpl>(
          this, _$identity);
}

abstract class _ReferenceDetails extends ReferenceDetails {
  const factory _ReferenceDetails(
          {required final Name referenceOneName,
          required final PhoneNumber referenceOnePhoneNumber,
          required final Name referenceTwoName,
          required final PhoneNumber referenceTwoPhoneNumber}) =
      _$ReferenceDetailsImpl;
  const _ReferenceDetails._() : super._();

  @override
  Name get referenceOneName;
  @override
  PhoneNumber get referenceOnePhoneNumber;
  @override
  Name get referenceTwoName;
  @override
  PhoneNumber get referenceTwoPhoneNumber;
  @override
  @JsonKey(ignore: true)
  _$$ReferenceDetailsImplCopyWith<_$ReferenceDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
