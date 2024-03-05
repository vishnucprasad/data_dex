// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'data_dex_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DataDexUser {
  UniqueId get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DataDexUserCopyWith<DataDexUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataDexUserCopyWith<$Res> {
  factory $DataDexUserCopyWith(
          DataDexUser value, $Res Function(DataDexUser) then) =
      _$DataDexUserCopyWithImpl<$Res, DataDexUser>;
  @useResult
  $Res call({UniqueId id});
}

/// @nodoc
class _$DataDexUserCopyWithImpl<$Res, $Val extends DataDexUser>
    implements $DataDexUserCopyWith<$Res> {
  _$DataDexUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataDexUserImplCopyWith<$Res>
    implements $DataDexUserCopyWith<$Res> {
  factory _$$DataDexUserImplCopyWith(
          _$DataDexUserImpl value, $Res Function(_$DataDexUserImpl) then) =
      __$$DataDexUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UniqueId id});
}

/// @nodoc
class __$$DataDexUserImplCopyWithImpl<$Res>
    extends _$DataDexUserCopyWithImpl<$Res, _$DataDexUserImpl>
    implements _$$DataDexUserImplCopyWith<$Res> {
  __$$DataDexUserImplCopyWithImpl(
      _$DataDexUserImpl _value, $Res Function(_$DataDexUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DataDexUserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
    ));
  }
}

/// @nodoc

class _$DataDexUserImpl implements _DataDexUser {
  const _$DataDexUserImpl({required this.id});

  @override
  final UniqueId id;

  @override
  String toString() {
    return 'DataDexUser(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataDexUserImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataDexUserImplCopyWith<_$DataDexUserImpl> get copyWith =>
      __$$DataDexUserImplCopyWithImpl<_$DataDexUserImpl>(this, _$identity);
}

abstract class _DataDexUser implements DataDexUser {
  const factory _DataDexUser({required final UniqueId id}) = _$DataDexUserImpl;

  @override
  UniqueId get id;
  @override
  @JsonKey(ignore: true)
  _$$DataDexUserImplCopyWith<_$DataDexUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
