import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:timekeeping/domain/absent/reason.dart';
import 'package:timekeeping/infrastructure/absent/dto/absent_form_dto.dart';

part 'absent_form.freezed.dart';

@freezed
class AbsentForm with _$AbsentForm {
  factory AbsentForm({
    required DateTime startDate,
    required DateTime endDate,
    required Reason reason,
    required String note,
  }) = _AbsentForm;

  factory AbsentForm.fromDto(AbsentFormDto absentFormDto) => AbsentForm(
      startDate: absentFormDto.startDate,
      endDate: absentFormDto.endDate,
      reason: Reason.fromDto(absentFormDto.reasonDto),
      note: absentFormDto.note);
}
