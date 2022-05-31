import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../infrastructure/auth/authentication_repository.dart';

part 'login_form_event.dart';

part 'login_form_state.dart';

part 'login_form_bloc.freezed.dart';

class LoginFormBloc extends Bloc<LoginFormEvent, LoginFormState> {
  LoginFormBloc({
    required AuthenticationRepository authenticationRepository,
  }) : super(LoginFormState.initial()) {
    on<LoginFormEvent>((event, emit) async {
      await event.map(
        emailChanged: (value) {
          emit(state.copyWith(email: value.email));
          debugPrint('emailChanged:${state.email}');
        },
        passwordChanged: (value) {
          emit(state.copyWith(password: value.password));
          debugPrint('passwordChanged:${state.password}');
        },
        login: (value) async {
          final accessToken =
              await authenticationRepository.login(state.email, state.password);
          if (accessToken != null) {
            emit(state.copyWith(formSubmittedSuccessOrFail: true));
          } else {
            emit(state.copyWith(
                formSubmittedSuccessOrFail: false,
                showErrorMessages: AutovalidateMode.onUserInteraction));
          }
        },
        forgetPassword: (value) => null,
      );
    });
  }
}
