import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:data_dex/domain/core/models/cloud_image/cloud_image.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cloud_image_dto.freezed.dart';
part 'cloud_image_dto.g.dart';

@freezed
class CloudImageDto with _$CloudImageDto {
  const CloudImageDto._();

  const factory CloudImageDto({
    required String name,
    required String url,
  }) = _CloudImageDto;

  factory CloudImageDto.fromDomain(CloudImage image) {
    return CloudImageDto(
      name: image.name,
      url: image.url.toString(),
    );
  }

  CloudImage toDomain() {
    return CloudImage(
      name: name,
      url: url,
    );
  }

  factory CloudImageDto.fromJson(Map<String, dynamic> json) =>
      _$CloudImageDtoFromJson(json);

  factory CloudImageDto.fromFireStore(
    DocumentSnapshot<Map<String, dynamic>> doc,
  ) {
    return CloudImageDto.fromJson(doc.data() as Map<String, dynamic>);
  }
}
