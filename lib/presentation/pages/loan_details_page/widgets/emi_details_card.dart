import 'package:data_dex/domain/loan_particulars/models/emi_details/emi_details.dart';
import 'package:data_dex/presentation/core/colors.dart';
import 'package:data_dex/presentation/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class EMIDetailsCard extends StatelessWidget {
  const EMIDetailsCard({
    required this.emiDetails,
    super.key,
  });

  final EMIDetails emiDetails;

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
            'EMI details',
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
                'EMI amount:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              kWidthMd,
              Text(
                '₹ ${double.parse(emiDetails.emiAmount.getOrCrash()).toStringAsFixed(2)}',
              ),
            ],
          ),
          kHeightMd,
          Row(
            children: [
              const Text(
                'Tenure:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              kWidthMd,
              Text(
                '${emiDetails.tenure.getOrCrash()} months',
              ),
            ],
          ),
          kHeightMd,
          Row(
            children: [
              const Text(
                'First EMI date:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              kWidthMd,
              Text(
                DateFormat.yMMMMd().format(DateTime.parse(
                  emiDetails.firstEMIDate.getOrCrash(),
                )),
              ),
            ],
          ),
          kHeightMd,
          Row(
            children: [
              const Text(
                'Bank name:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              kWidthMd,
              Text(
                emiDetails.bankName.getOrCrash(),
              ),
            ],
          ),
          kHeightMd,
          Row(
            children: [
              const Text(
                'Repayment mode:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              kWidthMd,
              Text(
                emiDetails.repaymentMode.getOrCrash(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
