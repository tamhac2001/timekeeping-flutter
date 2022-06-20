import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:timekeeping/domain/schedule/schedule.dart';

import '../../infrastructure/timekeeping/dto/timekeeping_dto.dart';
import 'check_in_status.dart';
import 'check_out_status.dart';

part 'timekeeping.freezed.dart';

@freezed
class Timekeeping with _$Timekeeping {
  const factory Timekeeping({
    required DateTime date,
    required CheckInStatus morningShiftStart,
    required CheckOutStatus morningShiftEnd,
    required CheckInStatus afternoonShiftStart,
    required CheckOutStatus afternoonShiftEnd,
  }) = _Timekeeping;

  factory Timekeeping.fromDto(TimekeepingDto dto, Schedule schedule) {
    return Timekeeping(
        date: dto.date,
        morningShiftStart: CheckInStatus(dto.morningShiftStart?.toLocal(), schedule.morningShiftStart),
        morningShiftEnd: CheckOutStatus(dto.morningShiftEnd?.toLocal(), schedule.morningShiftEnd),
        afternoonShiftStart: CheckInStatus(dto.afternoonShiftStart?.toLocal(), schedule.afternoonShiftStart),
        afternoonShiftEnd: CheckOutStatus(dto.afternoonShiftEnd?.toLocal(), schedule.afternoonShiftEnd));
  }
}
