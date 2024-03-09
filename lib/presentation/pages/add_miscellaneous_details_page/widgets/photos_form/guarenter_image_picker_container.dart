import 'package:data_dex/application/miscellaneous_details_form/miscellaneous_form_bloc.dart';
import 'package:data_dex/presentation/core/colors.dart';
import 'package:data_dex/presentation/core/constants.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GuarenterImagePickerContainer extends StatelessWidget {
  const GuarenterImagePickerContainer({
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
          child: state.guarenterImage == null
              ? const SizedBox(
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
                  child: FutureBuilder(
                    future: state.guarenterImage!.readAsBytes(),
                    builder: (
                      BuildContext context,
                      AsyncSnapshot<Uint8List> snapshot,
                    ) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const CircularProgressIndicator(); // Show a loading indicator while waiting for data
                      } else if (snapshot.hasError) {
                        return Text('Error: ${snapshot.error}');
                      } else {
                        return Image.memory(snapshot.data!);
                      }
                    },
                  ),
                ),
        );
      },
    );
  }
}
