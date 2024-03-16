part of 'loan_actor_bloc.dart';

@freezed
class LoanActorEvent with _$LoanActorEvent {
  const factory LoanActorEvent.dropLoan(
    UniqueId id,
  ) = _DropLoan;
  const factory LoanActorEvent.disburse(
    UniqueId id,
    DateTime date,
  ) = _DisburseLoan;
}
