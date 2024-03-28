import 'package:data_dex/presentation/core/colors.dart';
import 'package:flutter/material.dart';

class StepperBackButton extends StatelessWidget {
  const StepperBackButton({
    super.key,
    required this.isActive,
    required this.onPressed,
  });

  final bool isActive;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        style: ButtonStyle(
          elevation: const MaterialStatePropertyAll<double>(0),
          backgroundColor: MaterialStatePropertyAll<Color>(
            isActive ? kPrimaryColor.withOpacity(0.125) : kGreyColor,
          ),
          foregroundColor: MaterialStatePropertyAll<Color>(
            isActive ? kPrimaryColor : kLightColor,
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
