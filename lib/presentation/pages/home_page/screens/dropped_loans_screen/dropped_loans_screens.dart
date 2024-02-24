import 'package:data_dex/presentation/pages/home_page/screens/widgets/screen_title.dart';
import 'package:flutter/material.dart';

class DroppedLoansScreen extends StatelessWidget {
  const DroppedLoansScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ScreenTitle(title: 'Dropped loans'),
      ],
    );
  }
}
