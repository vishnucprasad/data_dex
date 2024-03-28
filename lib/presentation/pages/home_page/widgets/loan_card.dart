import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:data_dex/application/app_action/app_action_cubit.dart';
import 'package:data_dex/application/applicant_form/applicant_form_bloc.dart';
import 'package:data_dex/application/loan/loan_actor/loan_actor_bloc.dart';
import 'package:data_dex/domain/core/constants.dart';
import 'package:data_dex/domain/loan/models/loan.dart';
import 'package:data_dex/injection.dart';
import 'package:data_dex/presentation/core/colors.dart';
import 'package:data_dex/presentation/core/constants.dart';
import 'package:data_dex/presentation/core/extensions/loan_extension.dart';
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
                          onPressed: () async {
                            if (loan.loanParticulars == null) {
                              return FlushbarHelper.createError(
                                message:
                                    'Loan disbursement failed: Loan particulars not provided',
                              ).show(context);
                            }
                            if (loan.miscellaneousDetails == null) {
                              return FlushbarHelper.createError(
                                message:
                                    'Loan disbursement failed: Reference details not provided',
                              ).show(context);
                            }

                            final selectedDate = await showDatePicker(
                              context: context,
                              initialDate: loan.disbursementDate == null
                                  ? DateTime.now()
                                  : DateTime.parse(loan.disbursementDate!),
                              firstDate: DateTime(1900),
                              lastDate: DateTime.now(),
                              builder: (context, child) {
                                return Theme(
                                  data: Theme.of(context).copyWith(
                                    colorScheme: ColorScheme.light(
                                      primary: Colors.lightBlue.shade600,
                                      onPrimary: kLightColor,
                                      onSurface: kDarkColor,
                                      surfaceTint: Colors.transparent,
                                    ),
                                    textButtonTheme: TextButtonThemeData(
                                      style: TextButton.styleFrom(
                                        foregroundColor: Colors.lightBlue
                                            .shade600, // button text color
                                      ),
                                    ),
                                  ),
                                  child: child!,
                                );
                              },
                            );

                            if (selectedDate != null) {
                              FlushbarHelper.createAction(
                                duration: const Duration(seconds: 10),
                                message:
                                    'Are you sure you want to proceed with the loan disbursement scheduled for ${DateFormat.yMMMd().format(selectedDate)} ?',
                                button: TextButton(
                                  child: Text(
                                    'DISBURSE',
                                    style: TextStyle(
                                      color: Colors.lightBlue.shade600,
                                    ),
                                  ),
                                  onPressed: () {
                                    context
                                        .read<LoanActorBloc>()
                                        .add(LoanActorEvent.disburse(
                                          loan.id,
                                          selectedDate,
                                        ));
                                    context.maybePop();
                                  },
                                ),
                              ).show(context);
                            }
                          },
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
                              onPressed: () => FlushbarHelper.createAction(
                                message:
                                    'Are you sure you want to restore this loan ?',
                                button: TextButton(
                                  child: Text(
                                    'RESTORE',
                                    style: TextStyle(
                                      color: Colors.lightBlue.shade600,
                                    ),
                                  ),
                                  onPressed: () {
                                    context
                                        .read<LoanActorBloc>()
                                        .add(LoanActorEvent.restore(loan.id));
                                  },
                                ),
                              ).show(context),
                              label: const Text(
                                'Restore',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              icon: const Icon(Icons.restore),
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
                                foregroundColor:
                                    const MaterialStatePropertyAll<Color>(
                                  Colors.red,
                                ),
                                shape: MaterialStatePropertyAll<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                ),
                              ),
                              onPressed: () => FlushbarHelper.createAction(
                                message:
                                    'Are you sure you want to permanently delete this loan ?',
                                button: TextButton(
                                  child: const Text(
                                    'DELETE',
                                    style: TextStyle(
                                      color: Colors.red,
                                    ),
                                  ),
                                  onPressed: () {
                                    context.read<LoanActorBloc>().add(
                                        LoanActorEvent.deleteLoan(loan.id));
                                    context.maybePop();
                                  },
                                ),
                              ).show(context),
                              icon: const Icon(Icons.delete),
                            ),
                          ),
                        ],
                      )
                    : BlocBuilder<AppActionCubit, AppActionState>(
                        builder: (context, state) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    state.bottomNavIndex == 0
                                        ? 'Disbursment date:'
                                        : 'Next EMI date:',
                                    style: const TextStyle(
                                      color: kSecondaryColor,
                                    ),
                                  ),
                                  kWidthMd,
                                  Text(
                                    state.bottomNavIndex == 0
                                        ? DateFormat.yMMMEd().format(
                                            DateTime.parse(
                                                loan.disbursementDate!))
                                        : DateFormat.yMMMEd().format(
                                            DateTime(
                                              DateTime.now().year,
                                              DateTime.now().month,
                                              DateTime.parse(loan
                                                      .loanParticulars!
                                                      .emiDetails
                                                      .firstEMIDate
                                                      .getOrCrash())
                                                  .day,
                                            ),
                                          ),
                                    style: const TextStyle(
                                      color: kLightColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  const Text(
                                    "Remaining EMI's:",
                                    style: TextStyle(
                                      color: kSecondaryColor,
                                    ),
                                  ),
                                  kWidthMd,
                                  Text(
                                    '${loan.calculateRemainingEMI()}',
                                    style: const TextStyle(
                                      color: kLightColor,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              if (loan.miscellaneousDetails?.remarksAndMore
                                      .agreementNumber !=
                                  null)
                                Row(
                                  children: [
                                    const Text(
                                      "Agreement number:",
                                      style: TextStyle(
                                        color: kSecondaryColor,
                                      ),
                                    ),
                                    kWidthMd,
                                    Text(
                                      '${loan.miscellaneousDetails!.remarksAndMore.agreementNumber}',
                                      style: const TextStyle(
                                        color: kLightColor,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                            ],
                          );
                        },
                      ),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            width: double.infinity,
            decoration: const BoxDecoration(
              color: kSecondaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    loan.miscellaneousDetails?.applicantImage == null
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
                        : loan.miscellaneousDetails?.applicantImage == null
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
                                  borderRadius: BorderRadius.circular(28),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                      loan.miscellaneousDetails!.applicantImage!
                                          .url,
                                    ),
                                  ),
                                ),
                              ),
                    kWidth,
                    Expanded(
                      child: SizedBox(
                        width: double.infinity,
                        child: Text(
                          loan.applicant.basicInfo.name.getOrCrash(),
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
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
