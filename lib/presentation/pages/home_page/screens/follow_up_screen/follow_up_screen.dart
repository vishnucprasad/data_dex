import 'package:data_dex/application/loan/loan_actor/loan_actor_bloc.dart';
import 'package:data_dex/presentation/core/constants.dart';
import 'package:data_dex/presentation/pages/home_page/screens/widgets/screen_title.dart';
import 'package:data_dex/presentation/pages/home_page/widgets/loan_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/kt.dart';

class FollowUpScreen extends StatelessWidget {
  const FollowUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ScreenTitle(title: 'Follow up'),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: BlocBuilder<LoanActorBloc, LoanActorState>(
              builder: (context, state) {
                final followUps = state.followUps.sortedByDescending<DateTime>(
                    (loan) => DateTime.parse(loan.disbursementDate!));

                return followUps.isEmpty()
                    ? const Column(
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
                      )
                    : ListView.separated(
                        itemBuilder: (context, index) {
                          return LoanCard(loan: followUps[index]);
                        },
                        separatorBuilder: (context, index) => kHeight,
                        itemCount: followUps.size,
                      );
              },
            ),
          ),
        ),
      ],
    );
  }
}
