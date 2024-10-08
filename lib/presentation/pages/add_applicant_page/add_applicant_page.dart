import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:data_dex/application/applicant_form/applicant_form_bloc.dart';
import 'package:data_dex/application/co_applicant_form/co_applicant_form_bloc.dart';
import 'package:data_dex/presentation/core/constants.dart';
import 'package:data_dex/presentation/pages/add_applicant_page/widgets/applicant_address_form/applicant_address_form.dart';
import 'package:data_dex/presentation/pages/add_applicant_page/widgets/applicant_basic_info_form/applicant_basic_info_form.dart';
import 'package:data_dex/presentation/pages/add_applicant_page/widgets/applicant_more_details_form/applicant_more_details_form.dart';
import 'package:data_dex/presentation/core/widgets/stepper_back_button.dart';
import 'package:data_dex/presentation/core/widgets/stepper_next_button.dart';
import 'package:data_dex/presentation/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class AddApplicantPage extends StatelessWidget {
  const AddApplicantPage({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        context
            .read<ApplicantFormBloc>()
            .add(const ApplicantFormEvent.deleteImage());
        context
            .read<ApplicantFormBloc>()
            .add(ApplicantFormEvent.initialized(none()));
        return true;
      },
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(0), // Set AppBar height to zero
          child: Container(
            color: Colors.lightBlue.shade600,
          ),
        ),
        body: SafeArea(
          child: BlocConsumer<ApplicantFormBloc, ApplicantFormState>(
            listenWhen: (p, c) => p.failureOrSuccess != c.failureOrSuccess,
            listener: (context, state) {
              state.failureOrSuccess.fold(
                () => null,
                (either) => either.fold(
                  (f) => FlushbarHelper.createError(
                    message: f.map(
                      clientFailure: (_) => 'Something went wrong.',
                      imageFailure: (e) => e.msg,
                      locationFailure: (e) => e.msg,
                      permissionDenied: (_) => 'Access denied!',
                      unexpected: (_) => 'An unexpected error occurred',
                      unableToUpdate: (_) => 'Unable to update note',
                      unableToDelete: (_) => 'Unable to delete note',
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
                    Text(
                      state.isEditing ? 'Edit applicant' : 'Add applicant',
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      ),
                    ),
                    const Spacer(),
                    if (state.isEditing)
                      TextButton(
                        onPressed: () {
                          if (state.isEditing) {
                            context
                                .read<CoApplicantFormBloc>()
                                .add(CoApplicantFormEvent.initialized(
                                  initializeOption: some(state.editingLoan!),
                                ));
                          } else {
                            context
                                .read<CoApplicantFormBloc>()
                                .add(CoApplicantFormEvent.loanIdChanged(
                                  state.loanId,
                                ));
                          }

                          context
                              .read<ApplicantFormBloc>()
                              .add(ApplicantFormEvent.initialized(none()));
                          context.replaceRoute(const AddCoApplicantRoute());
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
                              isActive: !state.isImageUploading &&
                                  !state.isLocationFetching,
                              onPressed: details.onStepContinue,
                            ),
                            if (state.formStep != 0) kWidth,
                            if (state.formStep != 0)
                              StepperBackButton(
                                isActive: !state.isImageUploading &&
                                    !state.isLocationFetching,
                                onPressed: details.onStepCancel,
                              ),
                          ],
                        );
                      },
                      onStepCancel: () => context.read<ApplicantFormBloc>().add(
                          ApplicantFormEvent.formStepChanged(
                              state.formStep - 1)),
                      onStepContinue: () {
                        bool isLastStep = (state.formStep == 2);
                        if (isLastStep &&
                            !state.isLocationFetching &&
                            !state.isImageUploading) {
                          context
                              .read<ApplicantFormBloc>()
                              .add(const ApplicantFormEvent.saveApplicant());
                        } else if (!isLastStep) {
                          context.read<ApplicantFormBloc>().add(
                              ApplicantFormEvent.formStepChanged(
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
                          content: const ApplicantBasicInfoForm(),
                        ),
                        Step(
                          state: state.formStep > 1
                              ? StepState.complete
                              : StepState.indexed,
                          isActive: state.formStep >= 1,
                          title: const Text("Address"),
                          content: const ApplicantAddressForm(),
                        ),
                        Step(
                          state: state.formStep > 2
                              ? StepState.complete
                              : StepState.indexed,
                          isActive: state.formStep >= 2,
                          title: const Text("More details"),
                          content: const ApplicantMoreDetailsForm(),
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
