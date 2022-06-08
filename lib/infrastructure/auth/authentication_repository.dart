import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:timekeeping/domain/auth/auth_failure.dart';
import 'package:timekeeping/domain/auth/email_address.dart';
import 'package:timekeeping/domain/auth/password.dart';
import 'package:timekeeping/domain/core/errors.dart';
import 'package:timekeeping/infrastructure/auth/fake_authentication_api_client.dart';

import '../user/i_user_api_client.dart';
import 'secure_storage_repository.dart';
import 'i_authentication_api_client.dart';

class AuthenticationRepository {
  final IAuthenticationApiClient authenticationApiClient;
  final SecureStorageRepository secureStorageRepository;

  AuthenticationRepository({
    required this.secureStorageRepository,
    required this.authenticationApiClient,
  });

  Future<Map<String, dynamic>?> authRequest() async {
    final accessToken = await secureStorageRepository.accessToken;
    final expireDate = await secureStorageRepository.expireDate;
    if (accessToken != null && expireDate != null) {
      final map = <String, dynamic>{
        'accessToken': accessToken,
        'expireDate': expireDate,
      };
      debugPrint('authRequest map:$map');
      return map;
    } else {
      debugPrint('authRequest: null');
      return null;
    }
  }

  Future<Either<AuthFailure, Unit>> login({
    required EmailAddress email,
    required Password password,
  }) async {
    final emailString = email.getOrCrash();
    final passwordString = password.getOrCrash();
    try {
      final authDTO = await authenticationApiClient.login(
          email: emailString, password: passwordString);
      final accessToken = authDTO.accessToken;
      final expireDate = authDTO.expireDate;
      await secureStorageRepository.setAccessToken(accessToken!);
      await secureStorageRepository.setExpireDate(expireDate!);
      return right(unit);
    } on AuthException catch (authException) {
      if (authException.message == 'invalid-email-and-password') {
        return left(const AuthFailure.invalidEmailAndPassword());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  Future<void> logout() async {
    await secureStorageRepository.deleteAll();
  }
}
