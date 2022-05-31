import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

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
    }else{
      debugPrint('authRequest: null');
      return null;
    }

  }

  Future<String?> login(String email, String password) async {
    final response = await authenticationApiClient.login(email, password);
    final accessToken = response['access_token'];
    //TODO: Change expireTime to +8h
    final expireDate = DateTime.now().add(const Duration(hours: 8));
    await secureStorageRepository.setAccessToken(accessToken);
    await secureStorageRepository.setExpireDate(expireDate);
    return accessToken;
  }
}
