import 'package:data_dex/application/applicant_form/applicant_form_bloc.dart';
import 'package:data_dex/presentation/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class PincodeInputField extends HookWidget {
  const PincodeInputField({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();
    return BlocConsumer<ApplicantFormBloc, ApplicantFormState>(
      listenWhen: (p, c) => p.showValidationError != c.showValidationError,
      listener: (context, state) {
        controller.text = state.address.pincode.value.getOrElse(() => "");
      },
      builder: (context, state) {
        return TextFormField(
          controller: controller,
          maxLength: 6,
          decoration: InputDecoration(
            hintText: 'Applicant pincode',
            labelText: 'Pincode',
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
              .read<ApplicantFormBloc>()
              .state
              .address
              .pincode
              .value
              .fold(
                (f) => state.formStep == 1
                    ? f.maybeMap(
                        empty: (_) => "Pincode can't be empty",
                        notANumber: (_) => "Pincode must be a number",
                        exceedingLength: (f) =>
                            "Pincode can't exceed ${f.maxLength} characters",
                        stringLength: (f) =>
                            "Pincode should be ${f.length} characters long",
                        orElse: () => null,
                      )
                    : null,
                (_) => null,
              ),
          onChanged: (pincode) => context
              .read<ApplicantFormBloc>()
              .add(ApplicantFormEvent.pincodeChanged(pincode)),
        );
      },
    );
  }
}
