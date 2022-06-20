import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../utils/extensions.dart';

part 'check_out_status.freezed.dart';

@freezed
class CheckOutStatus with _$CheckOutStatus {
  const CheckOutStatus._();

  const factory CheckOutStatus.unknown() = _Unknown;

  const factory CheckOutStatus.onTime(DateTime checkInTime) = _OnTime;

  const factory CheckOutStatus.early(DateTime checkOutTime) = _Early;

  const factory CheckOutStatus.forgot() = _Forgot;

  factory CheckOutStatus(DateTime? checkInTime, TimeOfDay scheduledTime) {
    if (checkInTime == null) {
      if (DateTime.now().isAfter(scheduledTime.toDateTime().add(const Duration(minutes: 30)))) {
        return const CheckOutStatus.forgot();
      } else {
        return const CheckOutStatus.unknown();
      }
    } else {
      if (checkInTime.isBefore(scheduledTime.toDateTime().subtract(const Duration(minutes: 10)))) {
        return CheckOutStatus.early(checkInTime);
      } else {
        return CheckOutStatus.onTime(checkInTime);
      }
    }
  }

  @override
  String toString() {
    return when(
        unknown: () => 'Chưa điểm danh',
        onTime: (time) => 'Điểm danh: ${time.toDisplayedTime()}',
        early: (time) => 'Điểm danh sớm: ${time.toDisplayedTime()}',
        forgot: () => 'Không điểm danh');
  }

  Icon? toIcon() {
    return when(
        unknown: () => null,
        onTime: (_) => const Icon(Icons.done, color: Colors.green),
        early: (_) => const Icon(Icons.report_problem, color: Colors.yellow),
        forgot: () => const Icon(Icons.thumb_down, color: Colors.redAccent));
  }
}
