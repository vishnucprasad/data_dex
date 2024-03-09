// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reference_details_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReferenceDetailsDto _$ReferenceDetailsDtoFromJson(Map<String, dynamic> json) {
  return _ReferenceDetailsDto.fromJson(json);
}

/// @nodoc
mixin _$ReferenceDetailsDto {
  String get referenceOneName => throw _privateConstructorUsedError;
  String get referenceOnePhoneNumber => throw _privateConstructorUsedError;
  String get referenceTwoName => throw _privateConstructorUsedError;
  String get referenceTwoPhoneNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReferenceDetailsDtoCopyWith<ReferenceDetailsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReferenceDetailsDtoCopyWith<$Res> {
  factory $ReferenceDetailsDtoCopyWith(
          ReferenceDetailsDto value, $Res Function(ReferenceDetailsDto) then) =
      _$ReferenceDetailsDtoCopyWithImpl<$Res, ReferenceDetailsDto>;
  @useResult
  $Res call(
      {String referenceOneName,
      String referenceOnePhoneNumber,
      String referenceTwoName,
      String referenceTwoPhoneNumber});
}

/// @nodoc
class _$ReferenceDetailsDtoCopyWithImpl<$Res, $Val extends ReferenceDetailsDto>
    implements $ReferenceDetailsDtoCopyWith<$Res> {
  _$ReferenceDetailsDtoCopyWithImpl(this._value, this._then);

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
              as String,
      referenceOnePhoneNumber: null == referenceOnePhoneNumber
          ? _value.referenceOnePhoneNumber
          : referenceOnePhoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      referenceTwoName: null == referenceTwoName
          ? _value.referenceTwoName
          : referenceTwoName // ignore: cast_nullable_to_non_nullable
              as String,
      referenceTwoPhoneNumber: null == referenceTwoPhoneNumber
          ? _value.referenceTwoPhoneNumber
          : referenceTwoPhoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReferenceDetailsDtoImplCopyWith<$Res>
    implements $ReferenceDetailsDtoCopyWith<$Res> {
  factory _$$ReferenceDetailsDtoImplCopyWith(_$ReferenceDetailsDtoImpl value,
          $Res Function(_$ReferenceDetailsDtoImpl) then) =
      __$$ReferenceDetailsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String referenceOneName,
      String referenceOnePhoneNumber,
      String referenceTwoName,
      String referenceTwoPhoneNumber});
}

/// @nodoc
class __$$ReferenceDetailsDtoImplCopyWithImpl<$Res>
    extends _$ReferenceDetailsDtoCopyWithImpl<$Res, _$ReferenceDetailsDtoImpl>
    implements _$$ReferenceDetailsDtoImplCopyWith<$Res> {
  __$$ReferenceDetailsDtoImplCopyWithImpl(_$ReferenceDetailsDtoImpl _value,
      $Res Function(_$ReferenceDetailsDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? referenceOneName = null,
    Object? referenceOnePhoneNumber = null,
    Object? referenceTwoName = null,
    Object? referenceTwoPhoneNumber = null,
  }) {
    return _then(_$ReferenceDetailsDtoImpl(
      referenceOneName: null == referenceOneName
          ? _value.referenceOneName
          : referenceOneName // ignore: cast_nullable_to_non_nullable
              as String,
      referenceOnePhoneNumber: null == referenceOnePhoneNumber
          ? _value.referenceOnePhoneNumber
          : referenceOnePhoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      referenceTwoName: null == referenceTwoName
          ? _value.referenceTwoName
          : referenceTwoName // ignore: cast_nullable_to_non_nullable
              as String,
      referenceTwoPhoneNumber: null == referenceTwoPhoneNumber
          ? _value.referenceTwoPhoneNumber
          : referenceTwoPhoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReferenceDetailsDtoImpl extends _ReferenceDetailsDto {
  const _$ReferenceDetailsDtoImpl(
      {required this.referenceOneName,
      required this.referenceOnePhoneNumber,
      required this.referenceTwoName,
      required this.referenceTwoPhoneNumber})
      : super._();

  factory _$ReferenceDetailsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReferenceDetailsDtoImplFromJson(json);

  @override
  final String referenceOneName;
  @override
  final String referenceOnePhoneNumber;
  @override
  final String referenceTwoName;
  @override
  final String referenceTwoPhoneNumber;

  @override
  String toString() {
    return 'ReferenceDetailsDto(referenceOneName: $referenceOneName, referenceOnePhoneNumber: $referenceOnePhoneNumber, referenceTwoName: $referenceTwoName, referenceTwoPhoneNumber: $referenceTwoPhoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReferenceDetailsDtoImpl &&
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, referenceOneName,
      referenceOnePhoneNumber, referenceTwoName, referenceTwoPhoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReferenceDetailsDtoImplCopyWith<_$ReferenceDetailsDtoImpl> get copyWith =>
      __$$ReferenceDetailsDtoImplCopyWithImpl<_$ReferenceDetailsDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReferenceDetailsDtoImplToJson(
      this,
    );
  }
}

abstract class _ReferenceDetailsDto extends ReferenceDetailsDto {
  const factory _ReferenceDetailsDto(
          {required final String referenceOneName,
          required final String referenceOnePhoneNumber,
          required final String referenceTwoName,
          required final String referenceTwoPhoneNumber}) =
      _$ReferenceDetailsDtoImpl;
  const _ReferenceDetailsDto._() : super._();

  factory _ReferenceDetailsDto.fromJson(Map<String, dynamic> json) =
      _$ReferenceDetailsDtoImpl.fromJson;

  @override
  String get referenceOneName;
  @override
  String get referenceOnePhoneNumber;
  @override
  String get referenceTwoName;
  @override
  String get referenceTwoPhoneNumber;
  @override
  @JsonKey(ignore: true)
  _$$ReferenceDetailsDtoImplCopyWith<_$ReferenceDetailsDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
