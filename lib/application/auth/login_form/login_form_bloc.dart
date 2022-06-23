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
  final AuthenticationRepository _authenticationRepository;

  LoginFormBloc({
    required AuthenticationRepository authenticationRepository,
  })  : _authenticationRepository = authenticationRepository,
        super(LoginFormState.initial()) {
    on<LoginFormEvent>((event, emit) async {
      await event.when(
        emailChanged: (email) {
          emit(state.copyWith(
            email: EmailAddress(email),
            authFailureOrSuccess: null,
          ));
        },
        passwordChanged: (password) {
          emit(state.copyWith(
            password: Password(password),
            authFailureOrSuccess: null,
          ));
        },
        login: () async {
          Either<AuthFailure, Unit>? failureOrSuccess;
          if (state.email.isValid() && state.password.isValid()) {
            emit(state.copyWith(
              isSubmitting: true,
              authFailureOrSuccess: null,
            ));
            failureOrSuccess = await _authenticationRepository.login(email: state.email, password: state.password);
          }
          emit(state.copyWith(
            isSubmitting: false,
            showErrorMessages: AutovalidateMode.always,
            authFailureOrSuccess: failureOrSuccess,
          ));
        },
        forgetPassword: () => null,
      );
    });
  }
}
