import 'package:data_dex/domain/loan/models/loan.dart';

extension LoanHelpers on Loan {
  DateTime? get firstEMIDate => loanParticulars == null
      ? null
      : DateTime.parse(loanParticulars!.emiDetails.firstEMIDate.getOrCrash());
  DateTime? get lastEMIDate => loanParticulars?.emiDetails.lastEMIDate;
}
