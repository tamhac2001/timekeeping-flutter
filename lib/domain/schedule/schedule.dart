import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../infrastructure/schedule/dto/schedule_dto.dart';

part 'schedule.freezed.dart';

@freezed
class Schedule with _$Schedule {
  const factory Schedule({
    required TimeOfDay morningShiftStart,
    required TimeOfDay morningShiftEnd,
    required TimeOfDay afternoonShiftStart,
    required TimeOfDay afternoonShiftEnd,
  }) = _Schedule;

  factory Schedule.fromDTO(ScheduleDto scheduleDTO) => Schedule(
      morningShiftStart:
          TimeOfDay.fromDateTime(scheduleDTO.morningShiftStart.toLocal()),
      morningShiftEnd:
          TimeOfDay.fromDateTime(scheduleDTO.morningShiftEnd.toLocal()),
      afternoonShiftStart:
          TimeOfDay.fromDateTime(scheduleDTO.afternoonShiftStart.toLocal()),
      afternoonShiftEnd:
          TimeOfDay.fromDateTime(scheduleDTO.afternoonShiftEnd.toLocal()));
}
