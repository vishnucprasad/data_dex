import 'package:auto_route/auto_route.dart';
import 'package:bottom_bar_page_transition/bottom_bar_page_transition.dart';
import 'package:data_dex/application/app_action/app_action_cubit.dart';
import 'package:data_dex/presentation/pages/home_page/screens/completed_loans_screen/completed_loans_screen.dart';
import 'package:data_dex/presentation/pages/home_page/screens/dropped_loans_screen/dropped_loans_screens.dart';
import 'package:data_dex/presentation/pages/home_page/screens/follow_up_screen/follow_up_screen.dart';
import 'package:data_dex/presentation/pages/home_page/screens/pending_loans_screen/pending_loans_page.dart';
import 'package:data_dex/presentation/pages/home_page/widgets/bottom_nav.dart';
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
      body: BlocBuilder<AppActionCubit, AppActionState>(
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
      bottomNavigationBar: const BottomNav(),
    );
  }
}
