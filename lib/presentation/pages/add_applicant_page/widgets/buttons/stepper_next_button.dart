import 'package:data_dex/presentation/core/colors.dart';
import 'package:flutter/material.dart';

class StepperNextButton extends StatelessWidget {
  const StepperNextButton({
    super.key,
    required this.isLastStep,
    required this.onPressed,
  });

  final bool isLastStep;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        style: ButtonStyle(
          elevation: const MaterialStatePropertyAll<double>(0),
          backgroundColor: MaterialStatePropertyAll<Color>(
            Colors.lightBlue.shade600,
          ),
          foregroundColor: const MaterialStatePropertyAll<Color>(
            kLightColor,
          ),
          shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          isLastStep ? 'Save' : 'Next',
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
