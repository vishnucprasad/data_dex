import 'package:data_dex/domain/loan_particulars/models/loan_details/loan_details.dart';
import 'package:data_dex/presentation/core/colors.dart';
import 'package:data_dex/presentation/core/constants.dart';
import 'package:flutter/material.dart';

class LoanDetailsCard extends StatelessWidget {
  const LoanDetailsCard({
    required this.loanDetails,
    required this.fundedLoanAmount,
    required this.ddAmount,
    required this.downPayment,
    super.key,
  });

  final LoanDetails loanDetails;
  final double? fundedLoanAmount;
  final double? ddAmount;
  final double? downPayment;

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
          if (fundedLoanAmount != null)
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Funded loan amount:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.lightBlue.shade600,
                      ),
                    ),
                    kWidthMd,
                    Text(
                      '₹ ${fundedLoanAmount!.toStringAsFixed(2)}',
                    ),
                  ],
                ),
                kHeightMd,
              ],
            ),
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
          kHeightMd,
          Row(
            children: [
              Text(
                'DD amount:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.lightBlue.shade600,
                ),
              ),
              kWidthMd,
              Text(
                '₹ ${(ddAmount ?? 0).toStringAsFixed(2)}',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          kHeightMd,
          Row(
            children: [
              Text(
                'Downpayment:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.lightBlue.shade600,
                ),
              ),
              kWidthMd,
              Text(
                '₹ ${(downPayment ?? 0).toStringAsFixed(2)}',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
