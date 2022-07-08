import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'absent_failure.freezed.dart';

@freezed
class AbsentFailure with _$AbsentFailure {
  const AbsentFailure._();

  const factory AbsentFailure.noInternetAccess() = _NoInternetAccess;

  const factory AbsentFailure.serverError() = _ServerError;

  const factory AbsentFailure.unAuthenticated() = _UnAuthenticated;

  String toFailureMessage() {
    return when(
        noInternetAccess: () => 'Không có kết nối Internet',
        serverError: () => 'Lỗi server',
        unAuthenticated: () => 'Phiên đăng nhập hết hạn');
  }
}
