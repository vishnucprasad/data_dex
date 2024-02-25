import 'package:data_dex/presentation/core/colors.dart';
import 'package:data_dex/presentation/core/constants.dart';
import 'package:flutter/material.dart';

class LocationPickerContainer extends StatelessWidget {
  const LocationPickerContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: kSecondaryColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'House location',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          kHeightMd,
          Row(
            children: [
              Text(
                'Latitude : ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              kWidthMd,
              Text(
                'Not selected',
              ),
            ],
          ),
          Row(
            children: [
              Text(
                'Longitude : ',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              kWidthMd,
              Text(
                'Not selected',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
