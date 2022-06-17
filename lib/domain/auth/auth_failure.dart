import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure {
  const factory AuthFailure.serverError() = ServerError;

  const factory AuthFailure.invalidEmailAndPassword() = InvalidEmailAndPassword;

  const factory AuthFailure.employeeNotFound() = EmployeeNotFound;
}
