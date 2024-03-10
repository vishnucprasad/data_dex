import 'package:freezed_annotation/freezed_annotation.dart';

part 'cloud_image.freezed.dart';

@freezed
class CloudImage with _$CloudImage {
  const factory CloudImage({
    required String name,
    required String url,
  }) = _CloudImage;
}
