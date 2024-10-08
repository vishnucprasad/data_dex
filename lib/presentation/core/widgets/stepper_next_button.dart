import 'package:data_dex/presentation/core/colors.dart';
import 'package:flutter/material.dart';

class StepperNextButton extends StatelessWidget {
  const StepperNextButton({
    super.key,
    required this.isLastStep,
    required this.isSaving,
    required this.isActive,
    required this.onPressed,
  });

  final bool isLastStep;
  final bool isSaving;
  final bool isActive;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        style: ButtonStyle(
          elevation: const MaterialStatePropertyAll<double>(0),
          backgroundColor: MaterialStatePropertyAll<Color>(
            isActive ? Colors.lightBlue.shade600 : kGreyColor,
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
          isLastStep
              ? isSaving
                  ? 'Saving ...'
                  : 'Save'
              : 'Next',
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
