import 'package:data_dex/presentation/core/colors.dart';
import 'package:flutter/material.dart';

class PincodeInputField extends StatelessWidget {
  const PincodeInputField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: 'Applicant pincode',
        labelText: 'Pincode',
        labelStyle: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
        floatingLabelStyle: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        filled: true,
        fillColor: kSecondaryColor,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 4,
          horizontal: 16,
        ),
      ),
      validator: (_) => null,
      onChanged: (pincode) {},
    );
  }
}
