import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:timekeeping/domain/employee/employee.dart';
import 'package:timekeeping/infrastructure/employee/employee_repository.dart';

import '../../infrastructure/auth/authentication_repository.dart';

part 'authentication_bloc.freezed.dart';

part 'authentication_event.dart';

part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final AuthenticationRepository _authenticationRepository;
  final EmployeeRepository _employeeRepository;

  AuthenticationBloc({
    required AuthenticationRepository authenticationRepository,
    required EmployeeRepository employeeRepository,
  })  : _authenticationRepository = authenticationRepository,
        _employeeRepository = employeeRepository,
        super(const AuthenticationState.initial()) {
    on<AuthenticationEvent>((event, emit) async {
      await event.when(
        authRequest: () async {
          final auth = await _authenticationRepository
              .authRequest()
              .timeout(const Duration(seconds: 3), onTimeout: () => null);
          if (auth == null) {
            emit(const AuthenticationState.unauthenticated());
          } else if (DateTime.now().isAfter(auth.expireDate)) {
            emit(const AuthenticationState.unauthenticated());
          } else {
            final employee = await _employeeRepository.getEmployee(
                accessToken: auth.accessToken);
            employee.fold(
                (failure) => emit(const AuthenticationState.unauthenticated()),
                (employee) => emit(AuthenticationState.authenticated(
                    auth.accessToken, employee.id.toString())));
          }
        },
        logout: () async {
          await _authenticationRepository.logout();
          emit(const AuthenticationState.initial());
        },
      );
    });
  }
}
