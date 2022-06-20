import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'qr_code_dto.freezed.dart';
part 'qr_code_dto.g.dart';

@freezed
class QrCodeDto with _$QrCodeDto {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory QrCodeDto({
    required String qrCodeValue,
  }) = _QrCodeDto;

  factory QrCodeDto.fromJson(Map<String, dynamic> json) => _$QrCodeDtoFromJson(json);
}
