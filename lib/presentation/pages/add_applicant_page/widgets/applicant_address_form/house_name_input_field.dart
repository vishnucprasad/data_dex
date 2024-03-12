import 'package:data_dex/application/applicant_form/applicant_form_bloc.dart';
import 'package:data_dex/presentation/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class HouseNameInputField extends HookWidget {
  const HouseNameInputField({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();
    return BlocConsumer<ApplicantFormBloc, ApplicantFormState>(
      listenWhen: (p, c) => p.showValidationError != c.showValidationError,
      listener: (context, state) {
        if (!state.isEditing) {
          controller.text = state.address.houseName.value.getOrElse(() => '');
        }
      },
      buildWhen: (p, c) => p.showValidationError != c.showValidationError,
      builder: (context, state) {
        if (state.isEditing && state.address.houseName.isValid()) {
          controller.text = state.address.houseName.value.getOrElse(() => '');
        }

        return TextFormField(
          controller: controller,
          maxLength: 60,
          decoration: InputDecoration(
            hintText: 'Applicant house name',
            labelText: 'House name',
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
              .houseName
              .value
              .fold(
                (f) => state.formStep == 1
                    ? f.maybeMap(
                        empty: (_) => "House name can't be empty",
                        exceedingLength: (f) =>
                            "House name can't exceed ${f.maxLength} characters",
                        multiLine: (_) =>
                            "House name should be a single line without line breaks",
                        orElse: () => null,
                      )
                    : null,
                (_) => null,
              ),
          onChanged: (houseName) => context
              .read<ApplicantFormBloc>()
              .add(ApplicantFormEvent.houseNameChanged(houseName)),
        );
      },
    );
  }
}
