import 'package:auto_route/auto_route.dart';
import 'package:data_dex/application/app_action/app_action_cubit.dart';
import 'package:data_dex/presentation/core/colors.dart';
import 'package:data_dex/presentation/core/constants.dart';
import 'package:data_dex/presentation/pages/loan_details_page/widgets/applicant_details_section.dart';
import 'package:data_dex/presentation/pages/loan_details_page/widgets/co_applicant_details_section.dart';
import 'package:data_dex/presentation/pages/loan_details_page/widgets/guarenter_details_section.dart';
import 'package:data_dex/presentation/pages/loan_details_page/widgets/loan_details_head.dart';
import 'package:data_dex/presentation/pages/loan_details_page/widgets/loan_particulars_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class LoanDetailsPage extends StatelessWidget {
  const LoanDetailsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Loan details',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),
        ),
        backgroundColor: Colors.lightBlue.shade600,
        foregroundColor: kLightColor,
      ),
      body: SafeArea(
        child: BlocBuilder<AppActionCubit, AppActionState>(
          builder: (context, state) {
            if (state.selectedLoan == null) {
              return Center(
                child: Text(
                  'Loan details not found',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.error,
                  ),
                ),
              );
            }

            return Column(
              children: [
                const LoanDetailsHead(),
                Expanded(
                  child: ListView(
                    padding: const EdgeInsets.all(16),
                    children: [
                      ApplicantDetailsSection(
                        applicant: state.selectedLoan!.applicant,
                      ),
                      kHeight,
                      CoApplicantDetailsSection(
                        coApplicant: state.selectedLoan!.coApplicant,
                      ),
                      kHeight,
                      GuarenterDetailsSection(
                        guarenter: state.selectedLoan!.guarenter,
                      ),
                      kHeight,
                      LoanParticularsSection(
                        loanParticulars: state.selectedLoan!.loanParticulars,
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
