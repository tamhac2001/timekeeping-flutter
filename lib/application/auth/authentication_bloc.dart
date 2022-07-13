import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:timekeeping/domain/employee/employee.dart';
import 'package:timekeeping/infrastructure/employee/employee_repository.dart';

import '../../constants.dart';
import '../../infrastructure/auth/authentication_repository.dart';

part 'authentication_bloc.freezed.dart';

part 'authentication_event.dart';

part 'authentication_state.dart';

class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {
  final AuthenticationRepository _authenticationRepository;

  AuthenticationBloc({
    required AuthenticationRepository authenticationRepository,
  })  : _authenticationRepository = authenticationRepository,
        super(const AuthenticationState.initial()) {
    on<AuthenticationEvent>((event, emit) async {
      await event.when(
        authRequest: () async {
          final auth = await _authenticationRepository.authRequest();
          if (auth == null) {
            emit(const AuthenticationState.unauthenticated());
          } else if (DateTime.now().isAfter(auth.expireDate)) {
            emit(const AuthenticationState.unauthenticated());
          } else {
            emit(const AuthenticationState.authenticated());
          }
        },
        logout: () async {
          await _authenticationRepository.logout();
          emit(const AuthenticationState.unauthenticated());
        },
      );
    });
  }
}
