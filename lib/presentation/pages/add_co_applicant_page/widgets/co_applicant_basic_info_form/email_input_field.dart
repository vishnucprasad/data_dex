import 'package:data_dex/application/co_applicant_form/co_applicant_form_bloc.dart';
import 'package:data_dex/presentation/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class EmailInputField extends HookWidget {
  const EmailInputField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();
    return BlocConsumer<CoApplicantFormBloc, CoApplicantFormState>(
      listenWhen: (p, c) => p.showValidationError != c.showValidationError,
      listener: (context, state) {
        if (!state.isEditing) {
          controller.text = state.basicInfo.emailAddress != null
              ? state.basicInfo.emailAddress!.value.getOrElse(() => '')
              : '';
        }
      },
      buildWhen: (p, c) => p.showValidationError != c.showValidationError,
      builder: (context, state) {
        if (state.isEditing &&
            state.basicInfo.emailAddress != null &&
            state.basicInfo.emailAddress!.isValid()) {
          controller.text =
              state.basicInfo.emailAddress!.value.getOrElse(() => "");
        }

        return TextFormField(
          controller: controller,
          decoration: InputDecoration(
            hintText: 'Email address',
            labelText: 'Email',
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
          keyboardType: TextInputType.emailAddress,
          autovalidateMode: state.showValidationError
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          validator: (_) => context
              .read<CoApplicantFormBloc>()
              .state
              .basicInfo
              .emailAddress
              ?.value
              .fold(
                (f) => state.formStep == 0
                    ? f.maybeMap(
                        empty: (_) => "Phone number can't be empty",
                        invalid: (_) => "Invalid phone number",
                        orElse: () => null,
                      )
                    : null,
                (_) => null,
              ),
          onChanged: (email) => context
              .read<CoApplicantFormBloc>()
              .add(CoApplicantFormEvent.emailChnaged(email)),
        );
      },
    );
  }
}
