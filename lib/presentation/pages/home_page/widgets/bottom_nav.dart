import 'package:data_dex/application/app_action/app_action_cubit.dart';
import 'package:data_dex/presentation/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppActionCubit, AppActionState>(
      builder: (context, state) {
        return SalomonBottomBar(
          currentIndex: state.bottomNavIndex,
          onTap: (index) =>
              context.read<AppActionCubit>().bottomNavIndexChanged(index),
          items: [
            SalomonBottomBarItem(
              icon: const Icon(Icons.checklist),
              activeIcon: const Icon(Icons.checklist_rtl),
              title: const Text("Completed"),
              selectedColor: kPrimaryColor,
            ),
            SalomonBottomBarItem(
              icon: const Icon(Icons.hourglass_top),
              activeIcon: const Icon(Icons.hourglass_bottom),
              title: const Text("Pending"),
              selectedColor: kPrimaryColor,
            ),
            SalomonBottomBarItem(
              icon: const Icon(Icons.delete_sweep_outlined),
              activeIcon: const Icon(Icons.delete_sweep),
              title: const Text("Dropped"),
              selectedColor: kPrimaryColor,
            ),
            SalomonBottomBarItem(
              icon: const Icon(Icons.access_time),
              activeIcon: const Icon(Icons.access_time_filled),
              title: const Text("Follow up"),
              selectedColor: kPrimaryColor,
            ),
          ],
        );
      },
    );
  }
}
