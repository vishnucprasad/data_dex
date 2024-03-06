import 'package:data_dex/domain/core/models/address/address.dart';
import 'package:data_dex/domain/core/models/basic_info/basic_info.dart';
import 'package:data_dex/domain/core/models/location/location.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'applicant.freezed.dart';

@freezed
class Applicant with _$Applicant {
  const factory Applicant({
    required BasicInfo basicInfo,
    required Address address,
    required Location? location,
    required Uint8List? houseImage,
  }) = _Applicant;
}
