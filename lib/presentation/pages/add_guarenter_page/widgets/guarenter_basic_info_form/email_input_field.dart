import 'package:data_dex/application/guarenter_form/guarenter_form_bloc.dart';
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
    return BlocConsumer<GuarenterFormBloc, GuarenterFormState>(
      listenWhen: (p, c) => p.showValidationError != c.showValidationError,
      listener: (context, state) {
        controller.text = state.basicInfo.emailAddress != null
            ? state.basicInfo.emailAddress!.value.getOrElse(() => '')
            : '';
      },
      builder: (context, state) {
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
              .read<GuarenterFormBloc>()
              .state
              .basicInfo
              .emailAddress
              ?.value
              .fold(
                (f) => state.formStep == 0
                    ? f.maybeMap(
                        empty: (_) => "Email address can't be empty",
                        invalid: (_) => "Invalid email",
                        orElse: () => null,
                      )
                    : null,
                (_) => null,
              ),
          onChanged: (email) => context
              .read<GuarenterFormBloc>()
              .add(GuarenterFormEvent.emailChnaged(email)),
        );
      },
    );
  }
}
