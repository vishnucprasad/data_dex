import 'package:auto_route/auto_route.dart';
import 'package:data_dex/injection.dart';
import 'package:data_dex/presentation/core/constants.dart';
import 'package:data_dex/presentation/router/app_router.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(seconds: 2));
      getIt<AppRouter>().replace(const HomeRoute());
    });

    return const Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
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
    );
  }
}
