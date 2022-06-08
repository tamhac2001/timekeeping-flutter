import 'package:flutter/material.dart';
import 'package:timezone/data/latest_all.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

extension TimeOfDayX on TimeOfDay {
  DateTime toDateTime() {
    final now = DateTime.now();
    return DateTime(now.year, now.month, now.day, hour, minute);
  }

  tz.TZDateTime toTZDateTime() {
    final now = tz.TZDateTime.now(tz.local);
    tz.TZDateTime scheduledDate =
        tz.TZDateTime.local(now.year, now.month, now.day, hour, minute);
    if (scheduledDate.isBefore(now)) {
      scheduledDate = scheduledDate.add(const Duration(days: 1));
    }
    return scheduledDate;
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
