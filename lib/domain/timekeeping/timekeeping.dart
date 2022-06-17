import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../infrastructure/timekeeping/dto/timekeeping_dto.dart';

part 'timekeeping.freezed.dart';

@freezed
class Timekeeping with _$Timekeeping {
  const factory Timekeeping({required String qrCodeValue}) = _Timekeeping;

  factory Timekeeping.fromDto(TimekeepingDto dto) =>
      Timekeeping(qrCodeValue: dto.qrCodeValue);
}
