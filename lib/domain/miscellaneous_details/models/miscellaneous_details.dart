import 'package:data_dex/domain/miscellaneous_details/models/payout_details/payout_details.dart';
import 'package:data_dex/domain/miscellaneous_details/models/reference_details/reference_details.dart';
import 'package:data_dex/domain/miscellaneous_details/models/remarks_and_more/remarks_and_more.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'miscellaneous_details.freezed.dart';

@freezed
class MiscellaneousDetails with _$MiscellaneousDetails {
  const factory MiscellaneousDetails({
    required PayoutDetails payoutDetails,
    required ReferenceDetails referenceDetails,
    required RemarksAndMore remarksAndMore,
    required Uint8List? applicantImage,
    required Uint8List? coApplicantImage,
    required Uint8List? guarenterImage,
  }) = _MiscellaneousDetails;
}
