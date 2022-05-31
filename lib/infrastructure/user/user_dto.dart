import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/user/user.dart';

part 'user_dto.freezed.dart';

part 'user_dto.g.dart';

@freezed
class UserDTO with _$UserDTO {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory UserDTO({
    required String name,
    required Gender gender,
    required String phoneNumber,
    required String address,
    required String profilePicture,
    required DateTime startDate,
  }) = _UserDTO;

  factory UserDTO.fromDomain(User user) => UserDTO(
      name: user.name,
      gender: user.gender,
      phoneNumber: user.phoneNumber,
      address: user.address,
      profilePicture:
          const Base64Encoder().convert(user.profilePicture.toList()),
      startDate: user.startDate);

  factory UserDTO.fromJson(Map<String, dynamic> json) =>
      _$UserDTOFromJson(json);
}
