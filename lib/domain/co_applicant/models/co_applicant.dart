import 'package:data_dex/domain/core/models/address/address.dart';
import 'package:data_dex/domain/core/models/basic_info/basic_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'co_applicant.freezed.dart';

@freezed
class CoApplicant with _$CoApplicant {
  const factory CoApplicant({
    required BasicInfo basicInfo,
    required Address address,
  }) = _CoApplicant;
}
