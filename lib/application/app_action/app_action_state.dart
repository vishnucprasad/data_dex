part of 'app_action_cubit.dart';

@freezed
class AppActionState with _$AppActionState {
  const factory AppActionState({
    required int bottomNavIndex,
    required Loan? selectedLoan,
    required String searchText,
    required Option<Either<CommonFailure, Unit>> failureOrSuccess,
  }) = _AppActionState;

  factory AppActionState.initial() {
    return AppActionState(
      bottomNavIndex: 1,
      selectedLoan: null,
      searchText: '',
      failureOrSuccess: none(),
    );
  }
}
