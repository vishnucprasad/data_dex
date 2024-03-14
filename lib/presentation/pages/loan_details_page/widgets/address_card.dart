import 'package:data_dex/domain/core/models/address/address.dart';
import 'package:data_dex/presentation/core/colors.dart';
import 'package:data_dex/presentation/core/constants.dart';
import 'package:flutter/material.dart';

class AddressCard extends StatelessWidget {
  const AddressCard({
    required this.address,
    super.key,
  });

  final Address address;

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
            'Address',
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
                'House name:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              kWidthMd,
              Text(
                address.houseName.getOrCrash(),
              ),
            ],
          ),
          kHeightMd,
          Row(
            children: [
              const Text(
                'Post office:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              kWidthMd,
              Text(
                address.postOffice.getOrCrash(),
              ),
            ],
          ),
          kHeightMd,
          Row(
            children: [
              const Text(
                'Sreet name:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              kWidthMd,
              Text(
                address.streetName.getOrCrash(),
              ),
            ],
          ),
          kHeightMd,
          Row(
            children: [
              const Text(
                'Pincode:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              kWidthMd,
              Text(
                address.pincode.getOrCrash(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
