import 'package:data_dex/application/miscellaneous_details_form/miscellaneous_form_bloc.dart';
import 'package:data_dex/presentation/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ReferenceOneNameInputField extends HookWidget {
  const ReferenceOneNameInputField({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();
    return BlocConsumer<MiscellaneousDetailsFormBloc,
        MiscellaneousDetailsFormState>(
      listenWhen: (p, c) => p.showValidationError != c.showValidationError,
      listener: (context, state) {
        if (!state.isEditing) {
          controller.text =
              state.referenceDetails.referenceOneName.value.getOrElse(() => "");
        }
      },
      buildWhen: (p, c) => p.showValidationError != c.showValidationError,
      builder: (context, state) {
        if (state.isEditing &&
            state.referenceDetails.referenceOneName.isValid()) {
          controller.text =
              state.referenceDetails.referenceOneName.value.getOrElse(() => "");
        }

        return TextFormField(
          controller: controller,
          decoration: InputDecoration(
            hintText: 'Full name',
            labelText: 'Full name',
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
          autovalidateMode: state.showValidationError
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          validator: (_) => context
              .read<MiscellaneousDetailsFormBloc>()
              .state
              .referenceDetails
              .referenceOneName
              .value
              .fold(
                (f) => state.formStep == 1
                    ? f.maybeMap(
                        empty: (_) => "Name can't be empty",
                        orElse: () => null,
                      )
                    : null,
                (_) => null,
              ),
          onChanged: (referenceOneName) => context
              .read<MiscellaneousDetailsFormBloc>()
              .add(MiscellaneousDetailsFormEvent.referenceOneNameChanged(
                referenceOneName,
              )),
        );
      },
    );
  }
}
