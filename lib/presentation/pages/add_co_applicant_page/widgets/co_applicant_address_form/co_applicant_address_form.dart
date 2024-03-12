import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:data_dex/application/co_applicant_form/co_applicant_form_bloc.dart';
import 'package:data_dex/application/guarenter_form/guarenter_form_bloc.dart';
import 'package:data_dex/presentation/core/constants.dart';
import 'package:data_dex/presentation/pages/add_co_applicant_page/widgets/co_applicant_address_form/house_name_input_field.dart';
import 'package:data_dex/presentation/pages/add_co_applicant_page/widgets/co_applicant_address_form/pincode_input_field.dart';
import 'package:data_dex/presentation/pages/add_co_applicant_page/widgets/co_applicant_address_form/post_office_input_field.dart';
import 'package:data_dex/presentation/pages/add_co_applicant_page/widgets/co_applicant_address_form/street_name_input_field.dart';
import 'package:data_dex/presentation/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CoApplicantAddressForm extends StatelessWidget {
  const CoApplicantAddressForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<CoApplicantFormBloc, CoApplicantFormState>(
      listenWhen: (p, c) => p.failureOrSuccess != c.failureOrSuccess,
      listener: (context, state) {
        state.failureOrSuccess.fold(
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
            (_) {
              context
                  .read<GuarenterFormBloc>()
                  .add(GuarenterFormEvent.loanIdChanged(state.loanId!));
              context
                  .read<CoApplicantFormBloc>()
                  .add(CoApplicantFormEvent.initialized(none()));
              context.replaceRoute(const AddGuarenterRoute());
            },
          ),
        );
      },
      child: const Column(
        children: [
          kHeightMd,
          HouseNameInputField(),
          kHeightMd,
          PostOfficeInputField(),
          kHeightMd,
          StreetNameInputField(),
          kHeightMd,
          PincodeInputField(),
          kHeightMd,
        ],
      ),
    );
  }
}
