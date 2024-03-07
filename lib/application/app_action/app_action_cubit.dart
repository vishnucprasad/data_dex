import 'package:dartz/dartz.dart';
import 'package:data_dex/domain/common/failures/common_failure.dart';
import 'package:data_dex/domain/common/i_common_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'app_action_state.dart';
part 'app_action_cubit.freezed.dart';

@injectable
class AppActionCubit extends Cubit<AppActionState> {
  final ICommonRepository _commonRepository;
  AppActionCubit(this._commonRepository) : super(AppActionState.initial());

  void bottomNavIndexChanged(int index) {
    return emit(state.copyWith(bottomNavIndex: index));
  }

  void openPhoneNumberInDialer(String phoneNumber) async {
    emit(state.copyWith(
      failureOrSuccess: none(),
    ));

    final phoneOption = await _commonRepository.openPhoneNumberInDialer(
      phoneNumber: phoneNumber,
    );

    emit(phoneOption.fold(
      (l) => state.copyWith(
        failureOrSuccess: some(left(l)),
      ),
      (r) => state.copyWith(
        failureOrSuccess: some(right(r)),
      ),
    ));
  }
}
