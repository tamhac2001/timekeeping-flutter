import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../utils/extensions.dart';
import '../../../constants.dart' as constant;

part 'check_in_status.freezed.dart';

@freezed
class CheckInStatus with _$CheckInStatus {
  const CheckInStatus._();

  const factory CheckInStatus.unknown(TimeOfDay scheduledTime) = _Unknown;

  const factory CheckInStatus.onTime(TimeOfDay scheduledTime, DateTime checkInTime) = _OnTime;

  const factory CheckInStatus.late(TimeOfDay scheduledTime, DateTime checkInTime) = _Late;

  const factory CheckInStatus.forgot(TimeOfDay scheduledTime) = _Forgot;

  factory CheckInStatus(DateTime checkInDate, DateTime? checkInTime, TimeOfDay scheduledTime) {
    if (checkInTime == null) {
      if (DateTime.now().isAfter(scheduledTime.toCheckInDate(checkInDate).add(const Duration(minutes: 30)))) {
        return CheckInStatus.forgot(scheduledTime);
      } else {
        return CheckInStatus.unknown(scheduledTime);
      }
    } else {
      if (checkInTime.isAfter(scheduledTime.toCheckInDate(checkInDate))) {
        return CheckInStatus.late(scheduledTime, checkInTime);
      } else {
        return CheckInStatus.onTime(scheduledTime, checkInTime);
      }
    }
  }

  @override
  String toString() {
    return when(
        unknown: (_) => 'Chưa điểm danh',
        onTime: (_, time) => 'Điểm danh: ${time.toDisplayedTime()}',
        late: (_, time) => 'Điểm danh trễ: ${time.toDisplayedTime()}',
        forgot: (_) => 'Không điểm danh');
  }

  Icon? toIcon() {
    return when(
        unknown: (_) => null,
        onTime: (_, __) => const Icon(Icons.done, color: Colors.green),
        late: (_, __) => Icon(Icons.report_problem, color: Colors.yellow.shade700),
        forgot: (_) => const Icon(Icons.thumb_down, color: Colors.red));
  }

  Color toColor() {
    return when(
        unknown: (_) => Colors.grey.shade100,
        onTime: (_, __) => Colors.green,
        late: (_, __) => Colors.yellow.shade800,
        forgot: (_) => Colors.red);
  }
}
