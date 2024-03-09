import 'package:data_dex/application/loan_particulars_form/loan_particulars_form_bloc.dart';
import 'package:data_dex/presentation/core/colors.dart';
import 'package:data_dex/presentation/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RepaymentModeDropdownButton extends StatelessWidget {
  const RepaymentModeDropdownButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<String> repaymentModeList = ["eNach", "Aadhaar eNach", "ACH"];

    return BlocBuilder<LoanParticularsFormBloc, LoanParticularsFormState>(
      builder: (context, state) {
        return Column(
          children: [
            Container(
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: kSecondaryColor,
              ),
              child: Center(
                child: DropdownButton<String>(
                  elevation: 0,
                  isExpanded: true,
                  underline: const SizedBox.shrink(),
                  hint: Text(
                    'Repayment Mode',
                    style: TextStyle(
                      color: state.emiDetails.repaymentMode.value.fold(
                        (_) => state.showValidationError
                            ? state.formStep == 2
                                ? Theme.of(context).colorScheme.error
                                : kDarkColor
                            : kDarkColor,
                        (_) => kDarkColor,
                      ),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 0),
                  dropdownColor: kSecondaryColor,
                  borderRadius: BorderRadius.circular(16),
                  items: repaymentModeList.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  value: state.emiDetails.repaymentMode.value
                          .getOrElse(() => "")
                          .isNotEmpty
                      ? state.emiDetails.repaymentMode.value.getOrElse(() => "")
                      : null,
                  onChanged: (repaymentMode) {
                    if (repaymentMode != null) {
                      context
                          .read<LoanParticularsFormBloc>()
                          .add(LoanParticularsFormEvent.repaymentModeChanged(
                            repaymentMode,
                          ));
                    }
                  },
                ),
              ),
            ),
            state.emiDetails.repaymentMode.value.fold(
              (f) => state.showValidationError
                  ? state.formStep == 2
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            kHeightMd,
                            Row(
                              children: [
                                kWidth,
                                Text(
                                  "Repayment mode can't be empty",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Theme.of(context).colorScheme.error,
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                      : const SizedBox.shrink()
                  : const SizedBox.shrink(),
              (_) => const SizedBox.shrink(),
            ),
          ],
        );
      },
    );
  }
}
