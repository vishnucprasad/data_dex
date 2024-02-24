import 'package:data_dex/presentation/core/constants.dart';
import 'package:data_dex/presentation/pages/home_page/screens/widgets/screen_title.dart';
import 'package:data_dex/presentation/pages/home_page/widgets/loan_card.dart';
import 'package:flutter/material.dart';

class PendingLoansScreen extends StatelessWidget {
  const PendingLoansScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ScreenTitle(title: 'Pending loans'),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ListView(
              children: const [
                LoanCard(),
                kHeight,
              ],
            ),
          ),
        ),
      ],
    );
  }
}
