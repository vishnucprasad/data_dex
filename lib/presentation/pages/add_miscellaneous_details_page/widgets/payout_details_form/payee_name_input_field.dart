import 'package:data_dex/application/miscellaneous_details_form/miscellaneous_form_bloc.dart';
import 'package:data_dex/presentation/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class PayeeNameInputField extends HookWidget {
  const PayeeNameInputField({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();

    return BlocBuilder<MiscellaneousDetailsFormBloc,
        MiscellaneousDetailsFormState>(
      buildWhen: (p, c) => p.showValidationError != c.showValidationError,
      builder: (context, state) {
        if (state.isEditing) {
          controller.text = state.payoutDetails.payeeName ?? '';
        }

        return TextFormField(
          controller: controller,
          decoration: InputDecoration(
            hintText: 'Payee name',
            labelText: 'Payee name',
            labelStyle: const TextStyle(
              fontWeight: FontWeight.bold,
            ),
            floatingLabelStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            filled: true,
            fillColor: kSecondaryColor,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10),
            ),
            contentPadding: const EdgeInsets.symmetric(
              vertical: 4,
              horizontal: 16,
            ),
          ),
          onChanged: (payeeName) => context
              .read<MiscellaneousDetailsFormBloc>()
              .add(MiscellaneousDetailsFormEvent.payeeNameChanged(payeeName)),
        );
      },
    );
  }
}
