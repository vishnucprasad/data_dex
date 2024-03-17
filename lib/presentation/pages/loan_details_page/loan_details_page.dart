import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:data_dex/application/app_action/app_action_cubit.dart';
import 'package:data_dex/application/applicant_form/applicant_form_bloc.dart';
import 'package:data_dex/application/loan/loan_actor/loan_actor_bloc.dart';
import 'package:data_dex/application/loan/loan_watcher/loan_watcher_bloc.dart';
import 'package:data_dex/domain/core/constants.dart';
import 'package:data_dex/presentation/core/colors.dart';
import 'package:data_dex/presentation/core/constants.dart';
import 'package:data_dex/presentation/pages/loan_details_page/widgets/applicant_details_section.dart';
import 'package:data_dex/presentation/pages/loan_details_page/widgets/co_applicant_details_section.dart';
import 'package:data_dex/presentation/pages/loan_details_page/widgets/guarenter_details_section.dart';
import 'package:data_dex/presentation/pages/loan_details_page/widgets/loan_details_head.dart';
import 'package:data_dex/presentation/pages/loan_details_page/widgets/loan_particulars_section.dart';
import 'package:data_dex/presentation/pages/loan_details_page/widgets/miscellaneous_details_section.dart';
import 'package:data_dex/presentation/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';

@RoutePage()
class LoanDetailsPage extends StatelessWidget {
  const LoanDetailsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppActionCubit, AppActionState>(
      builder: (context, state) {
        if (state.selectedLoan == null) {
          return Center(
            child: Text(
              'Loan details not found',
              style: TextStyle(
                color: Theme.of(context).colorScheme.error,
              ),
            ),
          );
        }

        return BlocConsumer<LoanActorBloc, LoanActorState>(
          listenWhen: (p, c) => p.failureOrSuccess != c.failureOrSuccess,
          listener: (context, loanActorState) {
            loanActorState.failureOrSuccess.fold(
              () => null,
              (either) => either.fold(
                (f) => FlushbarHelper.createError(
                  message: f.map(
                    permissionDenied: (_) => 'Access denied!',
                    unexpected: (_) => 'An unexpected error occurred',
                    unableToUpdate: (_) => 'Unable to update note',
                    unableToDelete: (_) => 'Unable to delete note',
                  ),
                ).show(context),
                (_) => context.replaceRoute(const HomeRoute()),
              ),
            );
          },
          builder: (context, loanActorState) {
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
                actions: LoanStatus
                            .values[state.selectedLoan!.loanStatusIndex] ==
                        LoanStatus.pending
                    ? [
                        IconButton(
                          onPressed: () {
                            context
                                .read<ApplicantFormBloc>()
                                .add(ApplicantFormEvent.initialized(
                                  some(state.selectedLoan!),
                                ));
                            context.pushRoute(const AddApplicantRoute());
                          },
                          icon: const Icon(Icons.edit_square),
                        ),
                        loanActorState.isLoading
                            ? const SizedBox(
                                width: 30,
                                height: 30,
                                child: CircularProgressIndicator(
                                  color: kLightColor,
                                ),
                              )
                            : IconButton(
                                onPressed: () => FlushbarHelper.createAction(
                                  message:
                                      'Are you sure you want to drop this loan ?',
                                  button: TextButton(
                                    child: const Text(
                                      'DROP',
                                      style: TextStyle(color: Colors.red),
                                    ),
                                    onPressed: () {
                                      context
                                          .read<LoanActorBloc>()
                                          .add(LoanActorEvent.dropLoan(
                                            state.selectedLoan!.id,
                                          ));
                                    },
                                  ),
                                ).show(context),
                                icon: const Icon(
                                  Icons.delete,
                                  color: Colors.red,
                                ),
                              ),
                      ]
                    : [],
                backgroundColor: Colors.lightBlue.shade600,
                foregroundColor: kLightColor,
              ),
              body: SafeArea(
                child: BlocListener<LoanWatcherBloc, LoanWatcherState>(
                  listener: (context, loanState) {
                    loanState.maybeMap(
                      loadSuccess: (successState) {
                        final loan = successState.loans.first(
                          (loan) => loan.id == state.selectedLoan?.id,
                        );

                        context.read<AppActionCubit>().loanSelected(loan);
                      },
                      orElse: () => null,
                    );
                  },
                  child: Column(
                    children: [
                      const LoanDetailsHead(),
                      Expanded(
                        child: ListView(
                          padding: const EdgeInsets.all(16),
                          children: [
                            ApplicantDetailsSection(
                              applicant: state.selectedLoan!.applicant,
                            ),
                            if (state.selectedLoan!.coApplicant != null ||
                                state.selectedLoan!.loanStatusIndex ==
                                    LoanStatus.pending.index)
                              Column(
                                children: [
                                  kHeight,
                                  CoApplicantDetailsSection(
                                    coApplicant:
                                        state.selectedLoan!.coApplicant,
                                  ),
                                ],
                              ),
                            if (state.selectedLoan!.guarenter != null ||
                                state.selectedLoan!.loanStatusIndex ==
                                    LoanStatus.pending.index)
                              Column(
                                children: [
                                  kHeight,
                                  GuarenterDetailsSection(
                                    guarenter: state.selectedLoan!.guarenter,
                                  )
                                ],
                              ),
                            if (state.selectedLoan!.loanParticulars != null ||
                                state.selectedLoan!.loanStatusIndex ==
                                    LoanStatus.pending.index)
                              Column(
                                children: [
                                  kHeight,
                                  LoanParticularsSection(
                                    loanParticulars:
                                        state.selectedLoan!.loanParticulars,
                                  ),
                                ],
                              ),
                            if (state.selectedLoan!.miscellaneousDetails !=
                                    null ||
                                state.selectedLoan!.loanStatusIndex ==
                                    LoanStatus.pending.index)
                              Column(
                                children: [
                                  kHeight,
                                  MiscellaneousDetailsSection(
                                    miscellaneousDetails: state
                                        .selectedLoan!.miscellaneousDetails,
                                  ),
                                ],
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
