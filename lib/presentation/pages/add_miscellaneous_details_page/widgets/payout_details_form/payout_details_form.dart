import 'package:data_dex/presentation/core/constants.dart';
import 'package:data_dex/presentation/pages/add_miscellaneous_details_page/widgets/payout_details_form/payee_amount_input_field.dart';
import 'package:data_dex/presentation/pages/add_miscellaneous_details_page/widgets/payout_details_form/payee_name_input_field.dart';
import 'package:flutter/material.dart';

class PayoutDetailsForm extends StatelessWidget {
  const PayoutDetailsForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        kHeightMd,
        PayeeNameInputField(),
        kHeightMd,
        PayeeAmountInputField(),
        kHeightMd,
      ],
    );
  }
}
