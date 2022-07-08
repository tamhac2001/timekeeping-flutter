import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee_failure.freezed.dart';

@freezed
class EmployeeFailure with _$EmployeeFailure {
  const EmployeeFailure._();

  const factory EmployeeFailure.serverError() = _ServerError;

  const factory EmployeeFailure.unAuthenticated() = _UnAuthenticated;

  const factory EmployeeFailure.noInternetAccess() = _NoInternetAccess;

  const factory EmployeeFailure.noEmployeeFound() = _NoEmployeeFound;

  String toFailureMessage() {
    return when(
        noInternetAccess: () => 'Không có kết nối Internet',
        serverError: () => 'Lỗi server',
        unAuthenticated: () => 'Phiên đăng nhập hết hạn',
        noEmployeeFound: () => 'Không tìm thấy nhân viên ứng với tài khoản');
  }
}
