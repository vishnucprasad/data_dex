import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:data_dex/application/guarenter_form/guarenter_form_bloc.dart';
import 'package:data_dex/application/loan_particulars_form/loan_particulars_form_bloc.dart';
import 'package:data_dex/presentation/core/constants.dart';
import 'package:data_dex/presentation/pages/add_guarenter_page/widgets/guarenter_more_details_form/image_picker_button.dart';
import 'package:data_dex/presentation/pages/add_guarenter_page/widgets/guarenter_more_details_form/image_picker_container.dart';
import 'package:data_dex/presentation/pages/add_guarenter_page/widgets/guarenter_more_details_form/location_picker_button.dart';
import 'package:data_dex/presentation/pages/add_guarenter_page/widgets/guarenter_more_details_form/location_picker_container.dart';
import 'package:data_dex/presentation/pages/add_guarenter_page/widgets/guarenter_more_details_form/take_image_button.dart';
import 'package:data_dex/presentation/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GuarenterMoreDetailsForm extends StatelessWidget {
  const GuarenterMoreDetailsForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<GuarenterFormBloc, GuarenterFormState>(
      listenWhen: (p, c) =>
          p.guarenterFailureOrSuccess != c.guarenterFailureOrSuccess,
      listener: (context, state) {
        state.guarenterFailureOrSuccess.fold(
          () => null,
          (either) => either.fold(
            (f) => FlushbarHelper.createError(
              message: f.maybeMap(
                permissionDenied: (_) => 'Access denied!',
                unexpected: (_) => 'An unexpected error occurred',
                unableToUpdate: (_) => 'Unable to update note',
                unableToDelete: (_) => 'Unable to delete note',
                orElse: () => 'Something went wrong.',
              ),
            ).show(context),
            (_) {
              if (state.closeAfterSave) {
                return context.maybePop();
              }

              if (state.isEditing) {
                context
                    .read<LoanParticularsFormBloc>()
                    .add(LoanParticularsFormEvent.initialized(
                      initializeOption: some(state.editingLoan!),
                    ));
              } else {
                context
                    .read<LoanParticularsFormBloc>()
                    .add(LoanParticularsFormEvent.loanIdChanged(
                      state.loanId!,
                    ));
              }

              context
                  .read<GuarenterFormBloc>()
                  .add(GuarenterFormEvent.initialized(
                    initializeOption: none(),
                  ));
              context.replaceRoute(const AddLoanParticularsRoute());
            },
          ),
        );
      },
      child: Column(
        children: [
          kHeightMd,
          const LocationPickerContainer(),
          kHeightMd,
          const LocationPickerButton(),
          kHeightMd,
          Divider(color: Colors.lightBlue.shade600),
          kHeightMd,
          const ImagePickerContainer(),
          kHeightMd,
          const Row(
            children: [
              Expanded(
                child: TakeImageButton(),
              ),
              kWidthMd,
              Expanded(
                child: ImagePickerButton(),
              ),
            ],
          ),
          kHeightMd,
        ],
      ),
    );
  }
}
