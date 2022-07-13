import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timezone/timezone.dart' as tz;

extension TimeOfDayX on TimeOfDay {
  static TimeOfDay getWorkEndTime(
      TimeOfDay morningShiftStartTime, TimeOfDay morningShiftEndTime, TimeOfDay afternoonShiftStartTime) {
    Duration workHour = const Duration(hours: 8);
    final morningShiftDuration =
        morningShiftEndTime.toTodayDateTime().difference(morningShiftStartTime.toTodayDateTime());
    workHour -= morningShiftDuration;

    return TimeOfDay.fromDateTime(afternoonShiftStartTime.toTodayDateTime().add(workHour));
  }

  static TimeOfDay empty() => const TimeOfDay(hour: 0, minute: 0);

  String toDisplayText() {
    final dt = toTodayDateTime();
    return DateFormat('HH:mm').format(dt);
  }

  DateTime toTodayDateTime() {
    final now = DateTime.now();
    return DateTime(now.year, now.month, now.day, hour, minute);
  }

  DateTime toDateTimeWithTime(DateTime dateTime) {
    return DateTime(dateTime.year, dateTime.month, dateTime.day, hour, minute);
  }

  DateTime toCheckInDate(DateTime checkInDate) {
    return DateTime(checkInDate.year, checkInDate.month, checkInDate.day, hour, minute);
  }

  tz.TZDateTime toTZDateTimeForTodayNotification() {
    final now = tz.TZDateTime.now(tz.local);
    tz.TZDateTime scheduledDate = tz.TZDateTime.local(now.year, now.month, now.day, hour, minute);
    return scheduledDate;
  }

  tz.TZDateTime toTZDateTimeForDailyNotification() {
    final now = tz.TZDateTime.now(tz.local);
    tz.TZDateTime scheduledDate = tz.TZDateTime.local(now.year, now.month, now.day, hour, minute);
    if (scheduledDate.isAfter(now)) {
      if (scheduledDate.weekday == 5) {
        scheduledDate = scheduledDate.add(const Duration(days: 3));
      } else {
        scheduledDate = scheduledDate.add(const Duration(days: 1));
      }
    }
    return scheduledDate;
  }
}

extension DateTimeX on DateTime {
  static DateTime today() {
    final now = DateTime.now();
    return DateTime(now.year, now.month, now.day);
  }

  String toDisplayedDate() {
    return DateFormat('dd-MM-yyyy').format(this);
  }

  String toDisplayedTime() {
    return DateFormat('HH:mm:ss').format(this);
  }
}
