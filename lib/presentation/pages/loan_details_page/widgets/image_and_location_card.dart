import 'package:another_flushbar/flushbar_helper.dart';
import 'package:data_dex/application/app_action/app_action_cubit.dart';
import 'package:data_dex/domain/core/models/cloud_image/cloud_image.dart';
import 'package:data_dex/domain/core/models/location/location.dart';
import 'package:data_dex/presentation/core/colors.dart';
import 'package:data_dex/presentation/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ImageAndLocationCard extends StatelessWidget {
  const ImageAndLocationCard({
    required this.houseImage,
    required this.location,
    super.key,
  });

  final CloudImage? houseImage;
  final Location? location;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: kSecondaryColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'House image and location',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.lightBlue.shade600,
            ),
          ),
          kHeight,
          Row(
            children: [
              houseImage != null
                  ? Flexible(
                      child: SizedBox(
                        height: 128,
                        child: Image.network(
                          houseImage!.url,
                        ),
                      ),
                    )
                  : const SizedBox(
                      height: 128,
                      child: Center(
                        child: Text('Image not found'),
                      ),
                    ),
              kWidthMd,
              Column(
                children: [
                  SizedBox(
                    width: 170,
                    height: 36,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        if (houseImage != null) {
                          return context
                              .read<AppActionCubit>()
                              .shareNetworkImage(houseImage!.url);
                        }

                        FlushbarHelper.createError(
                          message: 'Button disabled',
                        ).show(context);
                      },
                      icon: const Icon(Icons.share),
                      label: const Text('Share image'),
                      style: ButtonStyle(
                        elevation: const MaterialStatePropertyAll<double>(0),
                        backgroundColor: MaterialStatePropertyAll<Color>(
                          houseImage != null
                              ? Colors.lightBlue.shade600
                              : kGreyColor,
                        ),
                        foregroundColor:
                            const MaterialStatePropertyAll<Color>(kLightColor),
                        shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),
                  ),
                  kHeightMd,
                  SizedBox(
                    width: 170,
                    height: 36,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        if (location != null) {
                          return context
                              .read<AppActionCubit>()
                              .openLocationInMaps(location!);
                        }

                        FlushbarHelper.createError(
                          message: 'Button disabled',
                        ).show(context);
                      },
                      icon: const Icon(Icons.location_on),
                      label: const Text('Open location'),
                      style: ButtonStyle(
                        elevation: const MaterialStatePropertyAll<double>(0),
                        backgroundColor: MaterialStatePropertyAll<Color>(
                          location != null
                              ? Colors.lightBlue.shade600
                              : kGreyColor,
                        ),
                        foregroundColor:
                            const MaterialStatePropertyAll<Color>(kLightColor),
                        shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),
                  ),
                  kHeightMd,
                  SizedBox(
                    width: 170,
                    height: 36,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        if (location != null) {
                          return context
                              .read<AppActionCubit>()
                              .shareLocation(location!);
                        }

                        FlushbarHelper.createError(
                          message: 'Button disabled',
                        ).show(context);
                      },
                      icon: const Icon(Icons.share),
                      label: const Text('Share location'),
                      style: ButtonStyle(
                        elevation: const MaterialStatePropertyAll<double>(0),
                        backgroundColor: MaterialStatePropertyAll<Color>(
                          location != null
                              ? Colors.lightBlue.shade600
                              : kGreyColor,
                        ),
                        foregroundColor:
                            const MaterialStatePropertyAll<Color>(kLightColor),
                        shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
