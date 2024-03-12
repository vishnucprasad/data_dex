import 'package:data_dex/application/miscellaneous_details_form/miscellaneous_form_bloc.dart';
import 'package:data_dex/presentation/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ReferenceOnePhoneNumberInputField extends HookWidget {
  const ReferenceOnePhoneNumberInputField({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();
    return BlocConsumer<MiscellaneousDetailsFormBloc,
        MiscellaneousDetailsFormState>(
      listenWhen: (p, c) => p.showValidationError != c.showValidationError,
      listener: (context, state) {
        if (!state.isEditing) {
          controller.text = state.referenceDetails.referenceOnePhoneNumber.value
              .getOrElse(() => "");
        }
      },
      buildWhen: (p, c) => p.showValidationError != c.showValidationError,
      builder: (context, state) {
        if (state.isEditing &&
            state.referenceDetails.referenceOnePhoneNumber.isValid()) {
          controller.text = state.referenceDetails.referenceOnePhoneNumber.value
              .getOrElse(() => "");
        }

        return TextFormField(
          controller: controller,
          decoration: InputDecoration(
            hintText: 'Phone number',
            labelText: 'Phone number',
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
          keyboardType: TextInputType.phone,
          autovalidateMode: state.showValidationError
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          validator: (_) => context
              .read<MiscellaneousDetailsFormBloc>()
              .state
              .referenceDetails
              .referenceOnePhoneNumber
              .value
              .fold(
                (f) => state.formStep == 1
                    ? f.maybeMap(
                        empty: (_) => "Phone number can't be empty",
                        invalid: (_) => "Invalid phone number",
                        orElse: () => null,
                      )
                    : null,
                (_) => null,
              ),
          onChanged: (referenceOnePhoneNumber) => context
              .read<MiscellaneousDetailsFormBloc>()
              .add(MiscellaneousDetailsFormEvent.referenceOnePhoneNumberChanged(
                referenceOnePhoneNumber,
              )),
        );
      },
    );
  }
}
