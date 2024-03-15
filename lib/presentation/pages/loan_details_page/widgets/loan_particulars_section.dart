import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:data_dex/application/app_action/app_action_cubit.dart';
import 'package:data_dex/application/loan_particulars_form/loan_particulars_form_bloc.dart';
import 'package:data_dex/domain/loan_particulars/models/loan_particulars.dart';
import 'package:data_dex/presentation/core/colors.dart';
import 'package:data_dex/presentation/core/constants.dart';
import 'package:data_dex/presentation/pages/loan_details_page/widgets/emi_details_card.dart';
import 'package:data_dex/presentation/pages/loan_details_page/widgets/loan_details_card.dart';
import 'package:data_dex/presentation/pages/loan_details_page/widgets/loan_details_divider.dart';
import 'package:data_dex/presentation/pages/loan_details_page/widgets/vehicle_details_card.dart';
import 'package:data_dex/presentation/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoanParticularsSection extends StatelessWidget {
  const LoanParticularsSection({
    required this.loanParticulars,
    super.key,
  });

  final LoanParticulars? loanParticulars;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const LoanDetailsDivider(text: 'Loan particulars'),
        kHeight,
        loanParticulars == null
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
                    const Text('Loan particulars not provided'),
                    kHeightMd,
                    BlocBuilder<AppActionCubit, AppActionState>(
                      builder: (context, state) {
                        return ElevatedButton.icon(
                          onPressed: () {
                            context
                                .read<LoanParticularsFormBloc>()
                                .add(LoanParticularsFormEvent.initialized(
                                  initializeOption: some(state.selectedLoan!),
                                  closeAfterSave: true,
                                ));
                            context.pushRoute(const AddLoanParticularsRoute());
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
                  VehicleDetailsCard(
                    vehicleDetails: loanParticulars!.vehicleDetails,
                  ),
                  kHeightMd,
                  LoanDetailsCard(
                    loanDetails: loanParticulars!.loanDetails,
                    ddAmount: loanParticulars!.ddAmount,
                    downPayment: loanParticulars!.downPayment,
                  ),
                  kHeightMd,
                  EMIDetailsCard(
                    emiDetails: loanParticulars!.emiDetails,
                  )
                ],
              ),
      ],
    );
  }
}
