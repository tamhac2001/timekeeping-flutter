import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:timekeeping/domain/auth/auth_failure.dart';
import 'package:timekeeping/domain/auth/email_address.dart';
import 'package:timekeeping/domain/auth/password.dart';

import '../../domain/auth/auth.dart';
import '../secure_storage/secure_storage_repository.dart';
import 'api/i_authentication_api_client.dart';

class AuthenticationRepository {
  final IAuthenticationApiClient _apiClient;
  final SecureStorageRepository _storage;

  AuthenticationRepository({
    required IAuthenticationApiClient apiClient,
    required SecureStorageRepository storage,
  })  : _apiClient = apiClient,
        _storage = storage;

  Future<Auth?> authRequest() async {
    final accessToken = await _storage.accessToken;
    final expireDate = await _storage.expireDate;
    debugPrint('access token authRequest(repo): $accessToken');
    debugPrint('expire date authRequest(repo): $expireDate');
    if (accessToken == null || expireDate == null) {
      return null;
    } else {
      return Auth(accessToken: accessToken, expireDate: expireDate);
    }
  }

  Future<Either<AuthFailure, Unit>> login({
    required EmailAddress email,
    required Password password,
  }) async {
    final emailString = email.getOrCrash();
    final passwordString = password.getOrCrash();
    try {
      final authDTO = await _apiClient.login(email: emailString, password: passwordString);
      final accessToken = authDTO.accessToken;
      final expireDate = JwtDecoder.getExpirationDate(accessToken!);
      await _storage.setAccessToken(accessToken);
      await _storage.setExpireDate(expireDate);
      return right(unit);
    } on AuthFailure catch (f) {
      return left(f);
    }
  }

  Future<void> logout() async {
    await _storage.deleteAll();
  }
}
