// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vehicle_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VehicleDetails {
  Name get dealerName => throw _privateConstructorUsedError;
  String? get subDealerName => throw _privateConstructorUsedError;
  String? get brokerName => throw _privateConstructorUsedError;
  Name get vehicleName => throw _privateConstructorUsedError;
  RequiredPrice get exShowroomPrice => throw _privateConstructorUsedError;
  RequiredPrice get onRoadPrice => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VehicleDetailsCopyWith<VehicleDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleDetailsCopyWith<$Res> {
  factory $VehicleDetailsCopyWith(
          VehicleDetails value, $Res Function(VehicleDetails) then) =
      _$VehicleDetailsCopyWithImpl<$Res, VehicleDetails>;
  @useResult
  $Res call(
      {Name dealerName,
      String? subDealerName,
      String? brokerName,
      Name vehicleName,
      RequiredPrice exShowroomPrice,
      RequiredPrice onRoadPrice});
}

/// @nodoc
class _$VehicleDetailsCopyWithImpl<$Res, $Val extends VehicleDetails>
    implements $VehicleDetailsCopyWith<$Res> {
  _$VehicleDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dealerName = null,
    Object? subDealerName = freezed,
    Object? brokerName = freezed,
    Object? vehicleName = null,
    Object? exShowroomPrice = null,
    Object? onRoadPrice = null,
  }) {
    return _then(_value.copyWith(
      dealerName: null == dealerName
          ? _value.dealerName
          : dealerName // ignore: cast_nullable_to_non_nullable
              as Name,
      subDealerName: freezed == subDealerName
          ? _value.subDealerName
          : subDealerName // ignore: cast_nullable_to_non_nullable
              as String?,
      brokerName: freezed == brokerName
          ? _value.brokerName
          : brokerName // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleName: null == vehicleName
          ? _value.vehicleName
          : vehicleName // ignore: cast_nullable_to_non_nullable
              as Name,
      exShowroomPrice: null == exShowroomPrice
          ? _value.exShowroomPrice
          : exShowroomPrice // ignore: cast_nullable_to_non_nullable
              as RequiredPrice,
      onRoadPrice: null == onRoadPrice
          ? _value.onRoadPrice
          : onRoadPrice // ignore: cast_nullable_to_non_nullable
              as RequiredPrice,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VehicleDetailsImplCopyWith<$Res>
    implements $VehicleDetailsCopyWith<$Res> {
  factory _$$VehicleDetailsImplCopyWith(_$VehicleDetailsImpl value,
          $Res Function(_$VehicleDetailsImpl) then) =
      __$$VehicleDetailsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Name dealerName,
      String? subDealerName,
      String? brokerName,
      Name vehicleName,
      RequiredPrice exShowroomPrice,
      RequiredPrice onRoadPrice});
}

/// @nodoc
class __$$VehicleDetailsImplCopyWithImpl<$Res>
    extends _$VehicleDetailsCopyWithImpl<$Res, _$VehicleDetailsImpl>
    implements _$$VehicleDetailsImplCopyWith<$Res> {
  __$$VehicleDetailsImplCopyWithImpl(
      _$VehicleDetailsImpl _value, $Res Function(_$VehicleDetailsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dealerName = null,
    Object? subDealerName = freezed,
    Object? brokerName = freezed,
    Object? vehicleName = null,
    Object? exShowroomPrice = null,
    Object? onRoadPrice = null,
  }) {
    return _then(_$VehicleDetailsImpl(
      dealerName: null == dealerName
          ? _value.dealerName
          : dealerName // ignore: cast_nullable_to_non_nullable
              as Name,
      subDealerName: freezed == subDealerName
          ? _value.subDealerName
          : subDealerName // ignore: cast_nullable_to_non_nullable
              as String?,
      brokerName: freezed == brokerName
          ? _value.brokerName
          : brokerName // ignore: cast_nullable_to_non_nullable
              as String?,
      vehicleName: null == vehicleName
          ? _value.vehicleName
          : vehicleName // ignore: cast_nullable_to_non_nullable
              as Name,
      exShowroomPrice: null == exShowroomPrice
          ? _value.exShowroomPrice
          : exShowroomPrice // ignore: cast_nullable_to_non_nullable
              as RequiredPrice,
      onRoadPrice: null == onRoadPrice
          ? _value.onRoadPrice
          : onRoadPrice // ignore: cast_nullable_to_non_nullable
              as RequiredPrice,
    ));
  }
}

/// @nodoc

class _$VehicleDetailsImpl extends _VehicleDetails {
  const _$VehicleDetailsImpl(
      {required this.dealerName,
      required this.subDealerName,
      required this.brokerName,
      required this.vehicleName,
      required this.exShowroomPrice,
      required this.onRoadPrice})
      : super._();

  @override
  final Name dealerName;
  @override
  final String? subDealerName;
  @override
  final String? brokerName;
  @override
  final Name vehicleName;
  @override
  final RequiredPrice exShowroomPrice;
  @override
  final RequiredPrice onRoadPrice;

  @override
  String toString() {
    return 'VehicleDetails(dealerName: $dealerName, subDealerName: $subDealerName, brokerName: $brokerName, vehicleName: $vehicleName, exShowroomPrice: $exShowroomPrice, onRoadPrice: $onRoadPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VehicleDetailsImpl &&
            (identical(other.dealerName, dealerName) ||
                other.dealerName == dealerName) &&
            (identical(other.subDealerName, subDealerName) ||
                other.subDealerName == subDealerName) &&
            (identical(other.brokerName, brokerName) ||
                other.brokerName == brokerName) &&
            (identical(other.vehicleName, vehicleName) ||
                other.vehicleName == vehicleName) &&
            (identical(other.exShowroomPrice, exShowroomPrice) ||
                other.exShowroomPrice == exShowroomPrice) &&
            (identical(other.onRoadPrice, onRoadPrice) ||
                other.onRoadPrice == onRoadPrice));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dealerName, subDealerName,
      brokerName, vehicleName, exShowroomPrice, onRoadPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VehicleDetailsImplCopyWith<_$VehicleDetailsImpl> get copyWith =>
      __$$VehicleDetailsImplCopyWithImpl<_$VehicleDetailsImpl>(
          this, _$identity);
}

abstract class _VehicleDetails extends VehicleDetails {
  const factory _VehicleDetails(
      {required final Name dealerName,
      required final String? subDealerName,
      required final String? brokerName,
      required final Name vehicleName,
      required final RequiredPrice exShowroomPrice,
      required final RequiredPrice onRoadPrice}) = _$VehicleDetailsImpl;
  const _VehicleDetails._() : super._();

  @override
  Name get dealerName;
  @override
  String? get subDealerName;
  @override
  String? get brokerName;
  @override
  Name get vehicleName;
  @override
  RequiredPrice get exShowroomPrice;
  @override
  RequiredPrice get onRoadPrice;
  @override
  @JsonKey(ignore: true)
  _$$VehicleDetailsImplCopyWith<_$VehicleDetailsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
