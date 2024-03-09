import 'package:data_dex/presentation/core/colors.dart';
import 'package:flutter/material.dart';

class ImagePickerButton extends StatelessWidget {
  const ImagePickerButton({
    super.key,
    required this.onPressed,
  });

  final void Function()? onPressed;

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
        onPressed: onPressed,
        icon: const Icon(Icons.image),
        label: const Text(
          'Pick image',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
