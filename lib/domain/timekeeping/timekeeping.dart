import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:timekeeping/domain/schedule/schedule.dart';

import '../../infrastructure/timekeeping/dto/timekeeping_dto.dart';
import 'check_in_status.dart';
import 'check_out_status.dart';

part 'timekeeping.freezed.dart';

@freezed
class Timekeeping with _$Timekeeping {
  const Timekeeping._();

  const factory Timekeeping({
    required DateTime date,
    required CheckInStatus morningShiftStart,
    required CheckOutStatus morningShiftEnd,
    required CheckInStatus afternoonShiftStart,
    required CheckOutStatus afternoonShiftEnd,
  }) = _Timekeeping;

  factory Timekeeping.fromDto(TimekeepingDto dto, Schedule schedule) {
    return Timekeeping(
        date: dto.date,
        morningShiftStart: CheckInStatus(dto.date, dto.morningShiftStart?.toLocal(), schedule.morningShiftStart),
        morningShiftEnd: CheckOutStatus(dto.date, dto.morningShiftEnd?.toLocal(), schedule.morningShiftEnd),
        afternoonShiftStart: CheckInStatus(dto.date, dto.afternoonShiftStart?.toLocal(), schedule.afternoonShiftStart),
        afternoonShiftEnd: CheckOutStatus(dto.date, dto.afternoonShiftEnd?.toLocal(), schedule.afternoonShiftEnd));
  }

  factory Timekeeping.absent(Schedule schedule, DateTime dateTime) {
    return Timekeeping(
        date: dateTime,
        morningShiftStart: CheckInStatus.forgot(schedule.morningShiftStart),
        morningShiftEnd: CheckOutStatus.forgot(schedule.morningShiftEnd),
        afternoonShiftStart: CheckInStatus.forgot(schedule.afternoonShiftStart),
        afternoonShiftEnd: CheckOutStatus.forgot(schedule.afternoonShiftEnd));
  }

  String toWholeDayStatusString() {
    if (morningShiftStart.maybeWhen(onTime: (_, __) => true, orElse: () => false) &&
        morningShiftEnd.maybeWhen(onTime: (_, __) => true, orElse: () => false) &&
        afternoonShiftStart.maybeWhen(onTime: (_, __) => true, orElse: () => false) &&
        afternoonShiftEnd.maybeWhen(onTime: (_, __) => true, orElse: () => false)) {
      return 'Điểm danh đầy đủ';
    } else if (morningShiftStart.maybeWhen(forgot: (_) => true, orElse: () => false) &&
        morningShiftEnd.maybeWhen(forgot: (_) => true, orElse: () => false) &&
        afternoonShiftStart.maybeWhen(forgot: (_) => true, orElse: () => false) &&
        afternoonShiftEnd.maybeWhen(forgot: (_) => true, orElse: () => false)) {
      return 'Vắng';
    } else if (morningShiftStart.maybeWhen(forgot: (_) => true, orElse: () => false) ||
        morningShiftEnd.maybeWhen(forgot: (_) => true, orElse: () => false) ||
        afternoonShiftStart.maybeWhen(forgot: (_) => true, orElse: () => false) ||
        afternoonShiftEnd.maybeWhen(forgot: (_) => true, orElse: () => false)) {
      return 'Không điểm danh';
    } else {
      return 'Điểm danh trễ/sớm';
    }
  }

  Color toColor() {
    if (morningShiftStart.maybeWhen(onTime: (_, __) => true, orElse: () => false) &&
        morningShiftEnd.maybeWhen(onTime: (_, __) => true, orElse: () => false) &&
        afternoonShiftStart.maybeWhen(onTime: (_, __) => true, orElse: () => false) &&
        afternoonShiftEnd.maybeWhen(onTime: (_, __) => true, orElse: () => false)) {
      return Colors.green;
    } else if (morningShiftStart.maybeWhen(forgot: (_) => true, orElse: () => false) ||
        morningShiftEnd.maybeWhen(forgot: (_) => true, orElse: () => false) ||
        afternoonShiftStart.maybeWhen(forgot: (_) => true, orElse: () => false) ||
        afternoonShiftEnd.maybeWhen(forgot: (_) => true, orElse: () => false)) {
      return Colors.red;
    } else {
      return Colors.yellow.shade800;
    }
  }

  Icon toWholeDayStatusIcon() {
    if (morningShiftStart.maybeWhen(onTime: (_, __) => true, orElse: () => false) &&
        morningShiftEnd.maybeWhen(onTime: (_, __) => true, orElse: () => false) &&
        afternoonShiftStart.maybeWhen(onTime: (_, __) => true, orElse: () => false) &&
        afternoonShiftEnd.maybeWhen(onTime: (_, __) => true, orElse: () => false)) {
      return const Icon(Icons.done, color: Colors.green);
    } else if (morningShiftStart.maybeWhen(forgot: (_) => true, orElse: () => false) ||
        morningShiftEnd.maybeWhen(forgot: (_) => true, orElse: () => false) ||
        afternoonShiftStart.maybeWhen(forgot: (_) => true, orElse: () => false) ||
        afternoonShiftEnd.maybeWhen(forgot: (_) => true, orElse: () => false)) {
      return const Icon(Icons.thumb_down, color: Colors.red);
    } else {
      return Icon(Icons.report_problem, color: Colors.yellow.shade700);
    }
  }
}
