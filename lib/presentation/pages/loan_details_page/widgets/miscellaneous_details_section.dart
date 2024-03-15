import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:data_dex/application/app_action/app_action_cubit.dart';
import 'package:data_dex/application/miscellaneous_details_form/miscellaneous_form_bloc.dart';
import 'package:data_dex/domain/miscellaneous_details/models/miscellaneous_details.dart';
import 'package:data_dex/presentation/core/colors.dart';
import 'package:data_dex/presentation/core/constants.dart';
import 'package:data_dex/presentation/pages/loan_details_page/widgets/loan_details_divider.dart';
import 'package:data_dex/presentation/pages/loan_details_page/widgets/payout_details_card.dart';
import 'package:data_dex/presentation/pages/loan_details_page/widgets/reference_details_card.dart';
import 'package:data_dex/presentation/pages/loan_details_page/widgets/remarks_card.dart';
import 'package:data_dex/presentation/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MiscellaneousDetailsSection extends StatelessWidget {
  const MiscellaneousDetailsSection({
    required this.miscellaneousDetails,
    super.key,
  });

  final MiscellaneousDetails? miscellaneousDetails;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const LoanDetailsDivider(text: 'Miscellaneous details'),
        kHeight,
        miscellaneousDetails == null
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
                    const Text('Miscellaneous details not provided'),
                    kHeightMd,
                    BlocBuilder<AppActionCubit, AppActionState>(
                      builder: (context, state) {
                        return ElevatedButton.icon(
                          onPressed: () {
                            context
                                .read<MiscellaneousDetailsFormBloc>()
                                .add(MiscellaneousDetailsFormEvent.initialized(
                                  some(state.selectedLoan!),
                                ));
                            context.pushRoute(
                              const AddMiscellaneousDetailsRoute(),
                            );
                          },
                          icon: const Icon(Icons.add),
                          label: const Text('ADD NOW'),
                          style: ButtonStyle(
                            elevation:
                                const MaterialStatePropertyAll<double>(0),
                            backgroundColor: MaterialStatePropertyAll<Color>(
                              Colors.lightBlue.shade600,
                            ),
                            foregroundColor:
                                const MaterialStatePropertyAll<Color>(
                                    kLightColor),
                            shape: MaterialStatePropertyAll<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        );
                      },
                    )
                  ],
                ),
              )
            : Column(
                children: [
                  PayoutDetailsCard(
                    payoutDetails: miscellaneousDetails!.payoutDetails,
                  ),
                  kHeightMd,
                  ReferenceDetailsCard(
                    referenceDetails: miscellaneousDetails!.referenceDetails,
                  ),
                  kHeightMd,
                  RemarksCard(
                    remarks: miscellaneousDetails!.remarksAndMore.remarks,
                  )
                ],
              ),
      ],
    );
  }
}
