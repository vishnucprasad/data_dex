import 'package:data_dex/presentation/core/constants.dart';
import 'package:data_dex/presentation/core/widgets/form_divider.dart';
import 'package:data_dex/presentation/pages/add_miscellaneous_details_page/widgets/reference_details_form/reference_one_name_input_field.dart';
import 'package:data_dex/presentation/pages/add_miscellaneous_details_page/widgets/reference_details_form/reference_one_phone_number_input_field.dart';
import 'package:data_dex/presentation/pages/add_miscellaneous_details_page/widgets/reference_details_form/reference_two_name_input_field.dart';
import 'package:data_dex/presentation/pages/add_miscellaneous_details_page/widgets/reference_details_form/reference_two_phone_number_input_field.dart';
import 'package:flutter/material.dart';

class ReferenceDetailsForm extends StatelessWidget {
  const ReferenceDetailsForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        kHeightMd,
        FormDivider(text: "Reference one"),
        kHeightMd,
        ReferenceOneNameInputField(),
        kHeightMd,
        ReferenceOnePhoneNumberInputField(),
        kHeightMd,
        FormDivider(text: "Reference two"),
        kHeightMd,
        ReferenceTwoNameInputField(),
        kHeightMd,
        ReferenceTwoPhoneNumberInputField(),
        kHeightMd,
      ],
    );
  }
}
