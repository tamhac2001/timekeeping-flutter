import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:timekeeping/infrastructure/auth/auth_dto.dart';

import '../user/i_user_api_client.dart';
import 'i_authentication_api_client.dart';

class FakeAuthenticationApiClient implements IAuthenticationApiClient {
  static const uri = 'http://10.0.2.2:3000/auth/signin';

  @override
  Future<AuthDTO> login(
      {required String email, required String password}) async {
    // return Future.delayed(const Duration(seconds: 1),
    //     () => <String, dynamic>{'access_token': 'abcxyz', 'email': email});
    final response = await http.post(
      Uri.parse(uri),
      body: AuthDTO(email: email, password: password).toJson(),
    );
    print(response.body);
    print(response.statusCode);
    if (response.statusCode >= 200 && response.statusCode <= 300) {
      final authDTO = AuthDTO.fromJson(jsonDecode(response.body));
      if (authDTO.accessToken != null && authDTO.expireDate != null) {
        return authDTO;
      } else {
        throw AuthException.invalidEmailAndPassword();
      }
    } else {
      throw AuthException.serverError();
    }
  }
}
