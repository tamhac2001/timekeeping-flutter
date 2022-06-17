import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_changed_failure.freezed.dart';

@freezed
class ProfileChangedFailure with _$ProfileChangedFailure {
  const factory ProfileChangedFailure.serverError() = ServerError;
}
