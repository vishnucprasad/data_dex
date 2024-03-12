import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:data_dex/domain/loan/failures/loan_failure.dart';
import 'package:data_dex/domain/loan/i_loan_repository.dart';
import 'package:data_dex/domain/loan/models/loan.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

part 'loan_watcher_event.dart';
part 'loan_watcher_state.dart';
part 'loan_watcher_bloc.freezed.dart';

StreamSubscription<Either<LoanFailure, KtList<Loan>>>? _loanStreamSubscription;

@injectable
class LoanWatcherBloc extends Bloc<LoanWatcherEvent, LoanWatcherState> {
  final ILoanRepository _loanRepository;
  LoanWatcherBloc(
    this._loanRepository,
  ) : super(const LoanWatcherState.initial()) {
    on<LoanWatcherEvent>((event, emit) async {
      await event.map(
        watchAllStarted: (_) async {
          emit(const LoanWatcherState.loading());
          _loanStreamSubscription = _loanRepository.watchAll().listen(
            (failuerOrNotes) {
              return add(LoanWatcherEvent.loansReceived(failuerOrNotes));
            },
          );
        },
        loansReceived: (e) async {
          emit(e.failureOrNotes.fold(
            (f) => LoanWatcherState.loadFailure(f),
            (loans) => LoanWatcherState.loadSuccess(loans),
          ));
        },
      );
    });
  }

  @override
  Future<void> close() async {
    await _loanStreamSubscription?.cancel();
    return super.close();
  }
}
