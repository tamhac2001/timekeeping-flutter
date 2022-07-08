import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reason.freezed.dart';
part 'reason.g.dart';

@freezed
class Reason with _$Reason {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory Reason({
    @JsonKey(name: 'reason') required String value,
  }) = _Reason;

  factory Reason.ill() => const Reason(value: 'bệnh');

  factory Reason.personal() => const Reason(value: 'cá nhân');

  factory Reason.others() => const Reason(value: 'khác');

  factory Reason.fromJson(Map<String, dynamic> json) => _$ReasonFromJson(json);
}
