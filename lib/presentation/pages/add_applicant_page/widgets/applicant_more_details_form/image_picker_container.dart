import 'package:data_dex/presentation/core/colors.dart';
import 'package:data_dex/presentation/core/constants.dart';
import 'package:flutter/material.dart';

class ImagePickerContainer extends StatelessWidget {
  const ImagePickerContainer({
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
            'House image',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                kHeightMd,
                Icon(
                  Icons.hide_image_outlined,
                  size: 78,
                ),
                kHeightMd,
                Text(
                  'Image not selected',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                kHeightMd,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
