import 'package:data_dex/application/miscellaneous_details_form/miscellaneous_form_bloc.dart';
import 'package:data_dex/presentation/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class LeadIDInputField extends HookWidget {
  const LeadIDInputField({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();
    return BlocConsumer<MiscellaneousDetailsFormBloc,
        MiscellaneousDetailsFormState>(
      listenWhen: (p, c) => p.showValidationError != c.showValidationError,
      listener: (context, state) {
        controller.text = state.remarksAndMore.leadId.value.getOrElse(() => "");
      },
      builder: (context, state) {
        return TextFormField(
          controller: controller,
          maxLength: 8,
          decoration: InputDecoration(
            hintText: 'Lead ID',
            labelText: 'Lead ID',
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
              .remarksAndMore
              .leadId
              .value
              .fold(
                (f) => state.formStep == 3
                    ? f.maybeMap(
                        empty: (_) => "Lead ID can't be empty",
                        notANumber: (_) => "Lead ID should be a number",
                        exceedingLength: (f) =>
                            "Lead ID can't exceed ${f.maxLength} characters",
                        orElse: () => null,
                      )
                    : null,
                (_) => null,
              ),
          onChanged: (leadId) => context
              .read<MiscellaneousDetailsFormBloc>()
              .add(MiscellaneousDetailsFormEvent.leadIdChanged(leadId)),
        );
      },
    );
  }
}
