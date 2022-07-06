import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../utils/extensions.dart';
import '../../../constants.dart' as constant;

part 'check_out_status.freezed.dart';

@freezed
class CheckOutStatus with _$CheckOutStatus {
  const CheckOutStatus._();

  const factory CheckOutStatus.unknown(TimeOfDay scheduledTime) = _Unknown;

  const factory CheckOutStatus.onTime(TimeOfDay scheduledTime, DateTime checkOutTime) = _OnTime;

  const factory CheckOutStatus.early(TimeOfDay scheduledTime, DateTime checkOutTime) = _Early;

  const factory CheckOutStatus.forgot(TimeOfDay scheduledTime) = _Forgot;

  factory CheckOutStatus(DateTime checkInDate, DateTime? checkOutTime, TimeOfDay scheduledTime) {
    if (checkOutTime == null) {
      if (DateTime.now().isAfter(scheduledTime.toCheckInDate(checkInDate).add(const Duration(minutes: 30)))) {
        return CheckOutStatus.forgot(scheduledTime);
      } else {
        return CheckOutStatus.unknown(scheduledTime);
      }
    } else {
      if (checkOutTime
          .isBefore(scheduledTime.toCheckInDate(checkInDate).subtract(constant.durationForValidCheckOutTime))) {
        return CheckOutStatus.early(scheduledTime, checkOutTime);
      } else {
        return CheckOutStatus.onTime(scheduledTime, checkOutTime);
      }
    }
  }

  @override
  String toString() {
    return when(
        unknown: (_) => 'Chưa điểm danh',
        onTime: (_, time) => 'Điểm danh: ${time.toDisplayedTime()}',
        early: (_, time) => 'Điểm danh sớm: ${time.toDisplayedTime()}',
        forgot: (_) => 'Không điểm danh');
  }

  Icon? toIcon() {
    return when(
        unknown: (_) => null,
        onTime: (_, __) => const Icon(Icons.done, color: Colors.green),
        early: (_, __) => Icon(Icons.report_problem, color: Colors.yellow.shade700),
        forgot: (_) => const Icon(Icons.thumb_down, color: Colors.red));
  }

  Color toColor() {
    return when(
        unknown: (_) => Colors.grey.shade300,
        onTime: (_, __) => Colors.green,
        early: (_, __) => Colors.yellow.shade700,
        forgot: (_) => Colors.red);
  }
}
