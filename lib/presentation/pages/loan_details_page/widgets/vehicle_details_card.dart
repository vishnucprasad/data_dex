import 'package:data_dex/domain/loan_particulars/models/vehicle_details/vehicle_details.dart';
import 'package:data_dex/presentation/core/colors.dart';
import 'package:data_dex/presentation/core/constants.dart';
import 'package:flutter/material.dart';

class VehicleDetailsCard extends StatelessWidget {
  const VehicleDetailsCard({
    required this.vehicleDetails,
    super.key,
  });

  final VehicleDetails vehicleDetails;

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
            'Vehicle details',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.lightBlue.shade600,
            ),
          ),
          kHeight,
          Row(
            children: [
              const Text(
                'Dealer name:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              kWidthMd,
              Text(
                vehicleDetails.dealerName.getOrCrash(),
              ),
            ],
          ),
          kHeightMd,
          Row(
            children: [
              const Text(
                'Subdealer name:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              kWidthMd,
              Text(
                vehicleDetails.subDealerName ?? 'NILL',
              ),
            ],
          ),
          kHeightMd,
          Row(
            children: [
              const Text(
                'Broker name:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              kWidthMd,
              Text(
                vehicleDetails.brokerName ?? 'NILL',
              ),
            ],
          ),
          kHeightMd,
          Row(
            children: [
              const Text(
                'Vehicle name:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              kWidthMd,
              Text(
                vehicleDetails.vehicleName.getOrCrash(),
              ),
            ],
          ),
          kHeightMd,
          Row(
            children: [
              const Text(
                'Ex-showroom price:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              kWidthMd,
              Text(
                '₹ ${double.parse(vehicleDetails.exShowroomPrice.getOrCrash()).toStringAsFixed(2)}',
              ),
            ],
          ),
          kHeightMd,
          Row(
            children: [
              const Text(
                'Onroad price:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              kWidthMd,
              Text(
                '₹ ${double.parse(vehicleDetails.onRoadPrice.getOrCrash()).toStringAsFixed(2)}',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
