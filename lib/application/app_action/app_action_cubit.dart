import 'package:dartz/dartz.dart';
import 'package:data_dex/domain/common/failures/common_failure.dart';
import 'package:data_dex/domain/common/i_common_repository.dart';
import 'package:data_dex/domain/core/models/location/location.dart';
import 'package:data_dex/domain/loan/models/loan.dart';
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

  void loanSelected(Loan loan) => emit(state.copyWith(selectedLoan: loan));

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

  void openLocationInMaps(Location location) async {
    emit(state.copyWith(
      failureOrSuccess: none(),
    ));

    final locationOption = await _commonRepository.openLocationInMap(
      latitude: location.latitude,
      longitude: location.longitude,
    );

    emit(locationOption.fold(
      (l) => state.copyWith(
        failureOrSuccess: some(left(l)),
      ),
      (r) => state.copyWith(
        failureOrSuccess: some(right(r)),
      ),
    ));
  }

  void shareLocation(Location location) async {
    emit(state.copyWith(
      failureOrSuccess: none(),
    ));

    final shareOption = await _commonRepository.shareLocation(
      latitude: location.latitude,
      longitude: location.longitude,
    );

    emit(shareOption.fold(
      (l) => state.copyWith(
        failureOrSuccess: some(left(l)),
      ),
      (r) => state.copyWith(
        failureOrSuccess: some(right(r)),
      ),
    ));
  }

  void shareNetworkImage(String url) async {
    emit(state.copyWith(
      failureOrSuccess: none(),
    ));

    final shareOption = await _commonRepository.shareNetworkImage(url: url);

    emit(shareOption.fold(
      (l) => state.copyWith(
        failureOrSuccess: some(left(l)),
      ),
      (r) => state.copyWith(
        failureOrSuccess: some(right(r)),
      ),
    ));
  }
}
