part of 'login_form_bloc.dart';

@freezed
class LoginFormState with _$LoginFormState {
  const factory LoginFormState({
    required String email,
    required String password,
    required AutovalidateMode showErrorMessages,
    required bool isSubmitting,
    required bool? formSubmittedSuccessOrFail,
  }) = _LoginFormState;

  factory LoginFormState.initial() => const LoginFormState(
        email: '',
        password: '',
        showErrorMessages: AutovalidateMode.disabled,
        isSubmitting: false,
        formSubmittedSuccessOrFail: null,
      );
}
