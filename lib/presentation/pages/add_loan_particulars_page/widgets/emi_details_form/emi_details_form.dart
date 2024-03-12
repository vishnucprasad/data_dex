import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:data_dex/application/loan_particulars_form/loan_particulars_form_bloc.dart';
import 'package:data_dex/application/miscellaneous_details_form/miscellaneous_form_bloc.dart';
import 'package:data_dex/presentation/core/constants.dart';
import 'package:data_dex/presentation/pages/add_loan_particulars_page/widgets/emi_details_form/widgets/bank_name_input_field.dart';
import 'package:data_dex/presentation/pages/add_loan_particulars_page/widgets/emi_details_form/widgets/emi_amount_input_field.dart';
import 'package:data_dex/presentation/pages/add_loan_particulars_page/widgets/emi_details_form/widgets/first_emi_date_picker_button.dart';
import 'package:data_dex/presentation/pages/add_loan_particulars_page/widgets/emi_details_form/widgets/repayment_mode_dropdown_button.dart';
import 'package:data_dex/presentation/pages/add_loan_particulars_page/widgets/emi_details_form/widgets/tenure_dropdown_button.dart';
import 'package:data_dex/presentation/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EMIDetailsForm extends StatelessWidget {
  const EMIDetailsForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoanParticularsFormBloc, LoanParticularsFormState>(
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
                  .read<MiscellaneousDetailsFormBloc>()
                  .add(MiscellaneousDetailsFormEvent.loanIdChanged(
                    state.loanId!,
                  ));
              context
                  .read<LoanParticularsFormBloc>()
                  .add(LoanParticularsFormEvent.initialized(none()));
              context.replaceRoute(const AddMiscellaneousDetailsRoute());
            },
          ),
        );
      },
      child: const Column(
        children: [
          kHeightMd,
          EMIAmountInputField(),
          kHeightMd,
          TenureDropdownButton(),
          kHeightMd,
          FirstEMIDatePickerButton(),
          kHeightMd,
          BankNameInputField(),
          kHeightMd,
          RepaymentModeDropdownButton(),
          kHeightMd,
        ],
      ),
    );
  }
}
