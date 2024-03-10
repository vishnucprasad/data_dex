// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cloud_image_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CloudImageDto _$CloudImageDtoFromJson(Map<String, dynamic> json) {
  return _CloudImageDto.fromJson(json);
}

/// @nodoc
mixin _$CloudImageDto {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CloudImageDtoCopyWith<CloudImageDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CloudImageDtoCopyWith<$Res> {
  factory $CloudImageDtoCopyWith(
          CloudImageDto value, $Res Function(CloudImageDto) then) =
      _$CloudImageDtoCopyWithImpl<$Res, CloudImageDto>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$CloudImageDtoCopyWithImpl<$Res, $Val extends CloudImageDto>
    implements $CloudImageDtoCopyWith<$Res> {
  _$CloudImageDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CloudImageDtoImplCopyWith<$Res>
    implements $CloudImageDtoCopyWith<$Res> {
  factory _$$CloudImageDtoImplCopyWith(
          _$CloudImageDtoImpl value, $Res Function(_$CloudImageDtoImpl) then) =
      __$$CloudImageDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$CloudImageDtoImplCopyWithImpl<$Res>
    extends _$CloudImageDtoCopyWithImpl<$Res, _$CloudImageDtoImpl>
    implements _$$CloudImageDtoImplCopyWith<$Res> {
  __$$CloudImageDtoImplCopyWithImpl(
      _$CloudImageDtoImpl _value, $Res Function(_$CloudImageDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$CloudImageDtoImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CloudImageDtoImpl extends _CloudImageDto {
  const _$CloudImageDtoImpl({required this.name, required this.url})
      : super._();

  factory _$CloudImageDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CloudImageDtoImplFromJson(json);

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'CloudImageDto(name: $name, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CloudImageDtoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CloudImageDtoImplCopyWith<_$CloudImageDtoImpl> get copyWith =>
      __$$CloudImageDtoImplCopyWithImpl<_$CloudImageDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CloudImageDtoImplToJson(
      this,
    );
  }
}

abstract class _CloudImageDto extends CloudImageDto {
  const factory _CloudImageDto(
      {required final String name,
      required final String url}) = _$CloudImageDtoImpl;
  const _CloudImageDto._() : super._();

  factory _CloudImageDto.fromJson(Map<String, dynamic> json) =
      _$CloudImageDtoImpl.fromJson;

  @override
  String get name;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$CloudImageDtoImplCopyWith<_$CloudImageDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
