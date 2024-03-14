import 'package:data_dex/domain/applicant/models/applicant.dart';
import 'package:data_dex/presentation/core/constants.dart';
import 'package:data_dex/presentation/pages/loan_details_page/widgets/address_card.dart';
import 'package:data_dex/presentation/pages/loan_details_page/widgets/basic_info_card.dart';
import 'package:data_dex/presentation/pages/loan_details_page/widgets/image_and_location_card.dart';
import 'package:data_dex/presentation/pages/loan_details_page/widgets/loan_details_divider.dart';
import 'package:flutter/material.dart';

class ApplicantDetailsSection extends StatelessWidget {
  const ApplicantDetailsSection({
    required this.applicant,
    super.key,
  });

  final Applicant applicant;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const LoanDetailsDivider(text: 'Applicant Details'),
        kHeight,
        BasicInfoCard(
          basicInfo: applicant.basicInfo,
        ),
        kHeightMd,
        AddressCard(
          address: applicant.address,
        ),
        kHeightMd,
        ImageAndLocationCard(
          houseImage: applicant.houseImage,
          location: applicant.location,
        ),
      ],
    );
  }
}
