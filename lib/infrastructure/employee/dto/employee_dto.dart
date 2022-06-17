import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/employee/employee.dart';

part 'employee_dto.freezed.dart';

part 'employee_dto.g.dart';

@freezed
class EmployeeDto with _$EmployeeDto {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory EmployeeDto({
    required int id,
    required String code,
    required String name,
    required Gender gender,
    required String phoneNumber,
    required String address,
    required String? avatar,
    required DateTime dateStart,
  }) = _EmployeeDto;

  factory EmployeeDto.fromDomain(Employee employee) => EmployeeDto(
      id: employee.id,
      code: employee.code,
      name: employee.name,
      gender: employee.gender,
      phoneNumber: employee.phoneNumber,
      address: employee.address,
      avatar: employee.avatar == null
          ? null
          : const Base64Encoder().convert(employee.avatar!.toList()),
      dateStart: employee.dateStart);

  factory EmployeeDto.fromJson(Map<String, dynamic> json) =>
      _$EmployeeDtoFromJson(json);
}
