// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vehicle_details_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VehicleDetailsDto _$VehicleDetailsDtoFromJson(Map<String, dynamic> json) {
  return _VehicleDetailsDto.fromJson(json);
}

/// @nodoc
mixin _$VehicleDetailsDto {
  String get dealerName => throw _privateConstructorUsedError;
  String? get subDealerName => throw _privateConstructorUsedError;
  String? get brokerName => throw _privateConstructorUsedError;
  String get vehicleName => throw _privateConstructorUsedError;
  double get exShowroomPrice => throw _privateConstructorUsedError;
  double get onRoadPrice => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VehicleDetailsDtoCopyWith<VehicleDetailsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VehicleDetailsDtoCopyWith<$Res> {
  factory $VehicleDetailsDtoCopyWith(
          VehicleDetailsDto value, $Res Function(VehicleDetailsDto) then) =
      _$VehicleDetailsDtoCopyWithImpl<$Res, VehicleDetailsDto>;
  @useResult
  $Res call(
      {String dealerName,
      String? subDealerName,
      String? brokerName,
      String vehicleName,
      double exShowroomPrice,
      double onRoadPrice});
}

/// @nodoc
class _$VehicleDetailsDtoCopyWithImpl<$Res, $Val extends VehicleDetailsDto>
    implements $VehicleDetailsDtoCopyWith<$Res> {
  _$VehicleDetailsDtoCopyWithImpl(this._value, this._then);

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
              as String,
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
              as String,
      exShowroomPrice: null == exShowroomPrice
          ? _value.exShowroomPrice
          : exShowroomPrice // ignore: cast_nullable_to_non_nullable
              as double,
      onRoadPrice: null == onRoadPrice
          ? _value.onRoadPrice
          : onRoadPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VehicleDetailsDtoImplCopyWith<$Res>
    implements $VehicleDetailsDtoCopyWith<$Res> {
  factory _$$VehicleDetailsDtoImplCopyWith(_$VehicleDetailsDtoImpl value,
          $Res Function(_$VehicleDetailsDtoImpl) then) =
      __$$VehicleDetailsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String dealerName,
      String? subDealerName,
      String? brokerName,
      String vehicleName,
      double exShowroomPrice,
      double onRoadPrice});
}

/// @nodoc
class __$$VehicleDetailsDtoImplCopyWithImpl<$Res>
    extends _$VehicleDetailsDtoCopyWithImpl<$Res, _$VehicleDetailsDtoImpl>
    implements _$$VehicleDetailsDtoImplCopyWith<$Res> {
  __$$VehicleDetailsDtoImplCopyWithImpl(_$VehicleDetailsDtoImpl _value,
      $Res Function(_$VehicleDetailsDtoImpl) _then)
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
    return _then(_$VehicleDetailsDtoImpl(
      dealerName: null == dealerName
          ? _value.dealerName
          : dealerName // ignore: cast_nullable_to_non_nullable
              as String,
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
              as String,
      exShowroomPrice: null == exShowroomPrice
          ? _value.exShowroomPrice
          : exShowroomPrice // ignore: cast_nullable_to_non_nullable
              as double,
      onRoadPrice: null == onRoadPrice
          ? _value.onRoadPrice
          : onRoadPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VehicleDetailsDtoImpl extends _VehicleDetailsDto {
  const _$VehicleDetailsDtoImpl(
      {required this.dealerName,
      required this.subDealerName,
      required this.brokerName,
      required this.vehicleName,
      required this.exShowroomPrice,
      required this.onRoadPrice})
      : super._();

  factory _$VehicleDetailsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$VehicleDetailsDtoImplFromJson(json);

  @override
  final String dealerName;
  @override
  final String? subDealerName;
  @override
  final String? brokerName;
  @override
  final String vehicleName;
  @override
  final double exShowroomPrice;
  @override
  final double onRoadPrice;

  @override
  String toString() {
    return 'VehicleDetailsDto(dealerName: $dealerName, subDealerName: $subDealerName, brokerName: $brokerName, vehicleName: $vehicleName, exShowroomPrice: $exShowroomPrice, onRoadPrice: $onRoadPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VehicleDetailsDtoImpl &&
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, dealerName, subDealerName,
      brokerName, vehicleName, exShowroomPrice, onRoadPrice);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VehicleDetailsDtoImplCopyWith<_$VehicleDetailsDtoImpl> get copyWith =>
      __$$VehicleDetailsDtoImplCopyWithImpl<_$VehicleDetailsDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VehicleDetailsDtoImplToJson(
      this,
    );
  }
}

abstract class _VehicleDetailsDto extends VehicleDetailsDto {
  const factory _VehicleDetailsDto(
      {required final String dealerName,
      required final String? subDealerName,
      required final String? brokerName,
      required final String vehicleName,
      required final double exShowroomPrice,
      required final double onRoadPrice}) = _$VehicleDetailsDtoImpl;
  const _VehicleDetailsDto._() : super._();

  factory _VehicleDetailsDto.fromJson(Map<String, dynamic> json) =
      _$VehicleDetailsDtoImpl.fromJson;

  @override
  String get dealerName;
  @override
  String? get subDealerName;
  @override
  String? get brokerName;
  @override
  String get vehicleName;
  @override
  double get exShowroomPrice;
  @override
  double get onRoadPrice;
  @override
  @JsonKey(ignore: true)
  _$$VehicleDetailsDtoImplCopyWith<_$VehicleDetailsDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
