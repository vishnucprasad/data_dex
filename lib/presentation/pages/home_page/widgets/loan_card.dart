import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:data_dex/application/app_action/app_action_cubit.dart';
import 'package:data_dex/application/applicant_form/applicant_form_bloc.dart';
import 'package:data_dex/domain/core/constants.dart';
import 'package:data_dex/domain/loan/models/loan.dart';
import 'package:data_dex/injection.dart';
import 'package:data_dex/presentation/core/colors.dart';
import 'package:data_dex/presentation/core/constants.dart';
import 'package:data_dex/presentation/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class LoanCard extends StatelessWidget {
  const LoanCard({
    super.key,
    required this.loan,
  });

  final Loan loan;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<AppActionCubit>().loanSelected(loan);
        getIt<AppRouter>().push(const LoanDetailsRoute());
      },
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.lightBlue.shade600,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            child: LoanStatus.values[loan.loanStatusIndex] == LoanStatus.pending
                ? Row(
                    children: [
                      Expanded(
                        child: ElevatedButton.icon(
                          style: ButtonStyle(
                            elevation:
                                const MaterialStatePropertyAll<double>(0),
                            backgroundColor:
                                const MaterialStatePropertyAll<Color>(
                              Colors.transparent,
                            ),
                            foregroundColor:
                                const MaterialStatePropertyAll<Color>(
                              kSecondaryColor,
                            ),
                            shape: MaterialStatePropertyAll<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                                side: const BorderSide(
                                  width: 2,
                                  color: kSecondaryColor,
                                ),
                              ),
                            ),
                          ),
                          onPressed: () {},
                          label: const Text(
                            'Disburse',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          icon: const Icon(Icons.check),
                        ),
                      ),
                      kWidthMd,
                      SizedBox(
                        width: 75,
                        child: IconButton(
                          style: ButtonStyle(
                            elevation:
                                const MaterialStatePropertyAll<double>(0),
                            backgroundColor:
                                const MaterialStatePropertyAll<Color>(
                              kSecondaryColor,
                            ),
                            foregroundColor: MaterialStatePropertyAll<Color>(
                              Colors.lightBlue.shade600,
                            ),
                            shape: MaterialStatePropertyAll<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                          ),
                          onPressed: () {
                            context.read<ApplicantFormBloc>().add(
                                ApplicantFormEvent.initialized(some(loan)));
                            context.pushRoute(const AddApplicantRoute());
                          },
                          icon: const Icon(Icons.edit_square),
                        ),
                      ),
                    ],
                  )
                : LoanStatus.values[loan.loanStatusIndex] == LoanStatus.dropped
                    ? ElevatedButton.icon(
                        style: ButtonStyle(
                          elevation: const MaterialStatePropertyAll<double>(0),
                          backgroundColor:
                              const MaterialStatePropertyAll<Color>(
                            Colors.transparent,
                          ),
                          foregroundColor:
                              const MaterialStatePropertyAll<Color>(
                            kSecondaryColor,
                          ),
                          shape:
                              MaterialStatePropertyAll<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                              side: const BorderSide(
                                width: 2,
                                color: kSecondaryColor,
                              ),
                            ),
                          ),
                        ),
                        onPressed: () {},
                        label: const Text(
                          'Restore',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        icon: const Icon(Icons.restore),
                      )
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Disbursment date:',
                            style: TextStyle(
                              color: kSecondaryColor,
                            ),
                          ),
                          Text(
                            DateFormat.yMMMMEEEEd().format(DateTime.now()),
                            style: const TextStyle(
                              color: kLightColor,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            width: double.infinity,
            decoration: const BoxDecoration(
              color: kSecondaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(32),
                bottomRight: Radius.circular(32),
              ),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    LoanStatus.values[loan.loanStatusIndex] ==
                                LoanStatus.pending ||
                            LoanStatus.values[loan.loanStatusIndex] ==
                                LoanStatus.dropped
                        ? Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
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
                              borderRadius: BorderRadius.circular(28),
                              image: const DecorationImage(
                                image: NetworkImage(
                                  'https://avatars.githubusercontent.com/u/81964443?v=4',
                                ),
                              ),
                            ),
                          ),
                    kWidth,
                    SizedBox(
                      width: 180,
                      child: Text(
                        loan.applicant.basicInfo.name.getOrCrash(),
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Icon(
                      Icons.info_outline,
                      size: 36,
                      color: Colors.lightBlue.shade600,
                    ),
                  ],
                ),
                kHeightMd,
                if (LoanStatus.values[loan.loanStatusIndex] !=
                    LoanStatus.dropped)
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton.icon(
                          style: ButtonStyle(
                            elevation:
                                const MaterialStatePropertyAll<double>(0),
                            backgroundColor: MaterialStatePropertyAll<Color>(
                              Colors.lightBlue.shade600,
                            ),
                            foregroundColor:
                                const MaterialStatePropertyAll<Color>(
                              kLightColor,
                            ),
                          ),
                          onPressed: () => context
                              .read<AppActionCubit>()
                              .openPhoneNumberInDialer(
                                loan.applicant.basicInfo.phoneNumber
                                    .getOrCrash(),
                              ),
                          label: const Text('Call'),
                          icon: const Icon(Icons.call),
                        ),
                      ),
                      kWidth,
                      Expanded(
                        child: ElevatedButton.icon(
                          style: ButtonStyle(
                            elevation:
                                const MaterialStatePropertyAll<double>(0),
                            backgroundColor: MaterialStatePropertyAll<Color>(
                              kPrimaryColor.withOpacity(0.125),
                            ),
                            foregroundColor:
                                const MaterialStatePropertyAll<Color>(
                              kPrimaryColor,
                            ),
                          ),
                          onPressed: () => Clipboard.setData(
                            ClipboardData(
                              text: loan.applicant.basicInfo.phoneNumber
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
                    ],
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
