import 'package:another_flushbar/flushbar_helper.dart';
import 'package:data_dex/application/app_action/app_action_cubit.dart';
import 'package:data_dex/domain/core/models/basic_info/basic_info.dart';
import 'package:data_dex/domain/core/models/cloud_image/cloud_image.dart';
import 'package:data_dex/presentation/core/colors.dart';
import 'package:data_dex/presentation/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class BasicInfoCard extends StatelessWidget {
  const BasicInfoCard({
    required this.basicInfo,
    this.showProfile = false,
    this.image,
    super.key,
  });

  final BasicInfo basicInfo;
  final bool showProfile;
  final CloudImage? image;

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
            'Basic info',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.lightBlue.shade600,
            ),
          ),
          kHeight,
          if (showProfile)
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: kLightColor,
                      borderRadius: BorderRadius.circular(16)),
                  child: Row(
                    children: [
                      image == null
                          ? Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: kLightColor,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(16),
                                color: kLightColor,
                              ),
                              child: const Center(
                                child: Icon(
                                  Icons.person,
                                  size: 48,
                                ),
                              ),
                            )
                          : Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: kLightColor,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(16),
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                    image!.url,
                                  ),
                                ),
                              ),
                            ),
                      kWidthMd,
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 180,
                              child: Text(
                                basicInfo.name.getOrCrash(),
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.lightBlue.shade600,
                                ),
                              ),
                            ),
                            kHeightSm,
                            Row(
                              children: [
                                Expanded(
                                  child: SizedBox(
                                    height: 30,
                                    child: ElevatedButton.icon(
                                      style: ButtonStyle(
                                        elevation:
                                            const MaterialStatePropertyAll<
                                                double>(0),
                                        backgroundColor:
                                            MaterialStatePropertyAll<Color>(
                                          Colors.lightBlue.shade600,
                                        ),
                                        foregroundColor:
                                            const MaterialStatePropertyAll<
                                                Color>(
                                          kLightColor,
                                        ),
                                        shape: MaterialStatePropertyAll<
                                            RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                        ),
                                      ),
                                      onPressed: () => context
                                          .read<AppActionCubit>()
                                          .openPhoneNumberInDialer(
                                            basicInfo.phoneNumber.getOrCrash(),
                                          ),
                                      label: const Text('Call'),
                                      icon: const Icon(Icons.call),
                                    ),
                                  ),
                                ),
                                kWidthMd,
                                Expanded(
                                  child: SizedBox(
                                    height: 30,
                                    child: ElevatedButton.icon(
                                      style: ButtonStyle(
                                        elevation:
                                            const MaterialStatePropertyAll<
                                                double>(0),
                                        backgroundColor:
                                            MaterialStatePropertyAll<Color>(
                                          Colors.lightBlue.shade600,
                                        ),
                                        foregroundColor:
                                            const MaterialStatePropertyAll<
                                                Color>(
                                          kLightColor,
                                        ),
                                        shape: MaterialStatePropertyAll<
                                            RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                        ),
                                      ),
                                      onPressed: () => Clipboard.setData(
                                        ClipboardData(
                                          text: basicInfo.phoneNumber
                                              .getOrCrash(),
                                        ),
                                      ).then(
                                        (_) => FlushbarHelper.createSuccess(
                                          message: 'Phone number copied!',
                                        ).show(context),
                                      ),
                                      label: const Text('Copy'),
                                      icon: const Icon(Icons.copy),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      kWidthMd,
                    ],
                  ),
                ),
                kHeight,
              ],
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
                basicInfo.name.getOrCrash(),
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
                basicInfo.phoneNumber.getOrCrash(),
              ),
            ],
          ),
          kHeightMd,
          Row(
            children: [
              const Text(
                'Email address:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              kWidthMd,
              Text(
                basicInfo.emailAddress?.getOrCrash() ?? 'NILL',
              ),
            ],
          ),
          kHeightMd,
          Row(
            children: [
              const Text(
                'Date of birth:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              kWidthMd,
              Text(
                DateFormat.yMMMMd().format(
                  DateTime.parse(basicInfo.dateOfBirth.getOrCrash()),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
