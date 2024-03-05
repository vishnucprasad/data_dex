import 'package:data_dex/application/auth/signin/signin_bloc.dart';
import 'package:data_dex/presentation/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SigninButton extends StatelessWidget {
  const SigninButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            kDarkColor,
          ),
          foregroundColor: MaterialStateProperty.all<Color>(
            kLightColor,
          ),
          shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
        ),
        onPressed: () => context
            .read<SigninBloc>()
            .add(const SigninEvent.signinButtonPressed()),
        child: const Text(
          'Signin',
          style: TextStyle(
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
