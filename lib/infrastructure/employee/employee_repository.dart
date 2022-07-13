import 'dart:convert';
import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:timekeeping/domain/employee/employee_failure.dart';
import 'package:timekeeping/infrastructure/secure_storage/secure_storage_repository.dart';

import '../../domain/employee/employee.dart';
import 'api/i_employee_api_client.dart';

class EmployeeRepository {
  final IEmployeeApiClient _apiClient;
  final SecureStorageRepository _storage;

  EmployeeRepository({
    required IEmployeeApiClient apiClient,
    required SecureStorageRepository storage,
  })  : _apiClient = apiClient,
        _storage = storage;

  Future<Either<EmployeeFailure, Employee>> getEmployee() async {
    try {
      debugPrint('getEmployee called');
      final accessToken = await _storage.accessToken;
      final employeeDto = await _apiClient.fetchEmployeeData(accessToken: accessToken!);
      await _storage.setEmployeeId(employeeDto.id);
      await _storage.setEmployeeStartDate(employeeDto.startDate);
      return right(Employee.fromEmployeeDto(employeeDto));
    } on EmployeeFailure catch (f) {
      return left(f);
    }
  }

  Future<Either<EmployeeFailure, Unit>> updateAvatar(Uint8List avatar) async {
    try {
      final accessToken = await _storage.accessToken;
      await _apiClient.updateAvatar(accessToken: accessToken!, avatar: const Base64Encoder().convert(avatar.toList()));
      return right(unit);
    } on EmployeeFailure catch (f) {
      return left(f);
    }
  }
}
