import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../utils/extensions.dart';
import '../../../presentation/core/constant/ui_constant.dart' as ui_constant;

part 'afternoon_check_in.freezed.dart';

@freezed
class AfternoonCheckIn with _$AfternoonCheckIn {
  static const Duration maxDurationForLateCheckIn = Duration(minutes: 30);

  const AfternoonCheckIn._();

  const factory AfternoonCheckIn.unknown(TimeOfDay scheduledTime) = _Unknown;

  const factory AfternoonCheckIn.onTime(TimeOfDay scheduledTime, DateTime checkInTime) = _OnTime;

  const factory AfternoonCheckIn.late(TimeOfDay scheduledTime, DateTime checkInTime) = _Late;

  const factory AfternoonCheckIn.forgot(TimeOfDay scheduledTime) = _Forgot;

  factory AfternoonCheckIn(DateTime checkInDate, DateTime? checkInTime, TimeOfDay scheduledTime) {
    if (checkInTime == null) {
      if (DateTime.now().isAfter(scheduledTime.toCheckInDate(checkInDate).add(maxDurationForLateCheckIn))) {
        return AfternoonCheckIn.forgot(scheduledTime);
      } else {
        return AfternoonCheckIn.unknown(scheduledTime);
      }
    } else {
      if (checkInTime.isAfter(scheduledTime.toCheckInDate(checkInDate))) {
        return AfternoonCheckIn.late(scheduledTime, checkInTime);
      } else {
        return AfternoonCheckIn.onTime(scheduledTime, checkInTime);
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
