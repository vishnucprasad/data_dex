import 'package:data_dex/application/loan/loan_watcher/loan_watcher_bloc.dart';
import 'package:data_dex/domain/core/constants.dart';
import 'package:data_dex/presentation/core/constants.dart';
import 'package:data_dex/presentation/pages/home_page/screens/widgets/screen_title.dart';
import 'package:data_dex/presentation/pages/home_page/widgets/loan_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CompletedLoansScreen extends StatelessWidget {
  const CompletedLoansScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ScreenTitle(title: 'Completed loans'),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: BlocBuilder<LoanWatcherBloc, LoanWatcherState>(
              builder: (context, state) {
                return state.map(
                  initial: (_) => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  loading: (_) => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  loadSuccess: (state) {
                    final pendingLoans = state.loans.asList().where((loan) {
                      return LoanStatus.values[loan.loanStatusIndex] ==
                          LoanStatus.completed;
                    }).toList();

                    return pendingLoans.isEmpty
                        ? const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.not_interested, size: 62),
                              kHeight,
                              Text(
                                'There are currently no completed loans',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          )
                        : ListView.separated(
                            itemBuilder: (context, index) {
                              return LoanCard(loan: pendingLoans[index]);
                            },
                            separatorBuilder: (context, index) => kHeight,
                            itemCount: pendingLoans.length,
                          );
                  },
                  loadFailure: (_) => Center(
                    child: Text(
                      'Unable to load loans list',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.error,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
