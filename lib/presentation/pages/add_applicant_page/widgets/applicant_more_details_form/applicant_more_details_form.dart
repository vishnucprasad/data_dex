import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:data_dex/application/applicant_form/applicant_form_bloc.dart';
import 'package:data_dex/application/co_applicant_form/co_applicant_form_bloc.dart';
import 'package:data_dex/presentation/core/constants.dart';
import 'package:data_dex/presentation/pages/add_applicant_page/widgets/applicant_more_details_form/image_picker_button.dart';
import 'package:data_dex/presentation/pages/add_applicant_page/widgets/applicant_more_details_form/image_picker_container.dart';
import 'package:data_dex/presentation/pages/add_applicant_page/widgets/applicant_more_details_form/location_picker_button.dart';
import 'package:data_dex/presentation/pages/add_applicant_page/widgets/applicant_more_details_form/location_picker_container.dart';
import 'package:data_dex/presentation/pages/add_applicant_page/widgets/applicant_more_details_form/take_image_button.dart';
import 'package:data_dex/presentation/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ApplicantMoreDetailsForm extends StatelessWidget {
  const ApplicantMoreDetailsForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<ApplicantFormBloc, ApplicantFormState>(
      listenWhen: (p, c) => p.loanFailureOrSuccess != c.loanFailureOrSuccess,
      listener: (context, state) {
        state.loanFailureOrSuccess.fold(
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
            (loanId) {
              if (state.isEditing) {
                context
                    .read<CoApplicantFormBloc>()
                    .add(CoApplicantFormEvent.initialized(some(
                      state.editingLoan!,
                    )));
              } else {
                context
                    .read<CoApplicantFormBloc>()
                    .add(CoApplicantFormEvent.loanIdChanged(loanId));
              }

              context
                  .read<ApplicantFormBloc>()
                  .add(ApplicantFormEvent.initialized(none()));
              context.replaceRoute(const AddCoApplicantRoute());
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
