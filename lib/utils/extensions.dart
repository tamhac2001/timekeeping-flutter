import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timezone/timezone.dart' as tz;

extension TimeOfDayX on TimeOfDay {
  static TimeOfDay getWorkEndTime(
      TimeOfDay morningShiftStartTime, TimeOfDay morningShiftEndTime, TimeOfDay afternoonShiftStartTime) {
    Duration workHour = const Duration(hours: 8);
    final morningShiftDuration = morningShiftEndTime.toDateTime().difference(morningShiftStartTime.toDateTime());
    workHour -= morningShiftDuration;

    return TimeOfDay.fromDateTime(afternoonShiftStartTime.toDateTime().add(workHour));
  }

  String toDisplayText() {
    final dt = toDateTime();
    return DateFormat('HH:mm').format(dt);
  }

  DateTime toDateTime() {
    final now = DateTime.now();
    return DateTime(now.year, now.month, now.day, hour, minute);
  }

  tz.TZDateTime toTZDateTime() {
    final now = tz.TZDateTime.now(tz.local);
    tz.TZDateTime scheduledDate = tz.TZDateTime.local(now.year, now.month, now.day, hour, minute);
    if (scheduledDate.isBefore(now)) {
      scheduledDate = scheduledDate.add(const Duration(days: 1));
    }
    return scheduledDate;
  }
}

extension DateTimeX on DateTime {
  String toDisplayedTime() {
    return DateFormat('HH:mm:ss').format(this);
  }
}
