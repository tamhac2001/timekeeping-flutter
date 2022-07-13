import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../presentation/core/constant/ui_constant.dart' as ui_constant;

import '../../../utils/extensions.dart';

part 'morning_check_out.freezed.dart';

@freezed
class MorningCheckOut with _$MorningCheckOut {
  static const Duration maxDurationForEarlyCheckOut = Duration(minutes: 30);
  static const Duration maxDurationForCheckOut = Duration(minutes: 30);

  const MorningCheckOut._();

  const factory MorningCheckOut.unknown(TimeOfDay scheduledTime) = _Unknown;

  const factory MorningCheckOut.onTime(TimeOfDay scheduledTime, DateTime checkOutTime) = _OnTime;

  const factory MorningCheckOut.early(TimeOfDay scheduledTime, DateTime checkOutTime) = _Early;

  const factory MorningCheckOut.forgot(TimeOfDay scheduledTime) = _Forgot;

  factory MorningCheckOut(DateTime checkInDate, DateTime? checkOutTime, TimeOfDay scheduledTime) {
    if (checkOutTime == null) {
      if (DateTime.now().isAfter(scheduledTime.toCheckInDate(checkInDate).add(maxDurationForCheckOut))) {
        return MorningCheckOut.forgot(scheduledTime);
      } else {
        return MorningCheckOut.unknown(scheduledTime);
      }
    } else {
      if (checkOutTime.isBefore(scheduledTime.toCheckInDate(checkInDate).subtract(maxDurationForEarlyCheckOut))) {
        return MorningCheckOut.early(scheduledTime, checkOutTime);
      } else {
        return MorningCheckOut.onTime(scheduledTime, checkOutTime);
      }
    }
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
