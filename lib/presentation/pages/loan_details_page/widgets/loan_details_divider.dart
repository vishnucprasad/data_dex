import 'package:data_dex/presentation/core/constants.dart';
import 'package:flutter/material.dart';

class LoanDetailsDivider extends StatelessWidget {
  const LoanDetailsDivider({
    required this.text,
    super.key,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 20,
          child: Divider(
            color: Colors.lightBlue.shade600,
            thickness: 2,
          ),
        ),
        kWidthMd,
        Text(
          text.toUpperCase(),
          style: TextStyle(
            color: Colors.lightBlue.shade600,
            fontWeight: FontWeight.bold,
            wordSpacing: 6,
          ),
        ),
        kWidthMd,
        Expanded(
          child: Divider(
            color: Colors.lightBlue.shade600,
            thickness: 2,
          ),
        )
      ],
    );
  }
}
