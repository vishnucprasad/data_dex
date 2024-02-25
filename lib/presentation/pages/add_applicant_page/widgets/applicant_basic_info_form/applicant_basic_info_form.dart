import 'package:data_dex/presentation/core/constants.dart';
import 'package:data_dex/presentation/pages/add_applicant_page/widgets/applicant_basic_info_form/date_of_birth_date_picker_button.dart';
import 'package:data_dex/presentation/pages/add_applicant_page/widgets/applicant_basic_info_form/email_input_field.dart';
import 'package:data_dex/presentation/pages/add_applicant_page/widgets/applicant_basic_info_form/name_input_field.dart';
import 'package:data_dex/presentation/pages/add_applicant_page/widgets/applicant_basic_info_form/phone_number_input_field.dart';
import 'package:flutter/material.dart';

class ApplicantBasicInfoForm extends StatelessWidget {
  const ApplicantBasicInfoForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        kHeightMd,
        NameInputField(),
        kHeightMd,
        PhoneNumberInputField(),
        kHeightMd,
        EmailInputField(),
        kHeightMd,
        DateOfBirthDatePickerButton(),
        kHeightMd,
      ],
    );
  }
}
