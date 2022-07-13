import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../utils/extensions.dart';
import '../../../presentation/core/constant/ui_constant.dart' as ui_constant;

part 'morning_check_in.freezed.dart';

@freezed
class MorningCheckIn with _$MorningCheckIn {
  static const Duration maxDurationForLateCheckIn = Duration(hours: 2);

  const MorningCheckIn._();

  const factory MorningCheckIn.unknown(TimeOfDay scheduledTime) = _Unknown;

  const factory MorningCheckIn.onTime(TimeOfDay scheduledTime, DateTime checkInTime) = _OnTime;

  const factory MorningCheckIn.late(TimeOfDay scheduledTime, DateTime checkInTime) = _Late;

  const factory MorningCheckIn.forgot(TimeOfDay scheduledTime) = _Forgot;

  factory MorningCheckIn(DateTime checkInDate, DateTime? checkInTime, TimeOfDay scheduledTime) {
    if (checkInTime == null) {
      if (DateTime.now().isAfter(scheduledTime.toCheckInDate(checkInDate).add(maxDurationForLateCheckIn))) {
        return MorningCheckIn.forgot(scheduledTime);
      } else {
        return MorningCheckIn.unknown(scheduledTime);
      }
    } else {
      if (checkInTime.isAfter(scheduledTime.toCheckInDate(checkInDate))) {
        return MorningCheckIn.late(scheduledTime, checkInTime);
      } else {
        return MorningCheckIn.onTime(scheduledTime, checkInTime);
      }
    }
  }

  String toCheckInStatusString() {
    return when(
        unknown: (_) => 'Chưa điểm danh',
        onTime: (_, time) => 'Điểm danh: ${time.toDisplayedTime()}',
        late: (scheduledTime, checkInTime) {
          final lateDuration = checkInTime.difference(scheduledTime.toCheckInDate(checkInTime));
          if (lateDuration.inMinutes > 60) {
            return 'Điểm danh trễ: ${checkInTime.toDisplayedTime()} ';
          }
          return 'Điểm danh trễ: ${lateDuration.inMinutes} phút';
        },
        forgot: (_) => 'Không điểm danh');
  }

  bool isUnknown() {
    return maybeWhen(unknown: (_) => true, orElse: () => false);
  }

  bool isForgot() {
    return maybeWhen(forgot: (_) => true, orElse: () => false);
  }

  TimeOfDay latestTimeForCheckIn() =>
      TimeOfDay.fromDateTime(scheduledTime.toTodayDateTime().add(maxDurationForLateCheckIn));

  Duration? morningCheckInLateDuration() {
    return maybeWhen(
        late: (scheduled, checkInTime) => checkInTime.difference(scheduled.toCheckInDate(checkInTime)),
        orElse: () => null);
  }

  Icon? toIcon() {
    return when(
        unknown: (_) => null,
        onTime: (_, __) => ui_constant.onTimeIcon,
        late: (_, __) => ui_constant.lateIcon,
        forgot: (_) => ui_constant.forgotIcon);
  }

  Color toColor() {
    return when(
        unknown: (_) => ui_constant.unknownColor,
        onTime: (_, __) => ui_constant.onTimeColor,
        late: (_, __) => ui_constant.lateColor,
        forgot: (_) => ui_constant.forgotColor);
  }
}
