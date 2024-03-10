import 'package:data_dex/domain/core/models/cloud_image/cloud_image.dart';
import 'package:data_dex/domain/miscellaneous_details/models/payout_details/payout_details.dart';
import 'package:data_dex/domain/miscellaneous_details/models/reference_details/reference_details.dart';
import 'package:data_dex/domain/miscellaneous_details/models/remarks_and_more/remarks_and_more.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'miscellaneous_details.freezed.dart';

@freezed
class MiscellaneousDetails with _$MiscellaneousDetails {
  const factory MiscellaneousDetails({
    required PayoutDetails payoutDetails,
    required ReferenceDetails referenceDetails,
    required RemarksAndMore remarksAndMore,
    required CloudImage? applicantImage,
    required CloudImage? coApplicantImage,
    required CloudImage? guarenterImage,
  }) = _MiscellaneousDetails;
}
