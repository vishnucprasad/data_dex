import 'package:data_dex/domain/core/value_objects.dart';
import 'package:data_dex/presentation/core/colors.dart';
import 'package:data_dex/presentation/core/constants.dart';
import 'package:flutter/material.dart';

class RemarksCard extends StatelessWidget {
  const RemarksCard({
    required this.remarks,
    super.key,
  });

  final Remarks? remarks;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: kSecondaryColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Remarks',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.lightBlue.shade600,
            ),
          ),
          kHeight,
          if (remarks == null || remarks!.getOrCrash().isEmpty)
            const Text('Remarks not provided')
          else
            Flexible(child: Text(remarks!.getOrCrash())),
        ],
      ),
    );
  }
}
