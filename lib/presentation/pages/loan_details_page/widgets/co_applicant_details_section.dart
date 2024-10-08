import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:data_dex/application/app_action/app_action_cubit.dart';
import 'package:data_dex/application/co_applicant_form/co_applicant_form_bloc.dart';
import 'package:data_dex/domain/co_applicant/models/co_applicant.dart';
import 'package:data_dex/presentation/core/colors.dart';
import 'package:data_dex/presentation/core/constants.dart';
import 'package:data_dex/presentation/pages/loan_details_page/widgets/address_card.dart';
import 'package:data_dex/presentation/pages/loan_details_page/widgets/basic_info_card.dart';
import 'package:data_dex/presentation/pages/loan_details_page/widgets/loan_details_divider.dart';
import 'package:data_dex/presentation/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
                    BlocBuilder<AppActionCubit, AppActionState>(
                      builder: (context, state) {
                        return ElevatedButton.icon(
                          onPressed: () {
                            context
                                .read<CoApplicantFormBloc>()
                                .add(CoApplicantFormEvent.initialized(
                                  initializeOption: some(state.selectedLoan!),
                                  closeAfterSave: true,
                                ));
                            context.pushRoute(const AddCoApplicantRoute());
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
                  BlocBuilder<AppActionCubit, AppActionState>(
                    builder: (context, state) {
                      return BasicInfoCard(
                        basicInfo: coApplicant!.basicInfo,
                        showProfile: true,
                        image: state.selectedLoan!.miscellaneousDetails
                            ?.coApplicantImage,
                      );
                    },
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
