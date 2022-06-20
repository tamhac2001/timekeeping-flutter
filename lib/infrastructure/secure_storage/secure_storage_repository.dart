import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../utils/extensions.dart';

class SecureStorageRepository {
  static const storage = FlutterSecureStorage();

  Future<String?> get accessToken async {
    String? accessToken = await storage.read(key: 'accessToken');
    return accessToken;
  }

  Future<DateTime?> get expireDate async {
    String? expireDateString = await storage.read(key: 'expireDate');
    if (expireDateString != null) {
      DateTime? expireDate = DateTime.tryParse(expireDateString);
      return expireDate;
    } else {
      return null;
    }
  }

  Future<String?> get employeeId async {
    String? employeeId = await storage.read(key: 'employeeId');
    if (employeeId == null) {
      return null;
    } else {
      return employeeId;
    }
  }

  Future<TimeOfDay?> get morningShiftStart async {
    String? morningShiftStartString = await storage.read(key: 'morningShiftStart');
    if (morningShiftStartString != null) {
      TimeOfDay? morningShiftStart = TimeOfDay.fromDateTime(DateTime.tryParse(morningShiftStartString)!);
      return morningShiftStart;
    } else {
      return null;
    }
  }

  Future<TimeOfDay?> get morningShiftEnd async {
    String? morningShiftEndString = await storage.read(key: 'morningShiftEnd');
    if (morningShiftEndString != null) {
      TimeOfDay? morningShiftEnd = TimeOfDay.fromDateTime(DateTime.tryParse(morningShiftEndString)!);
      return morningShiftEnd;
    } else {
      return null;
    }
  }

  Future<TimeOfDay?> get afternoonShiftStart async {
    String? afternoonShiftStartString = await storage.read(key: 'afternoonShiftStart');
    if (afternoonShiftStartString != null) {
      TimeOfDay? afternoonShiftStart = TimeOfDay.fromDateTime(DateTime.tryParse(afternoonShiftStartString)!);
      return afternoonShiftStart;
    } else {
      return null;
    }
  }

  Future<TimeOfDay?> get afternoonShiftEnd async {
    String? afternoonShiftEndString = await storage.read(key: 'afternoonShiftEnd');
    if (afternoonShiftEndString != null) {
      TimeOfDay? afternoonShiftEnd = TimeOfDay.fromDateTime(DateTime.tryParse(afternoonShiftEndString)!);
      return afternoonShiftEnd;
    } else {
      return null;
    }
  }

  Future<void> setAccessToken(String accessToken) async {
    await storage.write(key: 'accessToken', value: accessToken);
  }

  Future<void> setExpireDate(DateTime expireDate) async {
    await storage.write(key: 'expireDate', value: expireDate.toIso8601String());
  }

  Future<void> setEmployeeId(int employeeId) async {
    await storage.write(key: 'employeeId', value: employeeId.toString());
  }

  Future<void> setMorningShiftStart({required TimeOfDay morningShiftStart}) async {
    await storage.write(key: 'morningShiftStart', value: morningShiftStart.toDateTime().toIso8601String());
  }

  Future<void> setMorningShiftEnd({required TimeOfDay morningShiftEnd}) async {
    await storage.write(key: 'morningShiftEnd', value: morningShiftEnd.toDateTime().toIso8601String());
  }

  Future<void> setAfternoonShiftStart({required TimeOfDay afternoonShiftStart}) async {
    await storage.write(key: 'afternoonShiftStart', value: afternoonShiftStart.toDateTime().toIso8601String());
  }

  Future<void> setAfternoonShiftEnd({required TimeOfDay afternoonShiftEnd}) async {
    await storage.write(key: 'afternoonShiftEnd', value: afternoonShiftEnd.toDateTime().toIso8601String());
  }

  Future<void> deleteAccessTokenAndExpireDate() async {
    await storage.delete(key: 'accessToken');
    await storage.delete(key: 'expireDate');
  }

  Future<void> deleteAll() async {
    await storage.deleteAll();
  }
}
