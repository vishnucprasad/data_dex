part of 'signin_bloc.dart';

@freezed
class SigninEvent with _$SigninEvent {
  const factory SigninEvent.emailChanged(String email) = _EmailChanged;
  const factory SigninEvent.passwordChanged(String password) = _PasswordChanged;
  const factory SigninEvent.obscureTextChanged() = obscureTextChanged;
  const factory SigninEvent.signinButtonPressed() = _SigninButtonPressed;
  const factory SigninEvent.signupButtonPressed() = _SignupButtonPressed;
  const factory SigninEvent.signinWithGoogle() = _SigninWithGoogle;
}
