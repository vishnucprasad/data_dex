import 'package:another_flushbar/flushbar_helper.dart';
import 'package:data_dex/application/app_action/app_action_cubit.dart';
import 'package:data_dex/presentation/core/colors.dart';
import 'package:data_dex/presentation/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoanDetailsHead extends StatelessWidget {
  const LoanDetailsHead({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppActionCubit, AppActionState>(
      builder: (context, state) {
        return Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: Colors.lightBlue.shade600,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  state.selectedLoan!.miscellaneousDetails?.applicantImage ==
                          null
                      ? Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: kLightColor,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(28),
                            color: kLightColor,
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.person,
                              size: 48,
                            ),
                          ),
                        )
                      : Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: kLightColor,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(28),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                state.selectedLoan!.miscellaneousDetails!
                                    .applicantImage!.url,
                              ),
                            ),
                          ),
                        ),
                  kWidthMd,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 180,
                          child: Text(
                            state.selectedLoan!.applicant.basicInfo.name
                                .getOrCrash(),
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: kLightColor,
                            ),
                          ),
                        ),
                        kHeightSm,
                        Row(
                          children: [
                            Expanded(
                              child: SizedBox(
                                height: 30,
                                child: ElevatedButton.icon(
                                  style: ButtonStyle(
                                    elevation:
                                        const MaterialStatePropertyAll<double>(
                                            0),
                                    backgroundColor:
                                        const MaterialStatePropertyAll<Color>(
                                      kLightColor,
                                    ),
                                    foregroundColor:
                                        MaterialStatePropertyAll<Color>(
                                      Colors.lightBlue.shade600,
                                    ),
                                    shape: MaterialStatePropertyAll<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                  ),
                                  onPressed: () => context
                                      .read<AppActionCubit>()
                                      .openPhoneNumberInDialer(
                                        state.selectedLoan!.applicant.basicInfo
                                            .phoneNumber
                                            .getOrCrash(),
                                      ),
                                  label: const Text('Call'),
                                  icon: const Icon(Icons.call),
                                ),
                              ),
                            ),
                            kWidthMd,
                            Expanded(
                              child: SizedBox(
                                height: 30,
                                child: ElevatedButton.icon(
                                  style: ButtonStyle(
                                    elevation:
                                        const MaterialStatePropertyAll<double>(
                                            0),
                                    backgroundColor:
                                        const MaterialStatePropertyAll<Color>(
                                      kLightColor,
                                    ),
                                    foregroundColor:
                                        MaterialStatePropertyAll<Color>(
                                      Colors.lightBlue.shade600,
                                    ),
                                    shape: MaterialStatePropertyAll<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                  ),
                                  onPressed: () => Clipboard.setData(
                                    ClipboardData(
                                      text: state.selectedLoan!.applicant
                                          .basicInfo.phoneNumber
                                          .getOrCrash(),
                                    ),
                                  ).then(
                                    (_) => FlushbarHelper.createSuccess(
                                      message: 'Phone number copied!',
                                    ).show(context),
                                  ),
                                  label: const Text('Copy'),
                                  icon: const Icon(Icons.copy),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              kHeightSm,
              if (state.selectedLoan!.miscellaneousDetails != null)
                Row(
                  children: [
                    kWidth,
                    const Text(
                      'App ID:',
                      style: TextStyle(
                        color: kLightColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    kWidthMd,
                    Text(
                      state.selectedLoan!.miscellaneousDetails!.remarksAndMore
                          .appId
                          .getOrCrash(),
                      style: const TextStyle(
                        color: kLightColor,
                      ),
                    ),
                    const Spacer(),
                    const Text(
                      'Lead ID:',
                      style: TextStyle(
                        color: kLightColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    kWidthMd,
                    Text(
                      state.selectedLoan!.miscellaneousDetails?.remarksAndMore
                              .leadId
                              .getOrCrash() ??
                          'NILL',
                      style: const TextStyle(
                        color: kLightColor,
                      ),
                    ),
                    kWidth,
                  ],
                ),
              kHeightMd,
            ],
          ),
        );
      },
    );
  }
}
