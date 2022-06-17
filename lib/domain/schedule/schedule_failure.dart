import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule_failure.freezed.dart';

@freezed
class ScheduleFailure with _$ScheduleFailure {
  const factory ScheduleFailure.serverError() = ServerError;

  const factory ScheduleFailure.noScheduleStored() = NoScheduleStored;
}
