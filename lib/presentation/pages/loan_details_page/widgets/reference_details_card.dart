import 'package:another_flushbar/flushbar_helper.dart';
import 'package:data_dex/application/app_action/app_action_cubit.dart';
import 'package:data_dex/domain/miscellaneous_details/models/reference_details/reference_details.dart';
import 'package:data_dex/presentation/core/colors.dart';
import 'package:data_dex/presentation/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ReferenceDetailsCard extends StatelessWidget {
  const ReferenceDetailsCard({
    required this.referenceDetails,
    super.key,
  });

  final ReferenceDetails referenceDetails;

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
            'Reference details',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.lightBlue.shade600,
            ),
          ),
          kHeightSm,
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              'Reference one',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.lightBlue.shade600,
              ),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 30,
                  child: IconButton(
                    style: ButtonStyle(
                      padding: const MaterialStatePropertyAll<EdgeInsets>(
                        EdgeInsets.zero,
                      ),
                      elevation: const MaterialStatePropertyAll<double>(0),
                      backgroundColor: MaterialStatePropertyAll<Color>(
                        Colors.lightBlue.shade600,
                      ),
                      foregroundColor: const MaterialStatePropertyAll<Color>(
                        kLightColor,
                      ),
                      shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    onPressed: () => context
                        .read<AppActionCubit>()
                        .openPhoneNumberInDialer(
                          referenceDetails.referenceOnePhoneNumber.getOrCrash(),
                        ),
                    icon: const Icon(Icons.call),
                  ),
                ),
                kWidthMd,
                SizedBox(
                  height: 30,
                  child: IconButton(
                    style: ButtonStyle(
                      padding: const MaterialStatePropertyAll<EdgeInsets>(
                        EdgeInsets.zero,
                      ),
                      elevation: const MaterialStatePropertyAll<double>(0),
                      backgroundColor: MaterialStatePropertyAll<Color>(
                        Colors.lightBlue.shade600,
                      ),
                      foregroundColor: const MaterialStatePropertyAll<Color>(
                        kLightColor,
                      ),
                      shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    onPressed: () => Clipboard.setData(
                      ClipboardData(
                        text: referenceDetails.referenceOnePhoneNumber
                            .getOrCrash(),
                      ),
                    ).then(
                      (_) => FlushbarHelper.createSuccess(
                        message: 'Phone number copied!',
                      ).show(context),
                    ),
                    icon: const Icon(Icons.copy),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              const Text(
                'Name:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              kWidthMd,
              Text(
                referenceDetails.referenceOneName.getOrCrash(),
              ),
            ],
          ),
          kHeightMd,
          Row(
            children: [
              const Text(
                'Phone number:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              kWidthMd,
              Text(
                referenceDetails.referenceOnePhoneNumber.getOrCrash(),
              ),
            ],
          ),
          kHeightMd,
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              'Reference two',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.lightBlue.shade600,
              ),
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 30,
                  child: IconButton(
                    style: ButtonStyle(
                      padding: const MaterialStatePropertyAll<EdgeInsets>(
                        EdgeInsets.zero,
                      ),
                      elevation: const MaterialStatePropertyAll<double>(0),
                      backgroundColor: MaterialStatePropertyAll<Color>(
                        Colors.lightBlue.shade600,
                      ),
                      foregroundColor: const MaterialStatePropertyAll<Color>(
                        kLightColor,
                      ),
                      shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    onPressed: () => context
                        .read<AppActionCubit>()
                        .openPhoneNumberInDialer(
                          referenceDetails.referenceTwoPhoneNumber.getOrCrash(),
                        ),
                    icon: const Icon(Icons.call),
                  ),
                ),
                kWidthMd,
                SizedBox(
                  height: 30,
                  child: IconButton(
                    style: ButtonStyle(
                      padding: const MaterialStatePropertyAll<EdgeInsets>(
                        EdgeInsets.zero,
                      ),
                      elevation: const MaterialStatePropertyAll<double>(0),
                      backgroundColor: MaterialStatePropertyAll<Color>(
                        Colors.lightBlue.shade600,
                      ),
                      foregroundColor: const MaterialStatePropertyAll<Color>(
                        kLightColor,
                      ),
                      shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                    onPressed: () => Clipboard.setData(
                      ClipboardData(
                        text: referenceDetails.referenceTwoPhoneNumber
                            .getOrCrash(),
                      ),
                    ).then(
                      (_) => FlushbarHelper.createSuccess(
                        message: 'Phone number copied!',
                      ).show(context),
                    ),
                    icon: const Icon(Icons.copy),
                  ),
                ),
              ],
            ),
          ),
          kHeightMd,
          Row(
            children: [
              const Text(
                'Name:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              kWidthMd,
              Text(
                referenceDetails.referenceTwoName.getOrCrash(),
              ),
            ],
          ),
          kHeightMd,
          Row(
            children: [
              const Text(
                'Phone number:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              kWidthMd,
              Text(
                referenceDetails.referenceTwoPhoneNumber.getOrCrash(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
