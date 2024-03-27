import 'package:dartz/dartz.dart';
import 'package:data_dex/domain/core/value_failure.dart';
import 'package:data_dex/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'remarks_and_more.freezed.dart';

@freezed
class RemarksAndMore with _$RemarksAndMore {
  const RemarksAndMore._();
  const factory RemarksAndMore({
    required AppId appId,
    required LeadId leadId,
    required String? agreementNumber,
    required String? vehicleNumber,
    required Remarks? remarks,
  }) = _RemarksAndMore;

  factory RemarksAndMore.empty() {
    return RemarksAndMore(
      appId: AppId(""),
      leadId: LeadId(""),
      agreementNumber: null,
      vehicleNumber: null,
      remarks: null,
    );
  }

  Option<ValueFailure<dynamic>> get failureOption {
    return appId.failureOrUnit
        .andThen(leadId.failureOrUnit)
        .andThen(
          remarks == null ? right(unit) : remarks!.failureOrUnit,
        )
        .fold((f) => some(f), (_) => none());
  }
}
