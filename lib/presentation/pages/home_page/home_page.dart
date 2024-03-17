import 'package:auto_route/auto_route.dart';
import 'package:bottom_bar_page_transition/bottom_bar_page_transition.dart';
import 'package:data_dex/application/app_action/app_action_cubit.dart';
import 'package:data_dex/application/loan/loan_actor/loan_actor_bloc.dart';
import 'package:data_dex/application/loan/loan_watcher/loan_watcher_bloc.dart';
import 'package:data_dex/injection.dart';
import 'package:data_dex/presentation/core/colors.dart';
import 'package:data_dex/presentation/pages/home_page/screens/completed_loans_screen/completed_loans_screen.dart';
import 'package:data_dex/presentation/pages/home_page/screens/dropped_loans_screen/dropped_loans_screens.dart';
import 'package:data_dex/presentation/pages/home_page/screens/follow_up_screen/follow_up_screen.dart';
import 'package:data_dex/presentation/pages/home_page/screens/pending_loans_screen/pending_loans_page.dart';
import 'package:data_dex/presentation/pages/home_page/widgets/bottom_nav.dart';
import 'package:data_dex/presentation/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> screens = [
      const CompletedLoansScreen(),
      const PendingLoansScreen(),
      const DroppedLoansScreen(),
      const FollowUpScreen(),
    ];

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0), // Set AppBar height to zero
        child: Container(
          color: Colors.lightBlue.shade600,
        ),
      ),
      body: BlocListener<LoanWatcherBloc, LoanWatcherState>(
        listener: (context, state) {
          state.mapOrNull(
            loadSuccess: (state) => context
                .read<LoanActorBloc>()
                .add(LoanActorEvent.findFollowUps(state.loans.asList())),
          );
        },
        child: BlocBuilder<AppActionCubit, AppActionState>(
          builder: (context, state) {
            return SafeArea(
              child: BottomBarPageTransition(
                builder: (_, index) {
                  return screens[index];
                },
                currentIndex: state.bottomNavIndex,
                totalLength: screens.length,
                transitionType: TransitionType.circular,
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: const BottomNav(),
      floatingActionButton: FloatingActionButton(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
            bottomLeft: Radius.circular(30.0),
            bottomRight: Radius.circular(10.0),
          ),
        ),
        backgroundColor: Colors.lightBlue.shade600,
        foregroundColor: kLightColor,
        onPressed: () => getIt<AppRouter>().push(const AddApplicantRoute()),
        child: const Icon(Icons.add),
      ),
    );
  }
}
