import 'package:dartz/dartz.dart';

import '../dto/employee_dto.dart';

abstract class IEmployeeApiClient {
  Future<EmployeeDto> fetchEmployeeData({required String accessToken});

  Future<void> updateAvatar({required String accessToken, required String avatar});
}
