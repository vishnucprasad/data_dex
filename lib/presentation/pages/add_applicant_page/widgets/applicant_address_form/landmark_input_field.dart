import 'package:data_dex/application/applicant_form/applicant_form_bloc.dart';
import 'package:data_dex/presentation/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class LandmarkInputField extends HookWidget {
  const LandmarkInputField({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();
    return BlocConsumer<ApplicantFormBloc, ApplicantFormState>(
      listenWhen: (p, c) => p.showValidationError != c.showValidationError,
      listener: (context, state) {
        if (state.isEditing) {
          controller.text = state.address.landmark != null
              ? state.address.landmark!.value.getOrElse(() => "")
              : "";
        }
      },
      buildWhen: (p, c) => p.showValidationError != c.showValidationError,
      builder: (context, state) {
        if (state.isEditing &&
            state.address.landmark != null &&
            state.address.landmark!.isValid()) {
          controller.text = state.address.landmark!.value.getOrElse(() => "");
        }

        return TextFormField(
          controller: controller,
          maxLength: 100,
          decoration: InputDecoration(
            hintText: 'Landmark',
            labelText: 'Landmark',
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
              .read<ApplicantFormBloc>()
              .state
              .address
              .landmark
              ?.value
              .fold(
                (f) => state.formStep == 1
                    ? f.maybeMap(
                        empty: (_) => "Landmark can't be empty",
                        exceedingLength: (f) =>
                            "Landmark can't exceed ${f.maxLength} characters",
                        multiLine: (_) =>
                            "Landmark should be a single line without line breaks",
                        orElse: () => null,
                      )
                    : null,
                (_) => null,
              ),
          onChanged: (landmark) => context
              .read<ApplicantFormBloc>()
              .add(ApplicantFormEvent.landmarkChanged(landmark)),
        );
      },
    );
  }
}
