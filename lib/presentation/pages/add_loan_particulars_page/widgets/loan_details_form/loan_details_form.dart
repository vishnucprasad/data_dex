import 'package:data_dex/presentation/core/constants.dart';
import 'package:data_dex/presentation/pages/add_loan_particulars_page/widgets/loan_details_form/counter_amount_input_field.dart';
import 'package:data_dex/presentation/pages/add_loan_particulars_page/widgets/loan_details_form/date_shifting_charge_input_field.dart';
import 'package:data_dex/presentation/core/widgets/form_divider.dart';
import 'package:data_dex/presentation/pages/add_loan_particulars_page/widgets/loan_details_form/documentation_charge_input_field.dart';
import 'package:data_dex/presentation/pages/add_loan_particulars_page/widgets/loan_details_form/life_amount_input_field.dart';
import 'package:data_dex/presentation/pages/add_loan_particulars_page/widgets/loan_details_form/loan_amount_input_field.dart';
import 'package:data_dex/presentation/pages/add_loan_particulars_page/widgets/loan_details_form/ltv_input_field.dart';
import 'package:data_dex/presentation/pages/add_loan_particulars_page/widgets/loan_details_form/pac_amount_input_field.dart';
import 'package:data_dex/presentation/pages/add_loan_particulars_page/widgets/loan_details_form/service_charge_input_field.dart';
import 'package:data_dex/presentation/pages/add_loan_particulars_page/widgets/loan_details_form/stamp_duty_input_field.dart';
import 'package:flutter/material.dart';

class LoanDetailsForm extends StatelessWidget {
  const LoanDetailsForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        kHeightMd,
        LoanAmountInputField(),
        kHeightMd,
        LTVInputField(),
        kHeightMd,
        FormDivider(text: 'Deductions'),
        kHeightMd,
        ServiceChargeInputField(),
        kHeightMd,
        DocumentationChargeInputField(),
        kHeightMd,
        LifeAmountInputField(),
        kHeightMd,
        PacAmountInputField(),
        kHeightMd,
        StampDutyInputField(),
        kHeightMd,
        DateShiftingChargeInputField(),
        kHeightMd,
        FormDivider(text: 'Counter'),
        kHeightMd,
        CounterAmountInputField(),
        kHeightMd,
      ],
    );
  }
}
