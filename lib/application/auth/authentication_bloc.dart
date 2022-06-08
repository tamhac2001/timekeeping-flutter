import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../infrastructure/auth/authentication_repository.dart';

part 'authentication_event.dart';

part 'authentication_state.dart';

part 'authentication_bloc.freezed.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final AuthenticationRepository authenticationRepository;

  AuthenticationBloc(this.authenticationRepository)
      : super(const AuthenticationState.initial()) {
    on<AuthenticationEvent>((event, emit) async {
      await event.when(
        authRequest: () async {
          final authMap = await authenticationRepository.authRequest();
          if (authMap != null) {
            String accessToken = authMap['accessToken'] as String;
            DateTime expireDate = authMap['expireDate'] as DateTime;
            if (expireDate.isAfter(DateTime.now())) {
              emit(AuthenticationState.authenticated(accessToken, expireDate));
            } else {
              emit(const AuthenticationState.unauthenticated());
            }
          } else {
            emit(const AuthenticationState.unauthenticated());
          }
        },
        logout: () async {
          await authenticationRepository.logout();
          emit(const AuthenticationState.initial());
        },
      );
    });
  }
}
