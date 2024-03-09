import 'dart:typed_data';

import 'package:data_dex/domain/core/models/address/address.dart';
import 'package:data_dex/domain/core/models/basic_info/basic_info.dart';
import 'package:data_dex/domain/core/models/location/location.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'guarenter.freezed.dart';

@freezed
class Guarenter with _$Guarenter {
  const factory Guarenter({
    required BasicInfo basicInfo,
    required Address address,
    required Location? location,
    required Uint8List? houseImage,
  }) = _Guarenter;
}
