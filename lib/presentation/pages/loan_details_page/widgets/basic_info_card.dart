import 'package:data_dex/domain/core/models/basic_info/basic_info.dart';
import 'package:data_dex/presentation/core/colors.dart';
import 'package:data_dex/presentation/core/constants.dart';
import 'package:flutter/material.dart';

class BasicInfoCard extends StatelessWidget {
  const BasicInfoCard({
    required this.basicInfo,
    super.key,
  });

  final BasicInfo basicInfo;

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
            'Basic info',
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
                'Name:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              kWidthMd,
              Text(
                basicInfo.name.getOrCrash(),
              ),
            ],
          ),
          kHeightMd,
          Row(
            children: [
              const Text(
                'Phone number:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              kWidthMd,
              Text(
                basicInfo.phoneNumber.getOrCrash(),
              ),
            ],
          ),
          kHeightMd,
          Row(
            children: [
              const Text(
                'Email address:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              kWidthMd,
              Text(
                basicInfo.emailAddress?.getOrCrash() ?? 'NILL',
              ),
            ],
          ),
          kHeightMd,
          Row(
            children: [
              const Text(
                'Date of birth:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              kWidthMd,
              Text(
                basicInfo.phoneNumber.getOrCrash(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
