import 'package:data_dex/application/miscellaneous_details_form/miscellaneous_form_bloc.dart';
import 'package:data_dex/presentation/core/colors.dart';
import 'package:data_dex/presentation/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CoApplicantImagePickerContainer extends StatelessWidget {
  const CoApplicantImagePickerContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MiscellaneousDetailsFormBloc,
        MiscellaneousDetailsFormState>(
      builder: (context, state) {
        return Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: kSecondaryColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: state.coApplicantImage == null
              ? state.isCoApplicantImageUploading
                  ? const SizedBox(
                      width: double.infinity,
                      height: 100,
                      child: Column(
                        children: [
                          kHeightMd,
                          CircularProgressIndicator(),
                          kHeightMd,
                          Text(
                            'Uploading... please wait',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          kHeightMd,
                        ],
                      ),
                    )
                  : const SizedBox(
                      width: double.infinity,
                      height: 100,
                      child: Column(
                        children: [
                          kHeightMd,
                          Icon(
                            Icons.hide_image_outlined,
                            size: 56,
                          ),
                          kHeightMd,
                          Text(
                            'Image not selected',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          kHeightMd,
                        ],
                      ),
                    )
              : SizedBox(
                  height: 100,
                  width: double.infinity,
                  child: Image.network(state.coApplicantImage!.url),
                ),
        );
      },
    );
  }
}
