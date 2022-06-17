import 'package:timekeeping/infrastructure/auth/dto/auth_dto.dart';

abstract class IAuthenticationApiClient {
  Future<AuthDTO> login({required String email, required String password});
}

class AuthException implements Exception {
  const AuthException._(this.message);

  final String message;

  factory AuthException.serverError() => const AuthException._('server-error');

  factory AuthException.invalidEmailAndPassword() =>
      const AuthException._('invalid-email-and-password');

  factory AuthException.employeeNotFound() =>
      const AuthException._('employee-not-found');
}
