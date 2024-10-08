import 'package:data_dex/presentation/core/constants.dart';
import 'package:data_dex/presentation/pages/add_applicant_page/widgets/applicant_address_form/house_name_input_field.dart';
import 'package:data_dex/presentation/pages/add_applicant_page/widgets/applicant_address_form/landmark_input_field.dart';
import 'package:data_dex/presentation/pages/add_applicant_page/widgets/applicant_address_form/pincode_input_field.dart';
import 'package:data_dex/presentation/pages/add_applicant_page/widgets/applicant_address_form/post_office_input_field.dart';
import 'package:data_dex/presentation/pages/add_applicant_page/widgets/applicant_address_form/street_name_input_field.dart';
import 'package:flutter/material.dart';

class ApplicantAddressForm extends StatelessWidget {
  const ApplicantAddressForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        kHeightMd,
        HouseNameInputField(),
        kHeightMd,
        PostOfficeInputField(),
        kHeightMd,
        StreetNameInputField(),
        kHeightMd,
        LandmarkInputField(),
        kHeightMd,
        PincodeInputField(),
        kHeightMd,
      ],
    );
  }
}
