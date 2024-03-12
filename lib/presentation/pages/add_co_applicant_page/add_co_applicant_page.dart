import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:data_dex/application/co_applicant_form/co_applicant_form_bloc.dart';
import 'package:data_dex/application/guarenter_form/guarenter_form_bloc.dart';
import 'package:data_dex/presentation/core/constants.dart';
import 'package:data_dex/presentation/core/widgets/stepper_back_button.dart';
import 'package:data_dex/presentation/core/widgets/stepper_next_button.dart';
import 'package:data_dex/presentation/pages/add_co_applicant_page/widgets/co_applicant_address_form/co_applicant_address_form.dart';
import 'package:data_dex/presentation/pages/add_co_applicant_page/widgets/co_applicant_basic_info_form/co_applicant_basic_info_form.dart';
import 'package:data_dex/presentation/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class AddCoApplicantPage extends StatelessWidget {
  const AddCoApplicantPage({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        context
            .read<CoApplicantFormBloc>()
            .add(CoApplicantFormEvent.initialized(none()));

        return true;
      },
      child: BlocBuilder<CoApplicantFormBloc, CoApplicantFormState>(
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
                                state.editingLoan?.coApplicant != null
                            ? 'Edit coapplicant'
                            : 'Add coapplicant',
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
                        ),
                      ),
                      const Spacer(),
                      TextButton(
                        onPressed: () {
                          if (state.isEditing) {
                            context
                                .read<GuarenterFormBloc>()
                                .add(GuarenterFormEvent.initialized(
                                  some(state.editingLoan!),
                                ));
                          } else {
                            context
                                .read<GuarenterFormBloc>()
                                .add(GuarenterFormEvent.loanIdChanged(
                                  state.loanId!,
                                ));
                          }

                          context
                              .read<CoApplicantFormBloc>()
                              .add(CoApplicantFormEvent.initialized(none()));
                          context.replaceRoute(const AddGuarenterRoute());
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
                          final isLastStep = state.formStep == 1;
                          return Row(
                            children: [
                              StepperNextButton(
                                isSaving: state.isSaving,
                                isLastStep: isLastStep,
                                onPressed: details.onStepContinue,
                              ),
                              if (state.formStep != 0) kWidth,
                              if (state.formStep != 0)
                                StepperBackButton(
                                  onPressed: details.onStepCancel,
                                ),
                            ],
                          );
                        },
                        onStepCancel: () => context
                            .read<CoApplicantFormBloc>()
                            .add(CoApplicantFormEvent.formStepChanged(
                                state.formStep - 1)),
                        onStepContinue: () {
                          bool isLastStep = (state.formStep == 1);
                          if (isLastStep) {
                            context.read<CoApplicantFormBloc>().add(
                                const CoApplicantFormEvent.saveCoApplicant());
                          } else {
                            context.read<CoApplicantFormBloc>().add(
                                CoApplicantFormEvent.formStepChanged(
                                    state.formStep + 1));
                          }
                        },
                        onStepTapped: (step) => context
                            .read<CoApplicantFormBloc>()
                            .add(CoApplicantFormEvent.formStepChanged(step)),
                        steps: [
                          Step(
                            state: state.formStep > 0
                                ? StepState.complete
                                : StepState.indexed,
                            isActive: state.formStep >= 0,
                            title: const Text("Basic information"),
                            content: const CoApplicantBasicInfoForm(),
                          ),
                          Step(
                            state: state.formStep > 1
                                ? StepState.complete
                                : StepState.indexed,
                            isActive: state.formStep >= 1,
                            title: const Text("Address"),
                            content: const CoApplicantAddressForm(),
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
