import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/schedule/schedule.dart';
import '../../../utils/extensions.dart';

part 'schedule_dto.freezed.dart';

part 'schedule_dto.g.dart';

@freezed
class ScheduleDto with _$ScheduleDto {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory ScheduleDto({
    required DateTime morningShiftStart,
    required DateTime morningShiftEnd,
    required DateTime afternoonShiftStart,
    required DateTime afternoonShiftEnd,
  }) = _ScheduleDto;

  factory ScheduleDto.fromJson(Map<String, dynamic> json) => _$ScheduleDtoFromJson(json);

  factory ScheduleDto.fromDomain(Schedule schedule, DateTime employeeStartDate) {
    return ScheduleDto(
        morningShiftStart: schedule.morningShiftStart.toDateTimeWithTime(employeeStartDate).toUtc(),
        morningShiftEnd: schedule.morningShiftEnd.toDateTimeWithTime(employeeStartDate).toUtc(),
        afternoonShiftStart: schedule.afternoonShiftStart.toDateTimeWithTime(employeeStartDate).toUtc(),
        afternoonShiftEnd: schedule.afternoonShiftEnd.toDateTimeWithTime(employeeStartDate).toUtc());
  }
}
