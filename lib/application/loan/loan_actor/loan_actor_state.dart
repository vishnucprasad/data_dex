part of 'loan_actor_bloc.dart';

@freezed
class LoanActorState with _$LoanActorState {
  const factory LoanActorState({
    required bool isLoading,
    required KtList<Loan> followUps,
    required Option<Either<LoanFailure, Unit>> failureOrSuccess,
  }) = _LoanActorState;

  factory LoanActorState.initial() {
    return LoanActorState(
      isLoading: false,
      followUps: const KtList<Loan>.empty(),
      failureOrSuccess: none(),
    );
  }
}
