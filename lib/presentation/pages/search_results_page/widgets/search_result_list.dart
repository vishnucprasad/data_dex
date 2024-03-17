import 'package:data_dex/application/app_action/app_action_cubit.dart';
import 'package:data_dex/application/loan/loan_watcher/loan_watcher_bloc.dart';
import 'package:data_dex/domain/core/constants.dart';
import 'package:data_dex/domain/loan/models/loan.dart';
import 'package:data_dex/presentation/core/constants.dart';
import 'package:data_dex/presentation/pages/home_page/widgets/loan_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultList extends StatelessWidget {
  const SearchResultList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: BlocBuilder<AppActionCubit, AppActionState>(
          builder: (context, appState) {
            return BlocBuilder<LoanWatcherBloc, LoanWatcherState>(
              builder: (context, state) {
                return state.map(
                  initial: (_) => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  loading: (_) => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  loadSuccess: (state) {
                    List<Loan> completedLoans;

                    if (appState.searchText.isNotEmpty) {
                      completedLoans = state.loans
                          .asList()
                          .where((loan) {
                            return LoanStatus.values[loan.loanStatusIndex] ==
                                LoanStatus.completed;
                          })
                          .where((loan) => loan.applicant.basicInfo.name
                              .getOrCrash()
                              .toLowerCase()
                              .contains(
                                appState.searchText.toLowerCase(),
                              ))
                          .toList();
                    } else {
                      completedLoans = state.loans.asList().where((loan) {
                        return LoanStatus.values[loan.loanStatusIndex] ==
                            LoanStatus.completed;
                      }).toList();
                    }

                    completedLoans.sort(
                      (a, b) => DateTime.parse(b.disbursementDate!).compareTo(
                        DateTime.parse(a.disbursementDate!),
                      ),
                    );

                    return completedLoans.isEmpty
                        ? const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.not_interested, size: 62),
                              kHeight,
                              Text(
                                'There are no matching loans',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          )
                        : ListView.separated(
                            itemBuilder: (context, index) {
                              return LoanCard(loan: completedLoans[index]);
                            },
                            separatorBuilder: (context, index) => kHeight,
                            itemCount: completedLoans.length,
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
            );
          },
        ),
      ),
    );
  }
}
