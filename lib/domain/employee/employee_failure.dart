import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:timekeeping/application/cubits/employee_cubit.dart';
import 'package:timekeeping/presentation/core/app_widgets.dart';

part 'employee_failure.freezed.dart';

@freezed
class EmployeeFailure with _$EmployeeFailure {
  const EmployeeFailure._();

  const factory EmployeeFailure.timeOutError() = _TimeOutError;

  const factory EmployeeFailure.serverError() = _ServerError;

  const factory EmployeeFailure.unAuthenticated() = _UnAuthenticated;

  const factory EmployeeFailure.noInternetAccess() = _NoInternetAccess;

  const factory EmployeeFailure.noEmployeeFound() = _NoEmployeeFound;

  String toFailureMessage() {
    return when(
        timeOutError: () => 'Lỗi timeout',
        serverError: () => 'Lỗi server',
        unAuthenticated: () => 'Phiên đăng nhập hết hạn',
        noInternetAccess: () => 'Không có kết nối Internet',
        noEmployeeFound: () => 'Không tìm thấy nhân viên trong CSDL!');
  }
}
