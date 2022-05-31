
import 'i_authentication_api_client.dart';

class FakeAuthenticationApiClient implements IAuthenticationApiClient {
  @override
  Future<Map<String, dynamic>> login(String email, String password) {
    return Future.delayed(
        const Duration(seconds: 1), () => <String, dynamic>{
          'access_token': 'abcxyz',
          'email': email
    });
  }
}
