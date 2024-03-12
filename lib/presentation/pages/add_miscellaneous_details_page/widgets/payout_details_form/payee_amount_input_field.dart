import 'package:data_dex/application/miscellaneous_details_form/miscellaneous_form_bloc.dart';
import 'package:data_dex/presentation/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class PayeeAmountInputField extends HookWidget {
  const PayeeAmountInputField({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();
    return BlocConsumer<MiscellaneousDetailsFormBloc,
        MiscellaneousDetailsFormState>(
      listenWhen: (p, c) => p.showValidationError != c.showValidationError,
      listener: (context, state) {
        if (!state.isEditing) {
          controller.text =
              state.payoutDetails.payeeAmount.value.getOrElse(() => "");
        }
      },
      buildWhen: (p, c) => p.showValidationError != c.showValidationError,
      builder: (context, state) {
        if (state.isEditing && state.payoutDetails.payeeAmount.isValid()) {
          controller.text =
              state.payoutDetails.payeeAmount.value.getOrElse(() => "");
        }

        return TextFormField(
          controller: controller,
          decoration: InputDecoration(
            errorMaxLines: 2,
            hintText: 'Payee amount',
            labelText: 'Payee amount',
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
          keyboardType: TextInputType.number,
          autovalidateMode: state.showValidationError
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          validator: (_) => context
              .read<MiscellaneousDetailsFormBloc>()
              .state
              .payoutDetails
              .payeeAmount
              .value
              .fold(
                (f) => state.formStep == 0
                    ? f.maybeMap(
                        empty: (_) => "Payee amount can't be empty",
                        unsignedDouble: (_) =>
                            "Please input the payee amount as a whole number or a decimal number",
                        orElse: () => null,
                      )
                    : null,
                (_) => null,
              ),
          onChanged: (payeeAmount) => context
              .read<MiscellaneousDetailsFormBloc>()
              .add(MiscellaneousDetailsFormEvent.payeeAmountChanged(
                payeeAmount,
              )),
        );
      },
    );
  }
}
