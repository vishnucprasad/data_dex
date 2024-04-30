import 'package:data_dex/application/loan_particulars_form/loan_particulars_form_bloc.dart';
import 'package:data_dex/domain/core/constants.dart';
import 'package:data_dex/presentation/core/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class PacAmountInputField extends HookWidget {
  const PacAmountInputField({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();
    return BlocConsumer<LoanParticularsFormBloc, LoanParticularsFormState>(
      listenWhen: (p, c) => p.showValidationError != c.showValidationError,
      listener: (context, state) {
        if (!state.isEditing) {
          controller.text =
              state.loanDetails.pacAmount.value.getOrElse(() => "");
        }
      },
      buildWhen: (p, c) =>
          p.showValidationError != c.showValidationError ||
          p.loanDetails.loanScheme != c.loanDetails.loanScheme ||
          p.loanDetails.fundedChargesList != c.loanDetails.fundedChargesList,
      builder: (context, state) {
        if (state.isEditing && state.loanDetails.pacAmount.isValid()) {
          controller.text =
              state.loanDetails.pacAmount.value.getOrElse(() => "");
        }
        return TextFormField(
          controller: controller,
          decoration: InputDecoration(
            errorMaxLines: 2,
            hintText: 'Pac amount',
            labelText: 'Pac amount',
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
            suffixIcon: state.loanDetails.loanScheme == LoanScheme.funded
                ? Transform.scale(
                    scale: 0.75,
                    child: CupertinoSwitch(
                      value: state.loanDetails.fundedChargesList?.contains(
                            FundOptions.pac.index,
                          ) ??
                          false,
                      onChanged: (isFunded) {
                        context.read<LoanParticularsFormBloc>().add(
                              isFunded
                                  ? const LoanParticularsFormEvent.fundAdded(
                                      FundOptions.pac,
                                    )
                                  : const LoanParticularsFormEvent.fundRemoved(
                                      FundOptions.pac,
                                    ),
                            );
                      },
                      activeColor: Colors.lightBlue.shade600,
                    ),
                  )
                : null,
          ),
          keyboardType: TextInputType.number,
          autovalidateMode: state.showValidationError
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          validator: (_) => context
              .read<LoanParticularsFormBloc>()
              .state
              .loanDetails
              .pacAmount
              .value
              .fold(
                (f) => state.formStep == 1
                    ? f.maybeMap(
                        unsignedDouble: (_) =>
                            "Please input the pac amount as a whole number or a decimal number",
                        orElse: () => null,
                      )
                    : null,
                (_) => null,
              ),
          onChanged: (pacAmount) => context
              .read<LoanParticularsFormBloc>()
              .add(LoanParticularsFormEvent.pacAmountChanged(pacAmount)),
        );
      },
    );
  }
}
