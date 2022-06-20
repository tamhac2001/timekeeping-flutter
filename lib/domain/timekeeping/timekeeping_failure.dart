import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'timekeeping_failure.freezed.dart';

@freezed
class TimekeepingFailure with _$TimekeepingFailure {
  const factory TimekeepingFailure.serverError() = ServerError;
  const factory TimekeepingFailure.unauthenticated() = Unauthenticated;
  const factory TimekeepingFailure.qrCodeNotMatch() = QrCodeNotMatch;
  const factory TimekeepingFailure.timekeepingNotFound() = TimekeepingNotFound;
}
