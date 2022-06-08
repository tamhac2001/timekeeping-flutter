import 'package:timekeeping/infrastructure/auth/auth_dto.dart';

abstract class IAuthenticationApiClient {
  Future<AuthDTO> login({required String email, required String password});
}
