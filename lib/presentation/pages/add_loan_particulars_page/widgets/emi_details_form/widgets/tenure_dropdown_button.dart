import 'package:data_dex/application/loan_particulars_form/loan_particulars_form_bloc.dart';
import 'package:data_dex/presentation/core/colors.dart';
import 'package:data_dex/presentation/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TenureDropdownButton extends StatelessWidget {
  const TenureDropdownButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<int> tenureList = [6, 12, 18, 24, 30, 36, 42, 48, 54, 60];

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
                child: DropdownButton<int>(
                  elevation: 0,
                  isExpanded: true,
                  menuMaxHeight: 200,
                  underline: const SizedBox.shrink(),
                  hint: Text(
                    'Tenure',
                    style: TextStyle(
                      color: state.emiDetails.tenure.value.fold(
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
                  items: tenureList.map((int value) {
                    return DropdownMenuItem<int>(
                      value: value,
                      child: Text('$value months'),
                    );
                  }).toList(),
                  value: state.emiDetails.tenure.value
                          .getOrElse(() => "")
                          .isNotEmpty
                      ? int.parse(state.emiDetails.tenure.getOrCrash())
                      : null,
                  onChanged: (tenure) {
                    if (tenure != null) {
                      context
                          .read<LoanParticularsFormBloc>()
                          .add(LoanParticularsFormEvent.tenureChanged(
                            tenure.toString(),
                          ));
                    }
                  },
                ),
              ),
            ),
            state.emiDetails.tenure.value.fold(
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
                                  "Tenure can't be empty",
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
