import 'package:data_dex/application/auth/signin/signin_bloc.dart';
import 'package:data_dex/presentation/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class PasswordInputField extends HookWidget {
  const PasswordInputField({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();
    return BlocConsumer<SigninBloc, SigninState>(
      listenWhen: (p, c) => p.showValidationError != c.showValidationError,
      listener: (context, state) {
        controller.text = state.credentials.password.value.getOrElse(() => "");
      },
      builder: (context, state) {
        return TextFormField(
          controller: controller,
          decoration: InputDecoration(
            hintText: 'Password',
            labelText: 'Password',
            errorMaxLines: 3,
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
          validator: (_) =>
              context.read<SigninBloc>().state.credentials.password.value.fold(
                    (l) => l.maybeMap(
                      empty: (_) => "Password can't be empty",
                      invalid: (_) =>
                          "Password must be minimum six characters, at least one uppercase letter, one lowercase letter, one number and one special character",
                      orElse: () => null,
                    ),
                    (r) => null,
                  ),
          onChanged: (value) => context
              .read<SigninBloc>()
              .add(SigninEvent.passwordChanged(value)),
        );
      },
    );
  }
}
