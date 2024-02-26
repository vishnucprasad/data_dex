import 'dart:io';

import 'package:data_dex/application/applicant_form/applicant_form_bloc.dart';
import 'package:data_dex/presentation/core/colors.dart';
import 'package:data_dex/presentation/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ImagePickerContainer extends StatelessWidget {
  const ImagePickerContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: kSecondaryColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: BlocBuilder<ApplicantFormBloc, ApplicantFormState>(
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'House image',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              state.houseImage == null
                  ? const SizedBox(
                      width: double.infinity,
                      child: Column(
                        children: [
                          kHeightMd,
                          Icon(
                            Icons.hide_image_outlined,
                            size: 78,
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
                      width: double.infinity,
                      child: Image.file(File(state.houseImage!.path)),
                    ),
            ],
          );
        },
      ),
    );
  }
}
