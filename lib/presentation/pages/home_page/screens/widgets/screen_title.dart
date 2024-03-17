import 'package:auto_route/auto_route.dart';
import 'package:data_dex/application/app_action/app_action_cubit.dart';
import 'package:data_dex/presentation/core/constants.dart';
import 'package:data_dex/presentation/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScreenTitle extends StatelessWidget {
  const ScreenTitle({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppActionCubit, AppActionState>(
      builder: (context, state) {
        return Column(
          children: [
            kHeightMd,
            Row(
              children: [
                kWidth,
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                ),
                const Spacer(),
                if (state.bottomNavIndex == 0)
                  IconButton(
                    onPressed: () => context.pushRoute(
                      const SearchResultsRoute(),
                    ),
                    icon: const Icon(Icons.search),
                  )
                else
                  const SizedBox(
                    height: 48,
                  ),
                kWidth,
              ],
            ),
            kHeightMd,
          ],
        );
      },
    );
  }
}
