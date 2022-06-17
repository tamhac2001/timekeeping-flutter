import 'dto/employee_dto.dart';

abstract class IEmployeeApiClient {
  Future<EmployeeDto> fetchData({required String accessToken});
}

class EmployeeException implements Exception {
  const EmployeeException._(this.message);

  final String message;

  factory EmployeeException.serverError() =>
      const EmployeeException._('server-error');

  factory EmployeeException.noEmployeeFound() =>
      const EmployeeException._('no-employee-found');
}
