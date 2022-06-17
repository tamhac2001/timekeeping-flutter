import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:timekeeping/infrastructure/absent/reason_dto.dart';

part 'reason.freezed.dart';

part 'reason.g.dart';

@freezed
class Reason with _$Reason {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Reason.ill({
    @Default('bệnh') String value,
  }) = Ill;

  const factory Reason.personal({
    @Default('cá nhân') String value,
  }) = Personal;

  const factory Reason.others({
    @Default('khác') String value,
  }) = Others;

  factory Reason.fromJson(Map<String, dynamic> json) => _$ReasonFromJson(json);

  factory Reason.fromDto(ReasonDto dto) {
    if (dto.value == const Reason.ill().value) {
      return const Reason.ill();
    } else if (dto.value == const Reason.personal().value) {
      return const Reason.personal();
    } else {
      return const Reason.others();
    }
  }
}
