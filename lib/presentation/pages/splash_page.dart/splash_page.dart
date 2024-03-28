import 'package:auto_route/auto_route.dart';
import 'package:data_dex/injection.dart';
import 'package:data_dex/presentation/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

@RoutePage()
class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0), // Set AppBar height to zero
        child: Container(
          color: Colors.lightBlue.shade600,
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/icon.png'),
            ),
            kHeight,
            const Text(
              'DATA DEX',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                letterSpacing: 4,
                wordSpacing: 6,
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Version: ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  getIt<PackageInfo>().version,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.lightBlue.shade600,
                  ),
                ),
              ],
            ),
            kHeight,
          ],
        ),
      ),
    );
  }
}
