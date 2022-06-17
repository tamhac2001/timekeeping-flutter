import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:timekeeping/application/utils/extensions.dart';
import 'package:timekeeping/domain/schedule/schedule.dart';

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

  factory ScheduleDto.fromJson(Map<String, dynamic> json) =>
      _$ScheduleDtoFromJson(json);

  factory ScheduleDto.fromDomain(Schedule schedule) => ScheduleDto(
      morningShiftStart: schedule.morningShiftStart.toDateTime().toUtc(),
      morningShiftEnd: schedule.morningShiftEnd.toDateTime().toUtc(),
      afternoonShiftStart: schedule.afternoonShiftStart.toDateTime().toUtc(),
      afternoonShiftEnd: schedule.afternoonShiftEnd.toDateTime().toUtc());
}
