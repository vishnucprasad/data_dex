import 'package:data_dex/application/guarenter_form/guarenter_form_bloc.dart';
import 'package:data_dex/presentation/core/colors.dart';
import 'package:data_dex/presentation/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LocationPickerContainer extends StatelessWidget {
  const LocationPickerContainer({
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
      child: BlocBuilder<GuarenterFormBloc, GuarenterFormState>(
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'House location',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              kHeightMd,
              state.isLocationFetching
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Text(
                                  'Latitude : ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                kWidthMd,
                                Text(
                                  state.location != null
                                      ? state.location!.latitude.toString()
                                      : 'Not selected',
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                const Text(
                                  'Longitude : ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                kWidthMd,
                                Text(
                                  state.location != null
                                      ? state.location!.longitude.toString()
                                      : 'Not selected',
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Spacer(),
                        if (state.location != null)
                          IconButton(
                            onPressed: () => context
                                .read<GuarenterFormBloc>()
                                .add(
                                  const GuarenterFormEvent.openLocationInMap(),
                                ),
                            icon: const Icon(Icons.open_in_new),
                          )
                      ],
                    )
            ],
          );
        },
      ),
    );
  }
}
