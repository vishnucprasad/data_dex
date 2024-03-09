// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'remarks_and_more.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RemarksAndMore {
  AppId get appId => throw _privateConstructorUsedError;
  LeadId get leadId => throw _privateConstructorUsedError;
  Remarks? get remarks => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RemarksAndMoreCopyWith<RemarksAndMore> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemarksAndMoreCopyWith<$Res> {
  factory $RemarksAndMoreCopyWith(
          RemarksAndMore value, $Res Function(RemarksAndMore) then) =
      _$RemarksAndMoreCopyWithImpl<$Res, RemarksAndMore>;
  @useResult
  $Res call({AppId appId, LeadId leadId, Remarks? remarks});
}

/// @nodoc
class _$RemarksAndMoreCopyWithImpl<$Res, $Val extends RemarksAndMore>
    implements $RemarksAndMoreCopyWith<$Res> {
  _$RemarksAndMoreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appId = null,
    Object? leadId = null,
    Object? remarks = freezed,
  }) {
    return _then(_value.copyWith(
      appId: null == appId
          ? _value.appId
          : appId // ignore: cast_nullable_to_non_nullable
              as AppId,
      leadId: null == leadId
          ? _value.leadId
          : leadId // ignore: cast_nullable_to_non_nullable
              as LeadId,
      remarks: freezed == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as Remarks?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RemarksAndMoreImplCopyWith<$Res>
    implements $RemarksAndMoreCopyWith<$Res> {
  factory _$$RemarksAndMoreImplCopyWith(_$RemarksAndMoreImpl value,
          $Res Function(_$RemarksAndMoreImpl) then) =
      __$$RemarksAndMoreImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppId appId, LeadId leadId, Remarks? remarks});
}

/// @nodoc
class __$$RemarksAndMoreImplCopyWithImpl<$Res>
    extends _$RemarksAndMoreCopyWithImpl<$Res, _$RemarksAndMoreImpl>
    implements _$$RemarksAndMoreImplCopyWith<$Res> {
  __$$RemarksAndMoreImplCopyWithImpl(
      _$RemarksAndMoreImpl _value, $Res Function(_$RemarksAndMoreImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appId = null,
    Object? leadId = null,
    Object? remarks = freezed,
  }) {
    return _then(_$RemarksAndMoreImpl(
      appId: null == appId
          ? _value.appId
          : appId // ignore: cast_nullable_to_non_nullable
              as AppId,
      leadId: null == leadId
          ? _value.leadId
          : leadId // ignore: cast_nullable_to_non_nullable
              as LeadId,
      remarks: freezed == remarks
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as Remarks?,
    ));
  }
}

/// @nodoc

class _$RemarksAndMoreImpl extends _RemarksAndMore {
  const _$RemarksAndMoreImpl(
      {required this.appId, required this.leadId, required this.remarks})
      : super._();

  @override
  final AppId appId;
  @override
  final LeadId leadId;
  @override
  final Remarks? remarks;

  @override
  String toString() {
    return 'RemarksAndMore(appId: $appId, leadId: $leadId, remarks: $remarks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemarksAndMoreImpl &&
            (identical(other.appId, appId) || other.appId == appId) &&
            (identical(other.leadId, leadId) || other.leadId == leadId) &&
            (identical(other.remarks, remarks) || other.remarks == remarks));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appId, leadId, remarks);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemarksAndMoreImplCopyWith<_$RemarksAndMoreImpl> get copyWith =>
      __$$RemarksAndMoreImplCopyWithImpl<_$RemarksAndMoreImpl>(
          this, _$identity);
}

abstract class _RemarksAndMore extends RemarksAndMore {
  const factory _RemarksAndMore(
      {required final AppId appId,
      required final LeadId leadId,
      required final Remarks? remarks}) = _$RemarksAndMoreImpl;
  const _RemarksAndMore._() : super._();

  @override
  AppId get appId;
  @override
  LeadId get leadId;
  @override
  Remarks? get remarks;
  @override
  @JsonKey(ignore: true)
  _$$RemarksAndMoreImplCopyWith<_$RemarksAndMoreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
