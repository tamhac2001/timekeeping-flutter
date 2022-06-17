import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee_failure.freezed.dart';

@freezed
class EmployeeFailure with _$EmployeeFailure {
  const factory EmployeeFailure.serverError() = ServerError;

  const factory EmployeeFailure.noEmployeeFound() = NoEmployeeFound;
}
