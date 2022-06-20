import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../utils/extensions.dart';

part 'check_in_status.freezed.dart';

@freezed
class CheckInStatus with _$CheckInStatus {
  const CheckInStatus._();

  const factory CheckInStatus.unknown() = _Unknown;

  const factory CheckInStatus.onTime(DateTime checkInTime) = _OnTime;

  const factory CheckInStatus.late(DateTime checkInTime) = _Late;

  const factory CheckInStatus.forgot() = _Forgot;

  factory CheckInStatus(DateTime? checkInTime, TimeOfDay scheduledTime) {
    if (checkInTime == null) {
      if (DateTime.now().isAfter(scheduledTime.toDateTime().add(const Duration(minutes: 30)))) {
        return const CheckInStatus.forgot();
      } else {
        return const CheckInStatus.unknown();
      }
    } else {
      if (checkInTime.isAfter(scheduledTime.toDateTime())) {
        return CheckInStatus.late(checkInTime);
      } else {
        return CheckInStatus.onTime(checkInTime);
      }
    }
  }

  @override
  String toString() {
    return when(
        unknown: () => 'Chưa điểm danh',
        onTime: (time) => 'Điểm danh: ${time.toDisplayedTime()}',
        late: (time) => 'Điểm danh trễ: ${time.toDisplayedTime()}',
        forgot: () => 'Không điểm danh');
  }

  Icon? toIcon() {
    return when(
        unknown: () => null,
        onTime: (_) => const Icon(Icons.done, color: Colors.green),
        late: (_) => const Icon(Icons.report_problem, color: Colors.yellow),
        forgot: () => const Icon(Icons.thumb_down, color: Colors.redAccent));
  }
}
