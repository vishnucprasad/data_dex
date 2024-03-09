import 'package:data_dex/presentation/core/constants.dart';
import 'package:data_dex/presentation/pages/add_loan_particulars_page/widgets/vehicle_details_form/broker_name_input_field.dart';
import 'package:data_dex/presentation/pages/add_loan_particulars_page/widgets/vehicle_details_form/dealer_name_input_field.dart';
import 'package:data_dex/presentation/pages/add_loan_particulars_page/widgets/vehicle_details_form/ex_showroom_price_input_field.dart';
import 'package:data_dex/presentation/pages/add_loan_particulars_page/widgets/vehicle_details_form/on_road_price_input_field.dart';
import 'package:data_dex/presentation/pages/add_loan_particulars_page/widgets/vehicle_details_form/sub_dealer_name_input_field.dart';
import 'package:data_dex/presentation/pages/add_loan_particulars_page/widgets/vehicle_details_form/vehicle_name_input_field.dart';
import 'package:flutter/material.dart';

class VehicleDetailsForm extends StatelessWidget {
  const VehicleDetailsForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        kHeightMd,
        DealerNameInputField(),
        kHeightMd,
        SubDealerNameInputField(),
        kHeightMd,
        BrokerNameInputField(),
        kHeightMd,
        VehicleNameInputField(),
        kHeightMd,
        ExShowroomPriceInputField(),
        kHeightMd,
        OnRoadPriceInputField(),
        kHeightMd,
      ],
    );
  }
}
