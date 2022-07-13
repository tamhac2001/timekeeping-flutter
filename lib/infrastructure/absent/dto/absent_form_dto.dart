import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:timekeeping/domain/absent/absent_form.dart';
import 'package:timekeeping/domain/absent/reason/reason.dart';

part 'absent_form_dto.freezed.dart';

part 'absent_form_dto.g.dart';

@freezed
class AbsentFormDto with _$AbsentFormDto {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory AbsentFormDto({
    required DateTime startDate,
    required DateTime endDate,
    required String reason,
    required String note,
    @JsonKey(includeIfNull: false) required int? status,
  }) = _AbsentFormDto;

  factory AbsentFormDto.fromDomain(AbsentForm absentForm) => AbsentFormDto(
      startDate: absentForm.startDate,
      endDate: absentForm.endDate,
      reason: absentForm.reason.value,
      note: absentForm.note,
      status: absentForm.status?.toStatusCode());

  factory AbsentFormDto.fromJson(Map<String, dynamic> json) => _$AbsentFormDtoFromJson(json);
}
