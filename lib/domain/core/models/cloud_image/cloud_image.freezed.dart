// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cloud_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CloudImage {
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CloudImageCopyWith<CloudImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CloudImageCopyWith<$Res> {
  factory $CloudImageCopyWith(
          CloudImage value, $Res Function(CloudImage) then) =
      _$CloudImageCopyWithImpl<$Res, CloudImage>;
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class _$CloudImageCopyWithImpl<$Res, $Val extends CloudImage>
    implements $CloudImageCopyWith<$Res> {
  _$CloudImageCopyWithImpl(this._value, this._then);

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
abstract class _$$CloudImageImplCopyWith<$Res>
    implements $CloudImageCopyWith<$Res> {
  factory _$$CloudImageImplCopyWith(
          _$CloudImageImpl value, $Res Function(_$CloudImageImpl) then) =
      __$$CloudImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String url});
}

/// @nodoc
class __$$CloudImageImplCopyWithImpl<$Res>
    extends _$CloudImageCopyWithImpl<$Res, _$CloudImageImpl>
    implements _$$CloudImageImplCopyWith<$Res> {
  __$$CloudImageImplCopyWithImpl(
      _$CloudImageImpl _value, $Res Function(_$CloudImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? url = null,
  }) {
    return _then(_$CloudImageImpl(
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

class _$CloudImageImpl implements _CloudImage {
  const _$CloudImageImpl({required this.name, required this.url});

  @override
  final String name;
  @override
  final String url;

  @override
  String toString() {
    return 'CloudImage(name: $name, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CloudImageImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CloudImageImplCopyWith<_$CloudImageImpl> get copyWith =>
      __$$CloudImageImplCopyWithImpl<_$CloudImageImpl>(this, _$identity);
}

abstract class _CloudImage implements CloudImage {
  const factory _CloudImage(
      {required final String name,
      required final String url}) = _$CloudImageImpl;

  @override
  String get name;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$CloudImageImplCopyWith<_$CloudImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
