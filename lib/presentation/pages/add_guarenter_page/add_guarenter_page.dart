import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:data_dex/application/guarenter_form/guarenter_form_bloc.dart';
import 'package:data_dex/application/loan_particulars_form/loan_particulars_form_bloc.dart';
import 'package:data_dex/presentation/core/constants.dart';
import 'package:data_dex/presentation/core/widgets/stepper_back_button.dart';
import 'package:data_dex/presentation/core/widgets/stepper_next_button.dart';
import 'package:data_dex/presentation/pages/add_guarenter_page/widgets/guarenter_address_form/guarenter_address_form.dart';
import 'package:data_dex/presentation/pages/add_guarenter_page/widgets/guarenter_basic_info_form/guarenter_basic_info_form.dart';
import 'package:data_dex/presentation/pages/add_guarenter_page/widgets/guarenter_more_details_form/guarenter_more_details_form.dart';
import 'package:data_dex/presentation/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class AddGuarenterPage extends StatelessWidget {
  const AddGuarenterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        context
            .read<GuarenterFormBloc>()
            .add(const GuarenterFormEvent.initialized());

        return true;
      },
      child: Scaffold(
        body: SafeArea(
          child: BlocConsumer<GuarenterFormBloc, GuarenterFormState>(
            listenWhen: (p, c) => p.failureOrSuccess != c.failureOrSuccess,
            listener: (context, state) {
              state.failureOrSuccess.fold(
                () => null,
                (either) => either.fold(
                  (f) => FlushbarHelper.createError(
                    message: f.maybeMap(
                      imageFailure: (e) => e.msg,
                      locationFailure: (e) => e.msg,
                      orElse: () => 'Something went wrong.',
                    ),
                  ).show(context),
                  (_) => null,
                ),
              );
            },
            builder: (context, state) => Column(
              children: [
                kHeightMd,
                Row(
                  children: [
                    const BackButton(),
                    const Text(
                      'Add guarenter',
                      style: TextStyle(
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
                            .read<GuarenterFormBloc>()
                            .add(const GuarenterFormEvent.initialized());
                        context.replaceRoute(const AddLoanParticularsRoute());
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
                              isLastStep: isLastStep,
                              isSaving: state.isSaving,
                              onPressed: details.onStepContinue,
                            ),
                            if (state.formStep != 0) kWidthMd,
                            if (state.formStep != 0)
                              StepperBackButton(
                                  onPressed: details.onStepCancel),
                          ],
                        );
                      },
                      onStepCancel: () => context.read<GuarenterFormBloc>().add(
                          GuarenterFormEvent.formStepChanged(
                              state.formStep - 1)),
                      onStepContinue: () {
                        bool isLastStep = (state.formStep == 2);
                        if (isLastStep) {
                          context
                              .read<GuarenterFormBloc>()
                              .add(const GuarenterFormEvent.saveGuarenter());
                        } else {
                          context.read<GuarenterFormBloc>().add(
                              GuarenterFormEvent.formStepChanged(
                                  state.formStep + 1));
                        }
                      },
                      steps: [
                        Step(
                          state: state.formStep > 0
                              ? StepState.complete
                              : StepState.indexed,
                          isActive: state.formStep >= 0,
                          title: const Text("Basic information"),
                          content: const GuarenterBasicInfoForm(),
                        ),
                        Step(
                          state: state.formStep > 1
                              ? StepState.complete
                              : StepState.indexed,
                          isActive: state.formStep >= 1,
                          title: const Text("Address"),
                          content: const GuarenterAddressForm(),
                        ),
                        Step(
                          state: state.formStep > 2
                              ? StepState.complete
                              : StepState.indexed,
                          isActive: state.formStep >= 2,
                          title: const Text("More details"),
                          content: const GuarenterMoreDetailsForm(),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
