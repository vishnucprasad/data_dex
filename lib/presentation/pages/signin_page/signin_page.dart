import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:data_dex/application/auth/auth_bloc.dart';
import 'package:data_dex/application/auth/signin/signin_bloc.dart';
import 'package:data_dex/injection.dart';
import 'package:data_dex/presentation/core/colors.dart';
import 'package:data_dex/presentation/core/constants.dart';
import 'package:data_dex/presentation/pages/signin_page/widgets/email_input_field.dart';
import 'package:data_dex/presentation/pages/signin_page/widgets/password_input_field.dart';
import 'package:data_dex/presentation/pages/signin_page/widgets/signin_button.dart';
import 'package:data_dex/presentation/pages/signin_page/widgets/signin_with_google_button.dart';
import 'package:data_dex/presentation/pages/signin_page/widgets/signup_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return BlocProvider(
      create: (context) => getIt<SigninBloc>(),
      child: BlocListener<SigninBloc, SigninState>(
        listenWhen: (p, c) =>
            p.failureOrSuccessOption != c.failureOrSuccessOption,
        listener: (context, state) {
          state.failureOrSuccessOption.fold(
            () => null,
            (either) => either.fold(
              (f) {
                FlushbarHelper.createError(
                  message: f.map(
                    clientFailure: (e) => e.msg,
                    serverFailure: (e) => e.msg,
                    emailAlredyInUse: (_) =>
                        'The email address is already in use by another account',
                    invalidCredentials: (_) =>
                        'Invalid email and password combination',
                    cancelledByUser: (_) => 'Cancelled',
                  ),
                ).show(context);
              },
              (_) => context
                  .read<AuthBloc>()
                  .add(const AuthEvent.userAuthenticated()),
            ),
          );
        },
        child: Scaffold(
          backgroundColor: kSecondaryColor,
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: size.height / 2.25,
                  width: size.width - size.width / 2,
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: AssetImage('assets/images/icon.png'),
                      ),
                      kHeight,
                      Text(
                        'DATA DEX',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 4,
                          wordSpacing: 6,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: size.height - size.height / 2.25,
                  padding: const EdgeInsets.all(30),
                  decoration: const BoxDecoration(
                    color: kLightColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(48),
                      topRight: Radius.circular(48),
                    ),
                  ),
                  child: BlocBuilder<SigninBloc, SigninState>(
                    builder: (context, state) {
                      return Column(
                        children: [
                          Text(
                            state.isSubmitting ? 'Signing in' : 'Signin',
                            style: const TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w900,
                              color: kDarkColor,
                            ),
                          ),
                          kHeightLg,
                          if (state.isSubmitting)
                            Column(
                              children: [
                                SizedBox(
                                  width: size.width / 1.25,
                                  child: const LinearProgressIndicator(
                                    backgroundColor: kSecondaryColor,
                                  ),
                                ),
                                kHeightLg,
                              ],
                            ),
                          const EmailInputField(),
                          kHeightMd,
                          const PasswordInputField(),
                          kHeightMd,
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(child: SigninButton()),
                              kWidthMd,
                              Expanded(child: SignupButton()),
                            ],
                          ),
                          kHeightMd,
                          const SigninWithGoogleButton()
                        ],
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
