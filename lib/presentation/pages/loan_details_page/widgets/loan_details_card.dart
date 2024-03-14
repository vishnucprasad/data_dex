import 'package:data_dex/domain/loan_particulars/models/loan_details/loan_details.dart';
import 'package:data_dex/presentation/core/colors.dart';
import 'package:data_dex/presentation/core/constants.dart';
import 'package:flutter/material.dart';

class LoanDetailsCard extends StatelessWidget {
  const LoanDetailsCard({
    required this.loanDetails,
    super.key,
  });

  final LoanDetails loanDetails;

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
            'Loan details',
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
                'Loan amount:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              kWidthMd,
              Text(
                '₹ ${double.parse(loanDetails.loanAmount.getOrCrash()).toStringAsFixed(2)}',
              ),
            ],
          ),
          kHeightMd,
          Row(
            children: [
              const Text(
                'LTV:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              kWidthMd,
              Text(
                '${double.parse(loanDetails.ltv.getOrCrash()).toStringAsFixed(2)} %',
              ),
            ],
          ),
          kHeightMd,
          Row(
            children: [
              const Text(
                'Service charge:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              kWidthMd,
              Text(
                '₹ ${double.parse(loanDetails.serviceCharge.getOrCrash()).toStringAsFixed(2)}',
              ),
            ],
          ),
          kHeightMd,
          Row(
            children: [
              const Text(
                'Documentation charge:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              kWidthMd,
              Text(
                '₹ ${double.parse(
                  loanDetails.documentationCharge.getOrCrash().isNotEmpty
                      ? loanDetails.documentationCharge.getOrCrash()
                      : '0',
                ).toStringAsFixed(2)}',
              ),
            ],
          ),
          kHeightMd,
          Row(
            children: [
              const Text(
                'Life amount:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              kWidthMd,
              Text(
                '₹ ${double.parse(
                  loanDetails.lifeAmount.getOrCrash().isNotEmpty
                      ? loanDetails.lifeAmount.getOrCrash()
                      : '0',
                ).toStringAsFixed(2)}',
              ),
            ],
          ),
          kHeightMd,
          Row(
            children: [
              const Text(
                'PAC amount:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              kWidthMd,
              Text(
                '₹ ${double.parse(
                  loanDetails.pacAmount.getOrCrash().isNotEmpty
                      ? loanDetails.pacAmount.getOrCrash()
                      : '0',
                ).toStringAsFixed(2)}',
              ),
            ],
          ),
          kHeightMd,
          Row(
            children: [
              const Text(
                'Stamp duty:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              kWidthMd,
              Text(
                '₹ ${double.parse(loanDetails.stampDuty.getOrCrash()).toStringAsFixed(2)}',
              ),
            ],
          ),
          kHeightMd,
          Row(
            children: [
              const Text(
                'Date shifting charge:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              kWidthMd,
              Text(
                '₹ ${double.parse(
                  loanDetails.dateShiftingCharge.getOrCrash().isNotEmpty
                      ? loanDetails.dateShiftingCharge.getOrCrash()
                      : '0',
                ).toStringAsFixed(2)}',
              ),
            ],
          ),
          kHeightMd,
          Row(
            children: [
              const Text(
                'Counter amount:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              kWidthMd,
              Text(
                '₹ ${double.parse(
                  loanDetails.counterAmount.getOrCrash().isNotEmpty
                      ? loanDetails.counterAmount.getOrCrash()
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
