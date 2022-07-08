import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure {
  const AuthFailure._();

  const factory AuthFailure.noInternetAccess() = _NoInternetAccess;

  const factory AuthFailure.serverError() = _ServerError;

  const factory AuthFailure.invalidEmailAndPassword() = _InvalidEmailAndPassword;

  const factory AuthFailure.employeeNotFound() = _EmployeeNotFound;

  String toFailureMessage() {
    return when(
        noInternetAccess: () => 'Không có kết nối Internet',
        serverError: () => 'Lỗi server',
        invalidEmailAndPassword: () => 'Sai tài khoản hoặc mật khẩu',
        employeeNotFound: () => 'Không tìm thấy dữ liệu nhân viên ứng với tài khoản');
  }
}
