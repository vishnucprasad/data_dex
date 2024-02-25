import 'package:data_dex/presentation/core/colors.dart';
import 'package:flutter/material.dart';

class StepperBackButton extends StatelessWidget {
  const StepperBackButton({
    super.key,
    required this.onPressed,
  });

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        style: ButtonStyle(
          elevation: const MaterialStatePropertyAll<double>(0),
          backgroundColor: MaterialStatePropertyAll<Color>(
            kPrimaryColor.withOpacity(0.125),
          ),
          foregroundColor: const MaterialStatePropertyAll<Color>(
            kPrimaryColor,
          ),
          shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
        onPressed: onPressed,
        child: const Text('Back'),
      ),
    );
  }
}
