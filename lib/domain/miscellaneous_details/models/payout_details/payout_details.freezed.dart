// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payout_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PayoutDetails {
  String? get payeeName => throw _privateConstructorUsedError;
  OptionalPrice get payeeAmount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PayoutDetailsCopyWith<PayoutDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayoutDetailsCopyWith<$Res> {
  factory $PayoutDetailsCopyWith(
          PayoutDetails value, $Res Function(PayoutDetails) then) =
      _$PayoutDetailsCopyWithImpl<$Res, PayoutDetails>;
  @useResult
  $Res call({String? payeeName, OptionalPrice payeeAmount});
}

/// @nodoc
class _$PayoutDetailsCopyWithImpl<$Res, $Val extends PayoutDetails>
    implements $PayoutDetailsCopyWith<$Res> {
  _$PayoutDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payeeName = freezed,
    Object? payeeAmount = null,
  }) {
    return _then(_value.copyWith(
      payeeName: freezed == payeeName
          ? _value.payeeName
          : payeeName // ignore: cast_nullable_to_non_nullable
              as String?,
      payeeAmount: null == payeeAmount
          ? _value.payeeAmount
          : payeeAmount // ignore: cast_nullable_to_non_nullable
              as OptionalPrice,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PayoutDetailsImplCopyWith<$Res>
    implements $PayoutDetailsCopyWith<$Res> {
  factory _$$PayoutDetailsImplCopyWith(
          _$PayoutDetailsImpl value, $Res Function(_$PayoutDetailsImpl) then) =
      __$$PayoutDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? payeeName, OptionalPrice payeeAmount});
}

/// @nodoc
class __$$PayoutDetailsImplCopyWithImpl<$Res>
    extends _$PayoutDetailsCopyWithImpl<$Res, _$PayoutDetailsImpl>
    implements _$$PayoutDetailsImplCopyWith<$Res> {
  __$$PayoutDetailsImplCopyWithImpl(
      _$PayoutDetailsImpl _value, $Res Function(_$PayoutDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payeeName = freezed,
    Object? payeeAmount = null,
  }) {
    return _then(_$PayoutDetailsImpl(
      payeeName: freezed == payeeName
          ? _value.payeeName
          : payeeName // ignore: cast_nullable_to_non_nullable
              as String?,
      payeeAmount: null == payeeAmount
          ? _value.payeeAmount
          : payeeAmount // ignore: cast_nullable_to_non_nullable
              as OptionalPrice,
    ));
  }
}

/// @nodoc

class _$PayoutDetailsImpl extends _PayoutDetails {
  const _$PayoutDetailsImpl(
      {required this.payeeName, required this.payeeAmount})
      : super._();

  @override
  final String? payeeName;
  @override
  final OptionalPrice payeeAmount;

  @override
  String toString() {
    return 'PayoutDetails(payeeName: $payeeName, payeeAmount: $payeeAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PayoutDetailsImpl &&
            (identical(other.payeeName, payeeName) ||
                other.payeeName == payeeName) &&
            (identical(other.payeeAmount, payeeAmount) ||
                other.payeeAmount == payeeAmount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, payeeName, payeeAmount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PayoutDetailsImplCopyWith<_$PayoutDetailsImpl> get copyWith =>
      __$$PayoutDetailsImplCopyWithImpl<_$PayoutDetailsImpl>(this, _$identity);
}

abstract class _PayoutDetails extends PayoutDetails {
  const factory _PayoutDetails(
      {required final String? payeeName,
      required final OptionalPrice payeeAmount}) = _$PayoutDetailsImpl;
  const _PayoutDetails._() : super._();

  @override
  String? get payeeName;
  @override
  OptionalPrice get payeeAmount;
  @override
  @JsonKey(ignore: true)
  _$$PayoutDetailsImplCopyWith<_$PayoutDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
