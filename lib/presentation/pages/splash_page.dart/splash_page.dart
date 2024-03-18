import 'package:auto_route/auto_route.dart';
import 'package:data_dex/presentation/core/constants.dart';
import 'package:flutter/material.dart';

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
      body: const SizedBox(
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
