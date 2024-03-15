import 'package:data_dex/domain/miscellaneous_details/models/payout_details/payout_details.dart';
import 'package:data_dex/presentation/core/colors.dart';
import 'package:data_dex/presentation/core/constants.dart';
import 'package:flutter/material.dart';

class PayoutDetailsCard extends StatelessWidget {
  const PayoutDetailsCard({
    required this.payoutDetails,
    super.key,
  });

  final PayoutDetails payoutDetails;

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
            'Payout details',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.lightBlue.shade600,
            ),
          ),
          kHeight,
          Row(
            children: [
              const Text(
                'Payee name:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              kWidthMd,
              Text(payoutDetails.payeeName ?? 'NILL'),
            ],
          ),
          kHeightMd,
          Row(
            children: [
              const Text(
                'Payee amount:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              kWidthMd,
              Text(
                '₹ ${double.parse(
                  payoutDetails.payeeAmount.getOrCrash().isNotEmpty
                      ? payoutDetails.payeeAmount.getOrCrash()
                      : '0',
                ).toStringAsFixed(2)}',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
