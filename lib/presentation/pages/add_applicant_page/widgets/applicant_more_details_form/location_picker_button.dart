import 'package:data_dex/presentation/core/colors.dart';
import 'package:flutter/material.dart';

class LocationPickerButton extends StatelessWidget {
  const LocationPickerButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: double.infinity,
      child: ElevatedButton.icon(
        style: ButtonStyle(
          elevation: const MaterialStatePropertyAll<double>(0),
          backgroundColor:
              const MaterialStatePropertyAll<Color>(kSecondaryColor),
          foregroundColor: const MaterialStatePropertyAll<Color>(kDarkColor),
          shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        onPressed: () {},
        icon: const Icon(Icons.my_location),
        label: const Text(
          'Get current location',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
