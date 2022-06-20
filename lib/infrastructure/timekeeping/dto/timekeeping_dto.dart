import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:timekeeping/domain/timekeeping/timekeeping.dart';

part 'timekeeping_dto.freezed.dart';

part 'timekeeping_dto.g.dart';

@freezed
class TimekeepingDto with _$TimekeepingDto {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory TimekeepingDto._({
    required DateTime date,
    @JsonKey(nullable: true, includeIfNull: false) required DateTime? morningShiftStart,
    @JsonKey(nullable: true, includeIfNull: false) required DateTime? morningShiftEnd,
    @JsonKey(nullable: true, includeIfNull: false) required DateTime? afternoonShiftStart,
    @JsonKey(nullable: true, includeIfNull: false) required DateTime? afternoonShiftEnd,
  }) = _TimekeepingDto;

  factory TimekeepingDto.fromJson(Map<String, dynamic> json) => _$TimekeepingDtoFromJson(json);
}
