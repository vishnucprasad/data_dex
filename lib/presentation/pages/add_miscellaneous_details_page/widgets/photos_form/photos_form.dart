import 'package:data_dex/application/miscellaneous_details_form/miscellaneous_form_bloc.dart';
import 'package:data_dex/presentation/core/constants.dart';
import 'package:data_dex/presentation/core/widgets/form_divider.dart';
import 'package:data_dex/presentation/pages/add_miscellaneous_details_page/widgets/photos_form/applicant_image_picker_container.dart';
import 'package:data_dex/presentation/pages/add_miscellaneous_details_page/widgets/photos_form/co_applicant_image_picker_container.dart';
import 'package:data_dex/presentation/pages/add_miscellaneous_details_page/widgets/photos_form/guarenter_image_picker_container.dart';
import 'package:data_dex/presentation/pages/add_miscellaneous_details_page/widgets/photos_form/image_picker_button.dart';
import 'package:data_dex/presentation/pages/add_miscellaneous_details_page/widgets/photos_form/take_image_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PhotosForm extends StatelessWidget {
  const PhotosForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MiscellaneousDetailsFormBloc,
        MiscellaneousDetailsFormState>(
      builder: (context, state) {
        return Column(
          children: [
            kHeightMd,
            const FormDivider(text: 'Applicant image'),
            kHeightMd,
            const ApplicantImagePickerContainer(),
            kHeightMd,
            Row(
              children: [
                Expanded(
                  child: TakeImageButton(
                    onPressed: () => context
                        .read<MiscellaneousDetailsFormBloc>()
                        .add(const MiscellaneousDetailsFormEvent
                            .takeApplicantImage()),
                  ),
                ),
                kWidthMd,
                Expanded(
                  child: ImagePickerButton(
                    onPressed: () => context
                        .read<MiscellaneousDetailsFormBloc>()
                        .add(const MiscellaneousDetailsFormEvent
                            .pickApplicantImage()),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                kHeightMd,
                const FormDivider(text: 'Coapplicant image'),
                kHeightMd,
                const CoApplicantImagePickerContainer(),
                kHeightMd,
                Row(
                  children: [
                    Expanded(
                      child: TakeImageButton(
                        onPressed: () => context
                            .read<MiscellaneousDetailsFormBloc>()
                            .add(const MiscellaneousDetailsFormEvent
                                .takeCoApplicantImage()),
                      ),
                    ),
                    kWidthMd,
                    Expanded(
                      child: ImagePickerButton(
                        onPressed: () => context
                            .read<MiscellaneousDetailsFormBloc>()
                            .add(const MiscellaneousDetailsFormEvent
                                .pickCoApplicantImage()),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                kHeightMd,
                const FormDivider(text: 'Guarenter image'),
                kHeightMd,
                const GuarenterImagePickerContainer(),
                kHeightMd,
                Row(
                  children: [
                    Expanded(
                      child: TakeImageButton(
                        onPressed: () => context
                            .read<MiscellaneousDetailsFormBloc>()
                            .add(const MiscellaneousDetailsFormEvent
                                .takeGuarenterImage()),
                      ),
                    ),
                    kWidthMd,
                    Expanded(
                      child: ImagePickerButton(
                        onPressed: () => context
                            .read<MiscellaneousDetailsFormBloc>()
                            .add(const MiscellaneousDetailsFormEvent
                                .pickGuarenterImage()),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            kHeightMd,
          ],
        );
      },
    );
  }
}
