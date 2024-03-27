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
  const factory LoanActorEvent.restore(
    UniqueId id,
  ) = _RestoreDropped;
  const factory LoanActorEvent.deleteLoan(
    UniqueId id,
  ) = _DeleteLoan;
  const factory LoanActorEvent.findFollowUps(
    List<Loan> loans,
  ) = _findFollowUps;
}
