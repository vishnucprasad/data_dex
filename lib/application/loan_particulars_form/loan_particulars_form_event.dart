part of 'loan_particulars_form_bloc.dart';

@freezed
class LoanParticularsFormEvent with _$LoanParticularsFormEvent {
  const factory LoanParticularsFormEvent.initialized({
    required Option<Loan> initializeOption,
    bool? closeAfterSave,
  }) = _Initialized;
  const factory LoanParticularsFormEvent.loanIdChanged(
    UniqueId loanId,
  ) = _LoanIdChanged;
  const factory LoanParticularsFormEvent.formStepChanged(
    int index,
  ) = _FormStepChanged;
  const factory LoanParticularsFormEvent.dealerNameChanged(
    String dealerName,
  ) = _DealerNameChanged;
  const factory LoanParticularsFormEvent.subDealerNameChanged(
    String subDealerName,
  ) = _SubDealerNameChanged;
  const factory LoanParticularsFormEvent.brokerNameChanged(
    String brokerName,
  ) = _BrokerNameChanged;
  const factory LoanParticularsFormEvent.vehicleNameChanged(
    String vehicleName,
  ) = _VehicleNameChanged;
  const factory LoanParticularsFormEvent.exShowroomPriceChanged(
    String exShowroomPrice,
  ) = _ExShowroomPriceChanged;
  const factory LoanParticularsFormEvent.onRoadPriceChanged(
    String onRoadPrice,
  ) = _OnRoadPriceChanged;
  const factory LoanParticularsFormEvent.loanAmountChanged(
    String loanAmount,
  ) = _LoanAmountChanged;
  const factory LoanParticularsFormEvent.ltvChanged(
    String ltv,
  ) = _LtvChanged;
  const factory LoanParticularsFormEvent.loanSchemeChanged(
    LoanScheme loanScheme,
  ) = _LoanSchemeChanged;
  const factory LoanParticularsFormEvent.fundAdded(
    FundOptions fund,
  ) = _fundAdded;
  const factory LoanParticularsFormEvent.fundRemoved(
    FundOptions fund,
  ) = _fundRemoved;
  const factory LoanParticularsFormEvent.serviceChargeChanged(
    String serviceCharge,
  ) = _ServiceChargeChanged;
  const factory LoanParticularsFormEvent.documentationChargeChanged(
    String documentationCharge,
  ) = _DocumentationChargeChanged;
  const factory LoanParticularsFormEvent.lifeAmountChanged(
    String lifeAmount,
  ) = _LifeAmountChanged;
  const factory LoanParticularsFormEvent.pacAmountChanged(
    String pacAmount,
  ) = _PacAmountChanged;
  const factory LoanParticularsFormEvent.stampDutyChanged(
    String stampDuty,
  ) = _StampDutyChanged;
  const factory LoanParticularsFormEvent.dateShiftingChargeChanged(
    String dateShiftingCharge,
  ) = _DateShiftingChargeChanged;
  const factory LoanParticularsFormEvent.counterAmountChanged(
    String counterAmount,
  ) = _CounterAmountChanged;
  const factory LoanParticularsFormEvent.emiAmountChanged(
    String emiAmount,
  ) = _EMIAmountChanged;
  const factory LoanParticularsFormEvent.tenureChanged(
    String tenure,
  ) = _TenureChanged;
  const factory LoanParticularsFormEvent.firstEMIDateChanged(
    DateTime firstEMIDate,
  ) = _FirstEMIDateChanged;
  const factory LoanParticularsFormEvent.bankNameChanged(
    String bankName,
  ) = _BankNameChanged;
  const factory LoanParticularsFormEvent.repaymentModeChanged(
    String repaymentMode,
  ) = _RepaymentModeChanged;
  const factory LoanParticularsFormEvent.saveLoanParticulars() =
      _SaveLoanParticulars;
}
