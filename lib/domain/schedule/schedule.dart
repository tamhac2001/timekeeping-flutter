import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../infrastructure/schedule/dto/schedule_dto.dart';
import 'package:timezone/timezone.dart' as tz;

part 'schedule.freezed.dart';

@freezed
class Schedule with _$Schedule {
  const factory Schedule({
    required TimeOfDay morningShiftStart,
    required TimeOfDay morningShiftEnd,
    required TimeOfDay afternoonShiftStart,
    required TimeOfDay afternoonShiftEnd,
  }) = _Schedule;

  factory Schedule.empty() => const Schedule(
      morningShiftStart: TimeOfDay(hour: 0, minute: 0),
      morningShiftEnd: TimeOfDay(hour: 0, minute: 0),
      afternoonShiftStart: TimeOfDay(hour: 0, minute: 0),
      afternoonShiftEnd: TimeOfDay(hour: 0, minute: 0));

  factory Schedule.fromDTO(ScheduleDto scheduleDTO) {
    return Schedule(
        morningShiftStart: TimeOfDay.fromDateTime(scheduleDTO.morningShiftStart.toLocal()),
        morningShiftEnd: TimeOfDay.fromDateTime(scheduleDTO.morningShiftEnd.toLocal()),
        afternoonShiftStart: TimeOfDay.fromDateTime(scheduleDTO.afternoonShiftStart.toLocal()),
        afternoonShiftEnd: TimeOfDay.fromDateTime(scheduleDTO.afternoonShiftEnd.toLocal()));
  }
}
