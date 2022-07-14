import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:timekeeping/constants.dart';
import 'package:timekeeping/domain/auth/auth_failure.dart';
import 'package:timekeeping/infrastructure/auth/dto/auth_dto.dart';

import 'i_authentication_api_client.dart';

class AuthenticationApiClient implements IAuthenticationApiClient {
  static const _uri = '$apiEndPoint/auth/signin';

  @override
  Future<AuthDTO> login({required String email, required String password}) async {
    final url = Uri.parse(_uri);
    try {
      final response = await http
          .post(
        url,
        body: AuthDTO(email: email, password: password).toJson(),
      )
          .timeout(timeOutDuration, onTimeout: () {
        debugPrint('timeout');
        throw const AuthFailure.serverError();
      });
      debugPrint('auth response: ${response.statusCode}');
      if (response.statusCode == HttpStatus.internalServerError || response.statusCode == HttpStatus.notFound) {
        throw const AuthFailure.serverError();
      } else if (response.statusCode == HttpStatus.forbidden) {
        throw const AuthFailure.invalidEmailAndPassword();
      }
      final authDTO = AuthDTO.fromJson(jsonDecode(response.body));
      return authDTO;
    } on SocketException catch (e) {
      throw const AuthFailure.noInternetAccess();
    }
  }
}
