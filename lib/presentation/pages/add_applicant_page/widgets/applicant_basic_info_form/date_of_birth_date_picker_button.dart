import 'package:data_dex/presentation/core/colors.dart';
import 'package:flutter/material.dart';

class DateOfBirthDatePickerButton extends StatelessWidget {
  const DateOfBirthDatePickerButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      width: double.infinity,
      child: ElevatedButton(
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
        onPressed: () async {
          final selectedDate = await showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1900),
            lastDate: DateTime.now(),
            builder: (context, child) {
              return Theme(
                data: Theme.of(context).copyWith(
                  colorScheme: ColorScheme.light(
                    primary: Colors.lightBlue.shade600,
                    onPrimary: kLightColor,
                    onSurface: kDarkColor,
                    surfaceTint: Colors.transparent,
                  ),
                  textButtonTheme: TextButtonThemeData(
                    style: TextButton.styleFrom(
                      foregroundColor:
                          Colors.lightBlue.shade600, // button text color
                    ),
                  ),
                ),
                child: child!,
              );
            },
          );

          print(selectedDate);
        },
        child: const Text(
          'Select DOB',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
