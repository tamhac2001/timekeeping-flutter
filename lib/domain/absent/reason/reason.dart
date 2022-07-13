import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reason.freezed.dart';

@freezed
class Reason with _$Reason {
  factory Reason({
    required String value,
  }) {
    switch (value) {
      case 'bệnh':
        return const Reason.ill();
      case 'cá nhân':
        return const Reason.personal();
      default:
        return const Reason.others();
    }
  }

  const factory Reason.ill({
    @Default('bệnh') String value,
  }) = _Ill;

  const factory Reason.personal({
    @Default('cá nhân') String value,
  }) = _Personal;

  const factory Reason.others({
    @Default('khác') String value,
  }) = _Others;
}
