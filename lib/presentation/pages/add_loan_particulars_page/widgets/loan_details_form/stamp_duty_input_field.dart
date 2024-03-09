import 'package:data_dex/application/loan_particulars_form/loan_particulars_form_bloc.dart';
import 'package:data_dex/presentation/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class StampDutyInputField extends HookWidget {
  const StampDutyInputField({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();
    return BlocConsumer<LoanParticularsFormBloc, LoanParticularsFormState>(
      listenWhen: (p, c) => p.showValidationError != c.showValidationError,
      listener: (context, state) {
        controller.text = state.loanDetails.stampDuty.value.getOrElse(() => "");
      },
      builder: (context, state) {
        return TextFormField(
          controller: controller,
          decoration: InputDecoration(
            hintText: 'Stamp duty',
            labelText: 'Stamp duty',
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
              .read<LoanParticularsFormBloc>()
              .state
              .loanDetails
              .stampDuty
              .value
              .fold(
                (f) => state.formStep == 1
                    ? f.maybeMap(
                        empty: (_) => "Stamp duty can't be empty",
                        unsignedDouble: (_) =>
                            "Please input the stamp duty as a whole number or a decimal number",
                        orElse: () => null,
                      )
                    : null,
                (_) => null,
              ),
          onChanged: (stampDuty) => context
              .read<LoanParticularsFormBloc>()
              .add(LoanParticularsFormEvent.stampDutyChanged(stampDuty)),
        );
      },
    );
  }
}
