import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../infrastructure/absent/dto/absent_form_dto.dart';
import 'reason/reason.dart';
import 'status/status.dart';

part 'absent_form.freezed.dart';

@freezed
class AbsentForm with _$AbsentForm {
  factory AbsentForm({
    required DateTime startDate,
    required DateTime endDate,
    required Reason reason,
    required String note,
    required Status? status,
  }) = _AbsentForm;

  factory AbsentForm.fromDto(AbsentFormDto absentFormDto) => AbsentForm(
      startDate: absentFormDto.startDate.toLocal(),
      endDate: absentFormDto.endDate.toLocal(),
      reason: Reason(value: absentFormDto.reason),
      note: absentFormDto.note,
      status: absentFormDto.status != null ? Status.fromStatusCode(code: absentFormDto.status!) : null);

  factory AbsentForm.initial() {
    final now = DateTime.now();
    final tomorrow = DateTime(now.year, now.month, now.day).add(const Duration(days: 1));
    return AbsentForm(
      startDate: tomorrow,
      endDate: tomorrow,
      reason: const Reason.ill(),
      note: '',
      status: null,
    );
  }
}
