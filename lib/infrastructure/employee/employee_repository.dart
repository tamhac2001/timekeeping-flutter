import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:timekeeping/domain/employee/employee_failure.dart';
import 'package:timekeeping/infrastructure/secure_storage/secure_storage_repository.dart';

import '../../domain/employee/employee.dart';
import 'i_employee_api_client.dart';

class EmployeeRepository {
  final IEmployeeApiClient _apiClient;
  final SecureStorageRepository _storage;

  EmployeeRepository({
    required IEmployeeApiClient apiClient,
    required SecureStorageRepository storage,
  })  : _apiClient = apiClient,
        _storage = storage;

  Future<Either<EmployeeFailure, Employee>> getEmployee(
      {required String accessToken}) async {
    try {
      final employeeDto = await _apiClient.fetchData(accessToken: accessToken);
      _storage.setEmployeeId(employeeDto.id);
      return right(Employee.fromEmployeeDto(employeeDto));
    } on EmployeeException catch (e) {
      if (e.message == 'server-error') {
        return left(const EmployeeFailure.serverError());
      } else {
        return left(const EmployeeFailure.noEmployeeFound());
      }
    }
  }

  // Future<String?> get employeeId async {
  //   final failureOrEmployee = await employee;
  //   return failureOrEmployee.fold(
  //       (failure) => null, (employee) => employee.id.toString());
  // }

  Future<void> updateAvatar(Uint8List avatar) async {}
}
