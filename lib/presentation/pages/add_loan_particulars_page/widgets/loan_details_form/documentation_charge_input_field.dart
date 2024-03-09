import 'package:data_dex/application/loan_particulars_form/loan_particulars_form_bloc.dart';
import 'package:data_dex/presentation/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class DocumentationChargeInputField extends HookWidget {
  const DocumentationChargeInputField({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();
    return BlocConsumer<LoanParticularsFormBloc, LoanParticularsFormState>(
      listenWhen: (p, c) => p.showValidationError != c.showValidationError,
      listener: (context, state) {
        controller.text =
            state.loanDetails.documentationCharge.value.getOrElse(() => "");
      },
      builder: (context, state) {
        return TextFormField(
          controller: controller,
          decoration: InputDecoration(
            errorMaxLines: 2,
            hintText: 'Documentation charge',
            labelText: 'Documentation charge',
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
              .documentationCharge
              .value
              .fold(
                (f) => state.formStep == 1
                    ? f.maybeMap(
                        unsignedDouble: (_) =>
                            "Please input the documentation charge as a whole number or a decimal number",
                        orElse: () => null,
                      )
                    : null,
                (_) => null,
              ),
          onChanged: (documentationCharge) => context
              .read<LoanParticularsFormBloc>()
              .add(LoanParticularsFormEvent.documentationChargeChanged(
                documentationCharge,
              )),
        );
      },
    );
  }
}
