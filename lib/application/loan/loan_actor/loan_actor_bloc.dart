import 'package:dartz/dartz.dart';
import 'package:data_dex/domain/core/value_objects.dart';
import 'package:data_dex/domain/loan/failures/loan_failure.dart';
import 'package:data_dex/domain/loan/i_loan_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'loan_actor_event.dart';
part 'loan_actor_state.dart';
part 'loan_actor_bloc.freezed.dart';

@injectable
class LoanActorBloc extends Bloc<LoanActorEvent, LoanActorState> {
  final ILoanRepository _loanRepository;
  LoanActorBloc(
    this._loanRepository,
  ) : super(LoanActorState.initial()) {
    on<LoanActorEvent>((event, emit) async {
      await event.map(
        dropLoan: (e) async {
          emit(state.copyWith(
            isLoading: true,
            failureOrSuccess: none(),
          ));

          final dropOption = await _loanRepository.dropLoan(e.id);

          emit(dropOption.fold(
            (l) => state.copyWith(
              isLoading: false,
              failureOrSuccess: some(left(l)),
            ),
            (r) => state.copyWith(
              isLoading: false,
              failureOrSuccess: some(right(r)),
            ),
          ));
        },
        disburse: (e) async {
          emit(state.copyWith(
            isLoading: true,
            failureOrSuccess: none(),
          ));

          final disburseOption = await _loanRepository.disburse(
            e.id,
            e.date.toIso8601String(),
          );

          emit(disburseOption.fold(
            (l) => state.copyWith(
              isLoading: false,
              failureOrSuccess: some(left(l)),
            ),
            (r) => state.copyWith(
              isLoading: false,
              failureOrSuccess: some(right(r)),
            ),
          ));
        },
      );
    });
  }
}
