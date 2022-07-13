import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/employee/employee.dart';

part 'employee_dto.freezed.dart';

part 'employee_dto.g.dart';

@freezed
class EmployeeDto with _$EmployeeDto {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true, includeIfNull: false)
  const factory EmployeeDto({
    required int id,
    required String code,
    required String name,
    required Gender gender,
    required String phoneNumber,
    required String address,
    @JsonKey(fromJson: avatarFromJson) required String? avatar,
    required DateTime startDate,
  }) = _EmployeeDto;

  factory EmployeeDto.fromDomain(Employee employee) => EmployeeDto(
      id: employee.id,
      code: employee.code,
      name: employee.name,
      gender: employee.gender,
      phoneNumber: employee.phoneNumber,
      address: employee.address,
      avatar: employee.avatar == null ? null : const Base64Encoder().convert(employee.avatar!.toList()),
      startDate: employee.startDate);

  factory EmployeeDto.fromJson(Map<String, dynamic> json) => _$EmployeeDtoFromJson(json);
}

String? avatarFromJson(Map<String, dynamic>? json) {
  if (json != null) {
    List<int> intList = List<int>.from(json['data']);
    return const Base64Encoder().convert(intList);
  }
  return null;
}
