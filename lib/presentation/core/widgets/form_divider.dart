import 'package:data_dex/presentation/core/constants.dart';
import 'package:flutter/material.dart';

class FormDivider extends StatelessWidget {
  const FormDivider({
    super.key,
    required this.text,
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
          ),
        ),
        kWidthMd,
        Text(
          text,
          style: TextStyle(
            color: Colors.lightBlue.shade600,
          ),
        ),
        kWidthMd,
        Expanded(
          child: Divider(
            color: Colors.lightBlue.shade600,
          ),
        )
      ],
    );
  }
}
