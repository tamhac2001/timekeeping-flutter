// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timekeeping_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TimekeepingDto _$$_TimekeepingDtoFromJson(Map<String, dynamic> json) =>
    _$_TimekeepingDto(
      date: DateTime.parse(json['date'] as String),
      morningShiftStart: json['morning_shift_start'] == null
          ? null
          : DateTime.parse(json['morning_shift_start'] as String),
      morningShiftEnd: json['morning_shift_end'] == null
          ? null
          : DateTime.parse(json['morning_shift_end'] as String),
      afternoonShiftStart: json['afternoon_shift_start'] == null
          ? null
          : DateTime.parse(json['afternoon_shift_start'] as String),
      afternoonShiftEnd: json['afternoon_shift_end'] == null
          ? null
          : DateTime.parse(json['afternoon_shift_end'] as String),
    );

Map<String, dynamic> _$$_TimekeepingDtoToJson(_$_TimekeepingDto instance) {
  final val = <String, dynamic>{
    'date': instance.date.toIso8601String(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'morning_shift_start', instance.morningShiftStart?.toIso8601String());
  writeNotNull(
      'morning_shift_end', instance.morningShiftEnd?.toIso8601String());
  writeNotNull(
      'afternoon_shift_start', instance.afternoonShiftStart?.toIso8601String());
  writeNotNull(
      'afternoon_shift_end', instance.afternoonShiftEnd?.toIso8601String());
  return val;
}
