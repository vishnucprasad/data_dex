part of 'loan_watcher_bloc.dart';

@freezed
class LoanWatcherEvent with _$LoanWatcherEvent {
  const factory LoanWatcherEvent.watchAllStarted() = _WatchAllStarted;
  const factory LoanWatcherEvent.loansReceived(
    Either<LoanFailure, KtList<Loan>> failureOrNotes,
  ) = _NotesReceived;
}
