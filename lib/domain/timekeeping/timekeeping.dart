import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../presentation/core/constant/ui_constant.dart' as ui_constant;
import '../../infrastructure/timekeeping/dto/timekeeping_dto.dart';
import '../schedule/schedule.dart';
import 'afternoon_check_in/afternoon_check_in.dart';
import 'afternoon_check_out/afternoon_check_out.dart';
import 'morning_check_in/morning_check_in.dart';
import 'morning_check_out/morning_check_out.dart';

part 'timekeeping.freezed.dart';

@freezed
class Timekeeping with _$Timekeeping {
  const Timekeeping._();

  const factory Timekeeping({
    required DateTime date,
    required MorningCheckIn morningCheckIn,
    required MorningCheckOut morningCheckOut,
    required AfternoonCheckIn afternoonCheckIn,
    required AfternoonCheckOut afternoonCheckOut,
    bool? hasApprovedAbsentForm,
  }) = _Timekeeping;

  factory Timekeeping.fromDto(TimekeepingDto dto, Schedule schedule) {
    debugPrint(dto.toString());
    final morningCheckIn =
        MorningCheckIn(dto.date.toLocal(), dto.morningShiftStart?.toLocal(), schedule.morningShiftStart);
    if (morningCheckIn.isForgot()) {
      return Timekeeping.absent(schedule: schedule, dateTime: dto.date.toLocal());
    }
    return Timekeeping(
        date: dto.date.toLocal(),
        morningCheckIn: morningCheckIn,
        morningCheckOut: MorningCheckOut(dto.date.toLocal(), dto.morningShiftEnd?.toLocal(), schedule.morningShiftEnd),
        afternoonCheckIn:
            AfternoonCheckIn(dto.date.toLocal(), dto.afternoonShiftStart?.toLocal(), schedule.afternoonShiftStart),
        afternoonCheckOut: AfternoonCheckOut(
            morningCheckIn: morningCheckIn,
            checkOutTime: dto.afternoonShiftEnd?.toLocal(),
            scheduledAfternoonShiftEnd: schedule.afternoonShiftEnd));
  }

  factory Timekeeping.absent({required Schedule schedule, required DateTime dateTime, bool? isApproved}) {
    return Timekeeping(
        date: dateTime,
        morningCheckIn: MorningCheckIn.forgot(schedule.morningShiftStart),
        morningCheckOut: MorningCheckOut.forgot(schedule.morningShiftEnd),
        afternoonCheckIn: AfternoonCheckIn.forgot(schedule.afternoonShiftStart),
        afternoonCheckOut: AfternoonCheckOut.forgot(schedule.afternoonShiftEnd),
        hasApprovedAbsentForm: isApproved);
  }

  bool isAbsent() {
    return morningCheckIn.isForgot();
  }

  bool isAbsentWithApprovedAbsentForm() {
    if (hasApprovedAbsentForm != null && hasApprovedAbsentForm!) {
      return true;
    }
    return false;
  }

  bool isFinish() {
    if (isAbsent()) {
      return true;
    }
    if (morningCheckIn.maybeWhen(unknown: (_) => true, orElse: () => false) ||
        morningCheckOut.maybeWhen(unknown: (_) => true, orElse: () => false) ||
        afternoonCheckIn.maybeWhen(unknown: (_) => true, orElse: () => false) ||
        afternoonCheckOut.maybeWhen(unknown: (_) => true, orElse: () => false)) {
      return false;
    }
    return true;
  }

