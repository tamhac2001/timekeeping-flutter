import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'timekeeping_failure.freezed.dart';

@freezed
class TimekeepingFailure with _$TimekeepingFailure {
  const TimekeepingFailure._();

  const factory TimekeepingFailure.noInternetAccess() = _NoInternetAccess;

  const factory TimekeepingFailure.serverError() = _ServerError;

  const factory TimekeepingFailure.unAuthenticated() = _UnAuthenticated;

  const factory TimekeepingFailure.qrCodeNotMatch() = _QrCodeNotMatch;

  const factory TimekeepingFailure.timekeepingNotFound() = _TimekeepingNotFound;

  String toFailureMessage() {
    return when(
        noInternetAccess: () => 'Không có kết nối Internet',
        serverError: () => 'Lỗi server',
        unAuthenticated: () => 'Phiên đăng nhập hết hạn',
        qrCodeNotMatch: () => 'QR Code không hợp lệ',
        timekeepingNotFound: () => 'Không tìm thấy dữ liệu trong CSDL');
  }
}
