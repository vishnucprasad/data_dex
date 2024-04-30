import 'package:data_dex/application/loan_particulars_form/loan_particulars_form_bloc.dart';
import 'package:data_dex/domain/core/constants.dart';
import 'package:data_dex/presentation/core/colors.dart';
import 'package:data_dex/presentation/core/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoanSchemeSwitch extends StatelessWidget {
  const LoanSchemeSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoanParticularsFormBloc, LoanParticularsFormState>(
      buildWhen: (p, c) => p.loanDetails.loanScheme != c.loanDetails.loanScheme,
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: kSecondaryColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              kWidthMd,
              Text(
                state.loanDetails.loanScheme == LoanScheme.funded
                    ? 'Funded'
                    : 'Non-Funded',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              Transform.scale(
                scale: 0.75,
                child: CupertinoSwitch(
                  value: state.loanDetails.loanScheme == LoanScheme.funded,
                  onChanged: (isFunded) => context
                      .read<LoanParticularsFormBloc>()
                      .add(LoanParticularsFormEvent.loanSchemeChanged(
                        isFunded ? LoanScheme.funded : LoanScheme.nonFunded,
                      )),
                  activeColor: Colors.lightBlue.shade600,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
