import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:timekeeping/infrastructure/auth/dto/auth_dto.dart';

part 'auth.freezed.dart';

@freezed
class Auth with _$Auth {
  const factory Auth({
    required String accessToken,
    required DateTime expireDate,
  }) = _Auth;
}
