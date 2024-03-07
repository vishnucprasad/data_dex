part of 'loan_watcher_bloc.dart';

@freezed
class LoanWatcherState with _$LoanWatcherState {
  const factory LoanWatcherState.initial() = _Initial;
  const factory LoanWatcherState.loading() = _Loading;
  const factory LoanWatcherState.loadSuccess(KtList<Loan> loans) = _LoadSuccess;
  const factory LoanWatcherState.loadFailure(LoanFailure notesFailure) =
      _LoadFailure;
}
