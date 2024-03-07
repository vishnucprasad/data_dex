import 'package:data_dex/presentation/core/constants.dart';
import 'package:data_dex/presentation/pages/home_page/screens/widgets/screen_title.dart';
import 'package:flutter/material.dart';

class FollowUpScreen extends StatelessWidget {
  const FollowUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ScreenTitle(title: 'Follow up'),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.not_interested, size: 62),
                kHeight,
                Text(
                  'There are currently no loans to follow up',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
