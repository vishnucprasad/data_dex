import 'package:data_dex/injection.dart';
import 'package:data_dex/presentation/router/app_router.dart';
import 'package:data_dex/presentation/theme/app_theme.dart';
import 'package:flutter/material.dart';

class DataDexApp extends StatelessWidget {
  const DataDexApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: buildLightTheme(),
      routerConfig: getIt<AppRouter>().config(),
    );
  }
}
