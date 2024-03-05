import 'package:dartz/dartz.dart';
import 'package:data_dex/domain/auth/failures/auth_failure.dart';
import 'package:data_dex/domain/auth/i_auth_facade.dart';
import 'package:data_dex/domain/auth/models/credentials.dart';
import 'package:data_dex/domain/core/value_objects.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'signin_event.dart';
part 'signin_state.dart';
part 'signin_bloc.freezed.dart';

@injectable
class SigninBloc extends Bloc<SigninEvent, SigninState> {
  final IAuthFacade _authFacade;
  SigninBloc(this._authFacade) : super(SigninState.initial()) {
    on<SigninEvent>((event, emit) async {
      await event.map(
        emailChanged: (e) async => emit(state.copyWith(
          credentials: state.credentials.copyWith(
            emailAddress: RequiredEmailAddress(e.email),
          ),
          failureOrSuccessOption: none(),
        )),
        passwordChanged: (e) async => emit(state.copyWith(
          credentials: state.credentials.copyWith(
            password: Password(e.password),
          ),
          failureOrSuccessOption: none(),
        )),
        obscureTextChanged: (e) async => emit(state.copyWith(
          hidePassword: !state.hidePassword,
          failureOrSuccessOption: none(),
        )),
        signinButtonPressed: (e) async {
          Either<AuthFailure, Unit>? failureOrSuccess;

          final isCredentialsValid = state.credentials.failureOption.isNone();

          if (isCredentialsValid) {
            emit(state.copyWith(
              isSubmitting: true,
              failureOrSuccessOption: none(),
            ));

            failureOrSuccess = await _authFacade.signinWithEmailAndPassword(
              credentials: state.credentials,
            );
          }

          emit(state.copyWith(
            isSubmitting: false,
            showValidationError: true,
            failureOrSuccessOption: optionOf(failureOrSuccess),
          ));
        },
        signupButtonPressed: (e) async {
          Either<AuthFailure, Unit>? failureOrSuccess;

          final isCredentialsValid = state.credentials.failureOption.isNone();

          if (isCredentialsValid) {
            emit(state.copyWith(
              isSubmitting: true,
              failureOrSuccessOption: none(),
            ));

            failureOrSuccess = await _authFacade.signupWithEmailAndPassword(
              credentials: state.credentials,
            );
          }

          emit(state.copyWith(
            isSubmitting: false,
            showValidationError: true,
            failureOrSuccessOption: optionOf(failureOrSuccess),
          ));
        },
        signinWithGoogle: (e) async {
          emit(state.copyWith(
            isSubmitting: true,
            failureOrSuccessOption: none(),
          ));
          final failureOrSuccess = await _authFacade.signInWithGoogle();
          emit(state.copyWith(
            isSubmitting: false,
            failureOrSuccessOption: some(failureOrSuccess),
          ));
        },
      );
    });
  }
}
