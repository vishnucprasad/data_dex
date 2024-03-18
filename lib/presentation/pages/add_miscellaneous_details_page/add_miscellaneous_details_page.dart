import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:data_dex/application/miscellaneous_details_form/miscellaneous_form_bloc.dart';
import 'package:data_dex/presentation/core/constants.dart';
import 'package:data_dex/presentation/core/widgets/stepper_back_button.dart';
import 'package:data_dex/presentation/core/widgets/stepper_next_button.dart';
import 'package:data_dex/presentation/pages/add_miscellaneous_details_page/widgets/payout_details_form/payout_details_form.dart';
import 'package:data_dex/presentation/pages/add_miscellaneous_details_page/widgets/photos_form/photos_form.dart';
import 'package:data_dex/presentation/pages/add_miscellaneous_details_page/widgets/reference_details_form/reference_details_form.dart';
import 'package:data_dex/presentation/pages/add_miscellaneous_details_page/widgets/remarks_and_more_form/remarks_and_more_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class AddMiscellaneousDetailsPage extends StatelessWidget {
  const AddMiscellaneousDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        context
            .read<MiscellaneousDetailsFormBloc>()
            .add(const MiscellaneousDetailsFormEvent.deleteImages());
        context
            .read<MiscellaneousDetailsFormBloc>()
            .add(MiscellaneousDetailsFormEvent.initialized(none()));

        return true;
      },
      child: BlocBuilder<MiscellaneousDetailsFormBloc,
          MiscellaneousDetailsFormState>(
        builder: (context, state) {
          return Scaffold(
            appBar: PreferredSize(
              preferredSize:
                  const Size.fromHeight(0), // Set AppBar height to zero
              child: Container(
                color: Colors.lightBlue.shade600,
              ),
            ),
            body: SafeArea(
              child: Column(
                children: [
                  kHeightMd,
                  Row(
                    children: [
                      const BackButton(),
                      Text(
                        state.isEditing &&
                                state.editingLoan?.miscellaneousDetails != null
                            ? 'Edit miscellaneous details'
                            : 'Miscellaneous details',
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1,
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
                          final isLastStep = state.formStep == 3;
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
                            .read<MiscellaneousDetailsFormBloc>()
                            .add(MiscellaneousDetailsFormEvent.formStepChanged(
                                state.formStep - 1)),
                        onStepContinue: () {
                          bool isLastStep = (state.formStep == 3);
                          if (isLastStep) {
                            context.read<MiscellaneousDetailsFormBloc>().add(
                                const MiscellaneousDetailsFormEvent
                                    .saveMiscellaneousDetails());
                          } else {
                            context.read<MiscellaneousDetailsFormBloc>().add(
                                MiscellaneousDetailsFormEvent.formStepChanged(
                                    state.formStep + 1));
                          }
                        },
                        steps: [
                          Step(
                            state: state.formStep > 0
                                ? StepState.complete
                                : StepState.indexed,
                            isActive: state.formStep >= 0,
                            title: const Text("Payout details"),
                            content: const PayoutDetailsForm(),
                          ),
                          Step(
                            state: state.formStep > 1
                                ? StepState.complete
                                : StepState.indexed,
                            isActive: state.formStep >= 1,
                            title: const Text("Reference details"),
                            content: const ReferenceDetailsForm(),
                          ),
                          Step(
                            state: state.formStep > 2
                                ? StepState.complete
                                : StepState.indexed,
                            isActive: state.formStep >= 2,
                            title: const Text("Photos"),
                            content: const PhotosForm(),
                          ),
                          Step(
                            state: state.formStep > 3
                                ? StepState.complete
                                : StepState.indexed,
                            isActive: state.formStep >= 3,
                            title: const Text("Remarks & More"),
                            content: const RemarksAndMoreForm(),
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
