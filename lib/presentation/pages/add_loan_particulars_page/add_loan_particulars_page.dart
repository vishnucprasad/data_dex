import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:data_dex/application/loan_particulars_form/loan_particulars_form_bloc.dart';
import 'package:data_dex/presentation/core/constants.dart';
import 'package:data_dex/presentation/core/widgets/stepper_back_button.dart';
import 'package:data_dex/presentation/core/widgets/stepper_next_button.dart';
import 'package:data_dex/presentation/pages/add_loan_particulars_page/widgets/emi_details_form/emi_details_form.dart';
import 'package:data_dex/presentation/pages/add_loan_particulars_page/widgets/loan_details_form/loan_details_form.dart';
import 'package:data_dex/presentation/pages/add_loan_particulars_page/widgets/vehicle_details_form/vehicle_details_form.dart';
import 'package:data_dex/presentation/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class AddLoanParticularsPage extends StatelessWidget {
  const AddLoanParticularsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        context
            .read<LoanParticularsFormBloc>()
            .add(LoanParticularsFormEvent.initialized(none()));
        return true;
      },
      child: BlocBuilder<LoanParticularsFormBloc, LoanParticularsFormState>(
        builder: (context, state) {
          return Scaffold(
            body: SafeArea(
              child: Column(
                children: [
                  kHeightMd,
                  Row(
                    children: [
                      const BackButton(),
                      Text(
                        state.isEditing &&
                                state.editingLoan?.loanParticulars != null
                            ? 'Edit loan particulars'
                            : 'Loan particulars',
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                        ),
                      ),
                      const Spacer(),
                      TextButton(
                        onPressed: () {
                          context
                              .read<LoanParticularsFormBloc>()
                              .add(LoanParticularsFormEvent.loanIdChanged(
                                state.loanId!,
                              ));
                          context
                              .read<LoanParticularsFormBloc>()
                              .add(LoanParticularsFormEvent.initialized(
                                none(),
                              ));
                          context.replaceRoute(
                            const AddMiscellaneousDetailsRoute(),
                          );
                        },
                        child: Row(
                          children: [
                            Text(
                              'Skip',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.lightBlue.shade600,
                              ),
                            ),
                            Icon(
                              Icons.keyboard_arrow_right,
                              color: Colors.lightBlue.shade600,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  kHeightMd,
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Stepper(
                        type: StepperType.vertical,
                        currentStep: state.formStep,
                        connectorColor: MaterialStatePropertyAll<Color>(
                          Colors.lightBlue.shade600,
                        ),
                        controlsBuilder: (context, ControlsDetails details) {
                          final isLastStep = state.formStep == 2;
                          return Row(
                            children: [
                              StepperNextButton(
                                isSaving: state.isSaving,
                                isLastStep: isLastStep,
                                onPressed: details.onStepContinue,
                              ),
                              if (state.formStep != 0) kWidthMd,
                              if (state.formStep != 0)
                                StepperBackButton(
                                  onPressed: details.onStepCancel,
                                ),
                            ],
                          );
                        },
                        onStepCancel: () => context
                            .read<LoanParticularsFormBloc>()
                            .add(LoanParticularsFormEvent.formStepChanged(
                                state.formStep - 1)),
                        onStepContinue: () {
                          bool isLastStep = (state.formStep == 2);
                          if (isLastStep) {
                            context.read<LoanParticularsFormBloc>().add(
                                const LoanParticularsFormEvent
                                    .saveLoanParticulars());
                          } else {
                            context.read<LoanParticularsFormBloc>().add(
                                LoanParticularsFormEvent.formStepChanged(
                                    state.formStep + 1));
                          }
                        },
                        steps: [
                          Step(
                            state: state.formStep > 0
                                ? StepState.complete
                                : StepState.indexed,
                            isActive: state.formStep >= 0,
                            title: const Text("Vehicle details"),
                            content: const VehicleDetailsForm(),
                          ),
                          Step(
                            state: state.formStep > 1
                                ? StepState.complete
                                : StepState.indexed,
                            isActive: state.formStep >= 1,
                            title: const Text("Loan details"),
                            content: const LoanDetailsForm(),
                          ),
                          Step(
                            state: state.formStep > 2
                                ? StepState.complete
                                : StepState.indexed,
                            isActive: state.formStep >= 2,
                            title: const Text("EMI details"),
                            content: const EMIDetailsForm(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
