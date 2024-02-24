import 'package:data_dex/presentation/core/colors.dart';
import 'package:data_dex/presentation/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class LoanCard extends StatelessWidget {
  const LoanCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(32),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.lightBlue.shade600,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(32),
              topRight: Radius.circular(32),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Disbursment date:',
                style: TextStyle(
                  color: kSecondaryColor,
                ),
              ),
              Text(
                DateFormat.yMMMMEEEEd().format(DateTime.now()),
                style: const TextStyle(
                  color: kLightColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(32),
          width: double.infinity,
          decoration: const BoxDecoration(
            color: kSecondaryColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(32),
              bottomRight: Radius.circular(32),
            ),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(28),
                      image: const DecorationImage(
                        image: NetworkImage(
                          'https://avatars.githubusercontent.com/u/81964443?v=4',
                        ),
                      ),
                    ),
                  ),
                  kWidth,
                  const Flexible(
                    child: Text(
                      'Subin Lahayil Reghuvaran',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Icon(
                    Icons.info_outline,
                    size: 36,
                    color: Colors.lightBlue.shade600,
                  ),
                ],
              ),
              kHeight,
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton.icon(
                      style: ButtonStyle(
                        elevation: const MaterialStatePropertyAll<double>(0),
                        backgroundColor: MaterialStatePropertyAll<Color>(
                          Colors.lightBlue.shade600,
                        ),
                        foregroundColor: const MaterialStatePropertyAll<Color>(
                          kLightColor,
                        ),
                      ),
                      onPressed: () {},
                      label: const Text('Call'),
                      icon: const Icon(Icons.call),
                    ),
                  ),
                  kWidth,
                  Expanded(
                    child: ElevatedButton.icon(
                      style: ButtonStyle(
                        elevation: const MaterialStatePropertyAll<double>(0),
                        backgroundColor: MaterialStatePropertyAll<Color>(
                          kPrimaryColor.withOpacity(0.125),
                        ),
                        foregroundColor: const MaterialStatePropertyAll<Color>(
                          kPrimaryColor,
                        ),
                      ),
                      onPressed: () {},
                      label: const Text('Copy'),
                      icon: const Icon(Icons.copy),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
