import 'package:data_dex/domain/loan/models/loan.dart';

extension LoanX on Loan {
  int calculateRemainingEMI() {
    final today = DateTime.now();
    final firstEMIDate =
        DateTime.parse(loanParticulars!.emiDetails.firstEMIDate.getOrCrash());
    final lastEMIDate = loanParticulars!.emiDetails.lastEMIDate!;

    final startDate = (firstEMIDate.year == today.year &&
                firstEMIDate.month == today.month) ||
            firstEMIDate.isBefore(today)
        ? DateTime.now()
        : firstEMIDate;

    final endDate =
        (lastEMIDate.year == today.year && lastEMIDate.month == today.month) ||
                lastEMIDate.isAfter(today)
            ? lastEMIDate
            : DateTime(
                DateTime.now().year,
                DateTime.now().month,
              );

    int months = ((endDate.year - startDate.year) * 12 +
        endDate.month -
        (startDate.month - 1));

    if (endDate.day < startDate.day) {
      months = months - 1;
    }

    return months;
  }
}
