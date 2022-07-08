import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule_failure.freezed.dart';

@freezed
class ScheduleFailure with _$ScheduleFailure {
  const ScheduleFailure._();

  const factory ScheduleFailure.noInternetAccess() = _NoInternetAccess;

  const factory ScheduleFailure.serverError() = _ServerError;

  const factory ScheduleFailure.unAuthenticated() = _UnAuthenticated;

  const factory ScheduleFailure.noScheduleStored() = _NoScheduleStored;

  String toFailureMessage() {
    return when(
        noInternetAccess: () => 'Không có kết nối Internet',
        serverError: () => 'Lỗi server',
        unAuthenticated: () => 'Phiên đăng nhập hết hạn',
        noScheduleStored: () => 'Không tìm thấy lịch làm việc');
  }
}
