import 'package:auto_route/auto_route.dart';
import 'package:data_dex/application/app_action/app_action_cubit.dart';
import 'package:data_dex/presentation/core/colors.dart';
import 'package:data_dex/presentation/core/constants.dart';
import 'package:data_dex/presentation/pages/loan_details_page/widgets/address_card.dart';
import 'package:data_dex/presentation/pages/loan_details_page/widgets/basic_info_card.dart';
import 'package:data_dex/presentation/pages/loan_details_page/widgets/image_and_location_card.dart';
import 'package:data_dex/presentation/pages/loan_details_page/widgets/loan_details_divider.dart';
import 'package:data_dex/presentation/pages/loan_details_page/widgets/loan_details_head.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class LoanDetailsPage extends StatelessWidget {
  const LoanDetailsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Loan details',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),
        ),
        backgroundColor: Colors.lightBlue.shade600,
        foregroundColor: kLightColor,
      ),
      body: SafeArea(
        child: Column(
          children: [
            const LoanDetailsHead(),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(16),
                children: [
                  const LoanDetailsDivider(text: 'Applicant Details'),
                  kHeight,
                  BlocBuilder<AppActionCubit, AppActionState>(
                    builder: (context, state) {
                      return Column(
                        children: [
                          BasicInfoCard(
                            basicInfo: state.selectedLoan!.applicant.basicInfo,
                          ),
                          kHeightMd,
                          AddressCard(
                            address: state.selectedLoan!.applicant.address,
                          ),
                          kHeightMd,
                          ImageAndLocationCard(
                            houseImage:
                                state.selectedLoan!.applicant.houseImage,
                            location: state.selectedLoan!.applicant.location,
                          ),
                        ],
                      );
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
