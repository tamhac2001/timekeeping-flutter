// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ScheduleDto _$$_ScheduleDtoFromJson(Map<String, dynamic> json) =>
    _$_ScheduleDto(
      morningShiftStart: DateTime.parse(json['morning_shift_start'] as String),
      morningShiftEnd: DateTime.parse(json['morning_shift_end'] as String),
      afternoonShiftStart:
          DateTime.parse(json['afternoon_shift_start'] as String),
      afternoonShiftEnd: DateTime.parse(json['afternoon_shift_end'] as String),
    );

Map<String, dynamic> _$$_ScheduleDtoToJson(_$_ScheduleDto instance) =>
    <String, dynamic>{
      'morning_shift_start': instance.morningShiftStart.toIso8601String(),
      'morning_shift_end': instance.morningShiftEnd.toIso8601String(),
      'afternoon_shift_start': instance.afternoonShiftStart.toIso8601String(),
      'afternoon_shift_end': instance.afternoonShiftEnd.toIso8601String(),
    };
