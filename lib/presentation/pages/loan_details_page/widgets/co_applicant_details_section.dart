import 'package:data_dex/domain/co_applicant/models/co_applicant.dart';
import 'package:data_dex/presentation/core/colors.dart';
import 'package:data_dex/presentation/core/constants.dart';
import 'package:data_dex/presentation/pages/loan_details_page/widgets/address_card.dart';
import 'package:data_dex/presentation/pages/loan_details_page/widgets/basic_info_card.dart';
import 'package:data_dex/presentation/pages/loan_details_page/widgets/loan_details_divider.dart';
import 'package:flutter/material.dart';

class CoApplicantDetailsSection extends StatelessWidget {
  const CoApplicantDetailsSection({
    required this.coApplicant,
    super.key,
  });

  final CoApplicant? coApplicant;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const LoanDetailsDivider(text: 'Coapplicant Details'),
        kHeight,
        coApplicant == null
            ? Container(
                height: 170,
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: kSecondaryColor,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.not_interested,
                      size: 36,
                    ),
                    kHeightMd,
                    const Text('Coapplicant information not provided'),
                    kHeightMd,
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.add),
                      label: const Text('Add coapplicant'),
                      style: ButtonStyle(
                        elevation: const MaterialStatePropertyAll<double>(0),
                        backgroundColor: MaterialStatePropertyAll<Color>(
                          Colors.lightBlue.shade600,
                        ),
                        foregroundColor:
                            const MaterialStatePropertyAll<Color>(kLightColor),
                        shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            : Column(
                children: [
                  BasicInfoCard(
                    basicInfo: coApplicant!.basicInfo,
                  ),
                  kHeightMd,
                  AddressCard(
                    address: coApplicant!.address,
                  ),
                ],
              )
      ],
    );
  }
}
