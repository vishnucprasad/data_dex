part of 'app_action_cubit.dart';

@freezed
class AppActionState with _$AppActionState {
  const factory AppActionState({
    required int bottomNavIndex,
  }) = _AppActionState;

  factory AppActionState.initial() {
    return const AppActionState(
      bottomNavIndex: 0,
    );
  }
}
