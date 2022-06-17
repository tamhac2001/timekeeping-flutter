import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'absent_failure.freezed.dart';

@freezed
class AbsentFailure with _$AbsentFailure {
  const factory AbsentFailure.serverError() = ServerError;
  const factory AbsentFailure.unAuthenticated() = UnAuthenticated;
}
