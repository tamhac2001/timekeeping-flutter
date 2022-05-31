import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageRepository {
  static const storage = FlutterSecureStorage();

  Future<String?> get accessToken async {
    String? accessToken = await storage.read(key: 'accessToken');
    return accessToken;
  }

  Future<DateTime?> get expireDate async {
    String? expireDateString = await storage.read(key: 'expireDate');
    if (expireDateString != null) {
      try {
        DateTime? expireDate = DateTime.tryParse(expireDateString);
        return expireDate;
      } on FormatException catch (_) {
        debugPrint(
            "Format Exception on convert string to DateTime in SecureStorage");
      }
    }
    return null;
  }

  setAccessToken(String accessToken) async {
    await storage.write(key: 'accessToken', value: accessToken);
  }

  setExpireDate(DateTime expireDate) async {
    await storage.write(key: 'expireDate', value: expireDate.toIso8601String());
  }
}
