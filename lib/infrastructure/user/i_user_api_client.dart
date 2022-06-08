import 'user_dto.dart';

abstract class IUserApiClient {
  Future<UserDTO> fetchData(String accessToken);
}

class AuthException implements Exception {
  const AuthException(this.message);

  final String message;

  factory AuthException.serverError() => const AuthException('server-error');

  factory AuthException.invalidEmailAndPassword() =>
      const AuthException('invalid-email-and-password');
}
