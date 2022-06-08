part of 'login_form_bloc.dart';

@freezed
class LoginFormState with _$LoginFormState {
  const factory LoginFormState({
    required EmailAddress email,
    required Password password,
    required AutovalidateMode showErrorMessages,
    required bool isSubmitting,
    required Either<AuthFailure, Unit>? authFailureOrSuccess,
  }) = _LoginFormState;

  factory LoginFormState.initial() => LoginFormState(
        email: EmailAddress(''),
        password: Password(''),
        showErrorMessages: AutovalidateMode.disabled,
        isSubmitting: false,
        authFailureOrSuccess: null,
      );
}
