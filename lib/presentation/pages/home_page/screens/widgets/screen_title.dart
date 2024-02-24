import 'package:data_dex/presentation/core/constants.dart';
import 'package:flutter/material.dart';

class ScreenTitle extends StatelessWidget {
  const ScreenTitle({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
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
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
            kWidth,
          ],
        ),
        kHeightMd,
      ],
    );
  }
}
