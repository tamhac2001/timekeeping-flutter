import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:timekeeping/constants.dart';
import 'package:timekeeping/infrastructure/auth/dto/auth_dto.dart';

import 'i_authentication_api_client.dart';

class AuthenticationApiClient implements IAuthenticationApiClient {
  // static const _uri = 'https://lazy-taxis-rhyme-115-75-181-199.loca.lt/auth/signin';
  static const _uri = 'http://10.0.2.2:3000/auth/signin';

  @override
  Future<AuthDTO> login({required String email, required String password}) async {
    final response = await http
        .post(
      Uri.parse(_uri),
      body: AuthDTO(email: email, password: password).toJson(),
    )
        .timeout(const Duration(seconds: timeOutDuration), onTimeout: () {
      throw AuthException.serverError();
    });
    if (response.statusCode == HttpStatus.internalServerError || response.statusCode == HttpStatus.notFound) {
      throw AuthException.serverError();
    } else if (response.statusCode == HttpStatus.forbidden) {
      throw AuthException.invalidEmailAndPassword();
    }
    final authDTO = AuthDTO.fromJson(jsonDecode(response.body));
    return authDTO;
  }
}
