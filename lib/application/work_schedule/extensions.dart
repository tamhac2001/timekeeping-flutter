import 'package:flutter/material.dart';

extension TimeOfDayX on TimeOfDay {
  DateTime toDateTime() {
    return DateTime(1, 1, 1, hour, minute);
  }

  static TimeOfDay getWorkEndTime(TimeOfDay morningShiftStartTime,
      TimeOfDay morningShiftEndTime, TimeOfDay afternoonShiftStartTime) {
    Duration workHour = const Duration(hours: 8);
    final morningShiftDuration = morningShiftEndTime
        .toDateTime()
        .difference(morningShiftStartTime.toDateTime());
    print('morningShiftDuration:$morningShiftDuration');
    workHour -= morningShiftDuration;

    return TimeOfDay.fromDateTime(
        afternoonShiftStartTime.toDateTime().add(workHour));
  }
}
