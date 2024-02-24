import 'package:data_dex/application/app_action/app_action_cubit.dart';
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
        BlocProvider(create: (context) => getIt<AppActionCubit>()),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: buildLightTheme(),
        routerConfig: getIt<AppRouter>().config(),
      ),
    );
  }
}
