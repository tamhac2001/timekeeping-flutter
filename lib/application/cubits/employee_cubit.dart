import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

import '../../domain/employee/employee.dart';
import '../../domain/employee/employee_failure.dart';
import '../../infrastructure/employee/employee_repository.dart';

class EmployeeCubit extends Cubit<Either<EmployeeFailure, Employee>?> {
  final EmployeeRepository _repository;

  EmployeeCubit({required EmployeeRepository repository})
      : _repository = repository,
        super(null);

  Future<void> employeeRequest() async {
    final employeeFailureOrEmployee = await _repository.getEmployee();
    emit(employeeFailureOrEmployee);
  }

  void resetState() {
    emit(null);
  }
}
