import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/auth/auth_failure.dart';
import '../../../domain/auth/email_address.dart';
import '../../../domain/auth/password.dart';
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
        emailChanged: (event) {
          emit(state.copyWith(
            email: EmailAddress(event.email),
            authFailureOrSuccess: null,
          ));
        },
        passwordChanged: (event) {
          emit(state.copyWith(
            password: Password(event.password),
            authFailureOrSuccess: null,
          ));
        },
        login: (event) async {
          Either<AuthFailure, Unit>? failureOrSuccess;
          if (state.email.isValid() && state.password.isValid()) {
            emit(state.copyWith(
              isSubmitting: true,
              authFailureOrSuccess: null,
            ));
            failureOrSuccess = await authenticationRepository.login(
                email: state.email, password: state.password);
          }
          emit(state.copyWith(
            isSubmitting: false,
            showErrorMessages: AutovalidateMode.always,
            authFailureOrSuccess: failureOrSuccess,
          ));
        },
        forgetPassword: (event) => null,
      );
    });
  }
}
