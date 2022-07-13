// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'absent_form_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AbsentFormDto _$$_AbsentFormDtoFromJson(Map<String, dynamic> json) =>
    _$_AbsentFormDto(
      startDate: DateTime.parse(json['start_date'] as String),
      endDate: DateTime.parse(json['end_date'] as String),
      reason: json['reason'] as String,
      note: json['note'] as String,
      status: json['status'] as int?,
    );

Map<String, dynamic> _$$_AbsentFormDtoToJson(_$_AbsentFormDto instance) {
  final val = <String, dynamic>{
    'start_date': instance.startDate.toIso8601String(),
    'end_date': instance.endDate.toIso8601String(),
    'reason': instance.reason,
    'note': instance.note,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('status', instance.status);
  return val;
}
