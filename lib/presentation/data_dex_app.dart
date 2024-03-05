import 'package:data_dex/application/app_action/app_action_cubit.dart';
import 'package:data_dex/application/applicant_form/applicant_form_bloc.dart';
import 'package:data_dex/application/auth/auth_bloc.dart';
import 'package:data_dex/injection.dart';
import 'package:data_dex/presentation/router/app_router.dart';
import 'package:data_dex/presentation/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DataDexApp extends StatelessWidget {
  const DataDexApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) =>
                getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested())),
        BlocProvider(create: (context) => getIt<AppActionCubit>()),
        BlocProvider(create: (context) => getIt<ApplicantFormBloc>()),
      ],
      child: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          state.map(
            initial: (_) => null,
            authenticated: (_) {
              getIt<AppRouter>().replace(const HomeRoute());
            },
            unauthenticated: (_) {
              getIt<AppRouter>().replace(const SigninRoute());
            },
          );
        },
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          theme: buildLightTheme(),
          routerConfig: getIt<AppRouter>().config(),
        ),
      ),
    );
  }
}
