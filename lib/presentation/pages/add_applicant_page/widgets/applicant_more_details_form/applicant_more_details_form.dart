import 'package:data_dex/presentation/core/constants.dart';
import 'package:data_dex/presentation/pages/add_applicant_page/widgets/applicant_more_details_form/image_picker_button.dart';
import 'package:data_dex/presentation/pages/add_applicant_page/widgets/applicant_more_details_form/image_picker_container.dart';
import 'package:data_dex/presentation/pages/add_applicant_page/widgets/applicant_more_details_form/location_picker_button.dart';
import 'package:data_dex/presentation/pages/add_applicant_page/widgets/applicant_more_details_form/location_picker_container.dart';
import 'package:data_dex/presentation/pages/add_applicant_page/widgets/applicant_more_details_form/take_image_button.dart';
import 'package:flutter/material.dart';

class ApplicantMoreDetailsForm extends StatelessWidget {
  const ApplicantMoreDetailsForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        kHeightMd,
        const LocationPickerContainer(),
        kHeightMd,
        const LocationPickerButton(),
        kHeightMd,
        Divider(color: Colors.lightBlue.shade600),
        kHeightMd,
        const ImagePickerContainer(),
        kHeightMd,
        const Row(
          children: [
            Expanded(
              child: TakeImageButton(),
            ),
            kWidthMd,
            Expanded(
              child: ImagePickerButton(),
            ),
          ],
        ),
        kHeightMd,
      ],
    );
  }
}
