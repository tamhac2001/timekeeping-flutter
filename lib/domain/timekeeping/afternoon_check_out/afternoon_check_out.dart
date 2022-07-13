import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:timekeeping/domain/timekeeping/morning_check_in/morning_check_in.dart';

import '../../../utils/extensions.dart';
import '../../../presentation/core/constant/ui_constant.dart' as ui_constant;

part 'afternoon_check_out.freezed.dart';

@freezed
class AfternoonCheckOut with _$AfternoonCheckOut {
  static const Duration maxDurationForEarlyCheckOut = Duration(minutes: 30);
  static const Duration maxDurationForCheckOut = Duration(minutes: 30);

  const AfternoonCheckOut._();

  const factory AfternoonCheckOut.unknown(TimeOfDay scheduledTime) = _Unknown;

  const factory AfternoonCheckOut.onTime(TimeOfDay scheduledTime, DateTime checkOutTime) = _OnTime;

  const factory AfternoonCheckOut.early(TimeOfDay scheduledTime, DateTime checkOutTime) = _Early;

  const factory AfternoonCheckOut.forgot(TimeOfDay scheduledTime) = _Forgot;

  factory AfternoonCheckOut({
    required MorningCheckIn morningCheckIn,
    required DateTime? checkOutTime,
    required TimeOfDay scheduledAfternoonShiftEnd,
  }) {
    return morningCheckIn.maybeWhen(
        onTime: (_, morningCheckInTime) {
          if (checkOutTime == null) {
            if (DateTime.now()
                .isAfter(scheduledAfternoonShiftEnd.toCheckInDate(morningCheckInTime).add(maxDurationForCheckOut))) {
              return AfternoonCheckOut.forgot(scheduledAfternoonShiftEnd);
            }
            return AfternoonCheckOut.unknown(scheduledAfternoonShiftEnd);
          } else if (checkOutTime.isBefore(
              scheduledAfternoonShiftEnd.toCheckInDate(morningCheckInTime).subtract(maxDurationForEarlyCheckOut))) {
            return AfternoonCheckOut.early(scheduledAfternoonShiftEnd, checkOutTime);
          } else {
            return AfternoonCheckOut.onTime(scheduledAfternoonShiftEnd, checkOutTime);
          }
        },
        late: (_, morningCheckInTime) {
          final afternoonCheckOutScheduleAddMorningCheckInLateDuration = TimeOfDay.fromDateTime(
              scheduledAfternoonShiftEnd
                  .toCheckInDate(morningCheckInTime)
                  .add(morningCheckIn.morningCheckInLateDuration()!));
          if (checkOutTime == null) {
            if (DateTime.now().isAfter(afternoonCheckOutScheduleAddMorningCheckInLateDuration
                .toCheckInDate(morningCheckInTime)
                .add(maxDurationForCheckOut))) {
              return AfternoonCheckOut.forgot(afternoonCheckOutScheduleAddMorningCheckInLateDuration);
            }
            return AfternoonCheckOut.unknown(afternoonCheckOutScheduleAddMorningCheckInLateDuration);
          } else if (checkOutTime.isBefore(afternoonCheckOutScheduleAddMorningCheckInLateDuration
              .toCheckInDate(morningCheckInTime)
              .subtract(maxDurationForEarlyCheckOut))) {
            return AfternoonCheckOut.early(afternoonCheckOutScheduleAddMorningCheckInLateDuration, checkOutTime);
          } else {
            return AfternoonCheckOut.onTime(afternoonCheckOutScheduleAddMorningCheckInLateDuration, checkOutTime);
          }
        },
        orElse: () => AfternoonCheckOut.unknown(scheduledAfternoonShiftEnd));
  }

  String toCheckOutStatusString() {
    return when(
        unknown: (_) => 'Chưa điểm danh',
        onTime: (_, time) => 'Điểm danh: ${time.toDisplayedTime()}',
        early: (scheduledTime, checkOutTime) {
          final earlyDuration = scheduledTime.toCheckInDate(checkOutTime).difference(checkOutTime);
          if (earlyDuration.inMinutes > 60) {
            return 'Điểm danh sớm: ${checkOutTime.toDisplayedTime()} ';
          }
          return 'Điểm danh sớm: ${earlyDuration.inMinutes} phút';
        },
        forgot: (_) => 'Không điểm danh');
  }

  bool isUnknown() {
    return maybeWhen(unknown: (_) => true, orElse: () => false);
  }

  Icon? toIcon() {
    return when(
        unknown: (_) => null,
        onTime: (_, __) => ui_constant.onTimeIcon,
        early: (_, __) => ui_constant.earlyIcon,
        forgot: (_) => ui_constant.forgotIcon);
  }

  Color toColor() {
    return when(
        unknown: (_) => ui_constant.unknownColor,
        onTime: (_, __) => ui_constant.onTimeColor,
        early: (_, __) => ui_constant.earlyColor,
        forgot: (_) => ui_constant.forgotColor);
  }
}