  String toWholeDayStatusString() {
    int forgotCounter = 0;
    int lateOrEarlyCounter = 0;
    if (hasApprovedAbsentForm != null) {
      if (hasApprovedAbsentForm!) {
        return 'Vắng có phép (Chấp thuận)';
      } else {
        return 'Vắng có phép (Chưa chấp thuận)';
      }
    } else if (isAbsent()) {
      return 'Vắng không phép';
    } else if (morningCheckIn.maybeWhen(onTime: (_, __) => true, orElse: () => false) &&
        morningCheckOut.maybeWhen(onTime: (_, __) => true, orElse: () => false) &&
        afternoonCheckIn.maybeWhen(onTime: (_, __) => true, orElse: () => false) &&
        afternoonCheckOut.maybeWhen(onTime: (_, __) => true, orElse: () => false)) {
      return 'Điểm danh đầy đủ';
    } else if (morningCheckIn.maybeWhen(
            forgot: (_) {
              forgotCounter++;
              return true;
            },
            orElse: () => false) |
        morningCheckOut.maybeWhen(
            forgot: (_) {
              forgotCounter++;
              return true;
            },
            orElse: () => false) |
        afternoonCheckIn.maybeWhen(
            forgot: (_) {
              forgotCounter++;
              return true;
            },
            orElse: () => false) |
        afternoonCheckOut.maybeWhen(
            forgot: (_) {
              forgotCounter++;
              return true;
            },
            orElse: () => false)) {
      return 'Không điểm danh $forgotCounter lần';
    } else if (morningCheckIn.maybeWhen(
            late: (_, __) {
              lateOrEarlyCounter++;
              return true;
            },
            orElse: () => false) |
        morningCheckOut.maybeWhen(
            early: (_, __) {
              lateOrEarlyCounter++;
              return true;
            },
            orElse: () => false) |
        afternoonCheckIn.maybeWhen(
            late: (_, __) {
              lateOrEarlyCounter++;
              return true;
            },
            orElse: () => false) |
        afternoonCheckOut.maybeWhen(
            early: (_, __) {
              lateOrEarlyCounter++;
              return true;
            },
            orElse: () => false)) {
      return 'Điểm danh trễ/sớm $lateOrEarlyCounter lần';
    } else {
      return 'Chưa hoàn thành';
    }
  }

  Color toColor() {
    if (hasApprovedAbsentForm != null) {
      if (hasApprovedAbsentForm!) {
        return ui_constant.onTimeColor;
      } else {
        return ui_constant.forgotColor;
      }
    } else if (morningCheckIn.maybeWhen(onTime: (_, __) => true, orElse: () => false) &&
        morningCheckOut.maybeWhen(onTime: (_, __) => true, orElse: () => false) &&
        afternoonCheckIn.maybeWhen(onTime: (_, __) => true, orElse: () => false) &&
        afternoonCheckOut.maybeWhen(onTime: (_, __) => true, orElse: () => false)) {
      return ui_constant.onTimeColor;
    } else if (morningCheckIn.maybeWhen(forgot: (_) => true, orElse: () => false) ||
        morningCheckOut.maybeWhen(forgot: (_) => true, orElse: () => false) ||
        afternoonCheckIn.maybeWhen(forgot: (_) => true, orElse: () => false) ||
        afternoonCheckOut.maybeWhen(forgot: (_) => true, orElse: () => false)) {
      return ui_constant.forgotColor;
    } else if (morningCheckIn.maybeWhen(late: (_, __) => true, orElse: () => false) ||
        morningCheckOut.maybeWhen(early: (_, __) => true, orElse: () => false) ||
        afternoonCheckIn.maybeWhen(late: (_, __) => true, orElse: () => false) ||
        afternoonCheckOut.maybeWhen(early: (_, __) => true, orElse: () => false)) {
      return ui_constant.lateColor;
    } else {
      return Colors.grey;
    }
  }

  Icon? toWholeDayStatusIcon() {
    if (hasApprovedAbsentForm != null) {
      if (hasApprovedAbsentForm!) {
        return ui_constant.onTimeIcon;
      } else {
        return ui_constant.forgotIcon;
      }
    } else if (morningCheckIn.maybeWhen(onTime: (_, __) => true, orElse: () => false) &&
        morningCheckOut.maybeWhen(onTime: (_, __) => true, orElse: () => false) &&
        afternoonCheckIn.maybeWhen(onTime: (_, __) => true, orElse: () => false) &&
        afternoonCheckOut.maybeWhen(onTime: (_, __) => true, orElse: () => false)) {
      return ui_constant.onTimeIcon;
    } else if (morningCheckIn.maybeWhen(forgot: (_) => true, orElse: () => false) ||
        morningCheckOut.maybeWhen(forgot: (_) => true, orElse: () => false) ||
        afternoonCheckIn.maybeWhen(forgot: (_) => true, orElse: () => false) ||
        afternoonCheckOut.maybeWhen(forgot: (_) => true, orElse: () => false)) {
      return ui_constant.forgotIcon;
    } else if (morningCheckIn.maybeWhen(late: (_, __) => true, orElse: () => false) ||
        morningCheckOut.maybeWhen(early: (_, __) => true, orElse: () => false) ||
        afternoonCheckIn.maybeWhen(late: (_, __) => true, orElse: () => false) ||
        afternoonCheckOut.maybeWhen(early: (_, __) => true, orElse: () => false)) {
      return ui_constant.lateIcon;
    } else {
      return null;
    }
  }
}
