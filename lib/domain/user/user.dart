import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../infrastructure/user/user_dto.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const factory User({
    required String name,
    required Gender gender,
    required String phoneNumber,
    required String address,
    required Uint8List profilePicture,
    required DateTime startDate,
  }) = _User;

  factory User.fromUserDTO(UserDTO userDTO) => User(
      name: userDTO.name,
      gender: userDTO.gender,
      phoneNumber: userDTO.phoneNumber,
      address: userDTO.address,
      profilePicture: const Base64Decoder().convert(userDTO.profilePicture),
      startDate: userDTO.startDate);
}

enum Gender {
  male,
  female,
  other,
}
