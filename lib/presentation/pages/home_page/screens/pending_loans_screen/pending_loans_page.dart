import 'package:data_dex/presentation/pages/home_page/screens/widgets/screen_title.dart';
import 'package:flutter/material.dart';

class PendingLoansScreen extends StatelessWidget {
  const PendingLoansScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ScreenTitle(title: 'Pending loans'),
      ],
    );
  }
}
