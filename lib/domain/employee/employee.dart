import 'dart:convert';
import 'dart:typed_data';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../infrastructure/employee/dto/employee_dto.dart';

part 'employee.freezed.dart';

@freezed
class Employee with _$Employee {
  const factory Employee({
    required int id,
    required String code,
    required String name,
    required Gender gender,
    required String phoneNumber,
    required String address,
    required Uint8List? avatar,
    required DateTime dateStart,
  }) = _Employee;

  factory Employee.initial() => Employee(
      id: 0,
      code: '',
      name: '',
      gender: Gender.male,
      phoneNumber: '',
      address: '',
      avatar: null,
      dateStart: DateTime.now());

  factory Employee.fromEmployeeDto(EmployeeDto employeeDto) => Employee(
      id: employeeDto.id,
      code: employeeDto.code,
      name: employeeDto.name,
      gender: employeeDto.gender,
      phoneNumber: employeeDto.phoneNumber,
      address: employeeDto.address,
      avatar: employeeDto.avatar == null
          ? null
          : const Base64Decoder().convert(employeeDto.avatar!),
      dateStart: employeeDto.dateStart);
}

enum Gender {
  male,
  female,
  others,
}
