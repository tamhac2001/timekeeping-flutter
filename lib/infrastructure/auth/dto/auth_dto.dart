import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_dto.freezed.dart';

part 'auth_dto.g.dart';

@freezed
class AuthDTO with _$AuthDTO {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory AuthDTO({
    @JsonKey(includeIfNull: false) String? email,
    @JsonKey(includeIfNull: false) String? password,
    @JsonKey(includeIfNull: false) String? accessToken,
  }) = _AuthDTO;

  factory AuthDTO.fromJson(Map<String, dynamic> json) =>
      _$AuthDTOFromJson(json);
}
