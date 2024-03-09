// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payout_details_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PayoutDetailsDto _$PayoutDetailsDtoFromJson(Map<String, dynamic> json) {
  return _PayoutDetailsDto.fromJson(json);
}

/// @nodoc
mixin _$PayoutDetailsDto {
  String? get payeeName => throw _privateConstructorUsedError;
  double? get payeeAmount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PayoutDetailsDtoCopyWith<PayoutDetailsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayoutDetailsDtoCopyWith<$Res> {
  factory $PayoutDetailsDtoCopyWith(
          PayoutDetailsDto value, $Res Function(PayoutDetailsDto) then) =
      _$PayoutDetailsDtoCopyWithImpl<$Res, PayoutDetailsDto>;
  @useResult
  $Res call({String? payeeName, double? payeeAmount});
}

/// @nodoc
class _$PayoutDetailsDtoCopyWithImpl<$Res, $Val extends PayoutDetailsDto>
    implements $PayoutDetailsDtoCopyWith<$Res> {
  _$PayoutDetailsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payeeName = freezed,
    Object? payeeAmount = freezed,
  }) {
    return _then(_value.copyWith(
      payeeName: freezed == payeeName
          ? _value.payeeName
          : payeeName // ignore: cast_nullable_to_non_nullable
              as String?,
      payeeAmount: freezed == payeeAmount
          ? _value.payeeAmount
          : payeeAmount // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PayoutDetailsDtoImplCopyWith<$Res>
    implements $PayoutDetailsDtoCopyWith<$Res> {
  factory _$$PayoutDetailsDtoImplCopyWith(_$PayoutDetailsDtoImpl value,
          $Res Function(_$PayoutDetailsDtoImpl) then) =
      __$$PayoutDetailsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? payeeName, double? payeeAmount});
}

/// @nodoc
class __$$PayoutDetailsDtoImplCopyWithImpl<$Res>
    extends _$PayoutDetailsDtoCopyWithImpl<$Res, _$PayoutDetailsDtoImpl>
    implements _$$PayoutDetailsDtoImplCopyWith<$Res> {
  __$$PayoutDetailsDtoImplCopyWithImpl(_$PayoutDetailsDtoImpl _value,
      $Res Function(_$PayoutDetailsDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payeeName = freezed,
    Object? payeeAmount = freezed,
  }) {
    return _then(_$PayoutDetailsDtoImpl(
      payeeName: freezed == payeeName
          ? _value.payeeName
          : payeeName // ignore: cast_nullable_to_non_nullable
              as String?,
      payeeAmount: freezed == payeeAmount
          ? _value.payeeAmount
          : payeeAmount // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PayoutDetailsDtoImpl extends _PayoutDetailsDto {
  const _$PayoutDetailsDtoImpl(
      {required this.payeeName, required this.payeeAmount})
      : super._();

  factory _$PayoutDetailsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PayoutDetailsDtoImplFromJson(json);

  @override
  final String? payeeName;
  @override
  final double? payeeAmount;

  @override
  String toString() {
    return 'PayoutDetailsDto(payeeName: $payeeName, payeeAmount: $payeeAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayoutDetailsDtoImpl &&
            (identical(other.payeeName, payeeName) ||
                other.payeeName == payeeName) &&
            (identical(other.payeeAmount, payeeAmount) ||
                other.payeeAmount == payeeAmount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, payeeName, payeeAmount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PayoutDetailsDtoImplCopyWith<_$PayoutDetailsDtoImpl> get copyWith =>
      __$$PayoutDetailsDtoImplCopyWithImpl<_$PayoutDetailsDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PayoutDetailsDtoImplToJson(
      this,
    );
  }
}

abstract class _PayoutDetailsDto extends PayoutDetailsDto {
  const factory _PayoutDetailsDto(
      {required final String? payeeName,
      required final double? payeeAmount}) = _$PayoutDetailsDtoImpl;
  const _PayoutDetailsDto._() : super._();

  factory _PayoutDetailsDto.fromJson(Map<String, dynamic> json) =
      _$PayoutDetailsDtoImpl.fromJson;

  @override
  String? get payeeName;
  @override
  double? get payeeAmount;
  @override
  @JsonKey(ignore: true)
  _$$PayoutDetailsDtoImplCopyWith<_$PayoutDetailsDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
