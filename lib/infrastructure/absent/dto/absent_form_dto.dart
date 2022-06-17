import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:timekeeping/domain/absent/absent_form.dart';
import 'package:timekeeping/infrastructure/absent/reason_dto.dart';

part 'absent_form_dto.freezed.dart';

@freezed
class AbsentFormDto with _$AbsentFormDto {
  const AbsentFormDto._();

  const factory AbsentFormDto({
    required DateTime startDate,
    required DateTime endDate,
    required ReasonDto reasonDto,
    required String note,
  }) = _AbsentFormDto;

  factory AbsentFormDto.fromDomain(AbsentForm absentForm) => AbsentFormDto(
      startDate: absentForm.startDate,
      endDate: absentForm.endDate,
      reasonDto: ReasonDto.fromDomain(absentForm.reason),
      note: absentForm.note);

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      // + Z because difference between local and utc
      'start_date': '${startDate.toIso8601String()}Z',
      'end_date': '${endDate.toIso8601String()}Z',
      'reason': reasonDto.value,
      'note': note,
    };
  }
}
