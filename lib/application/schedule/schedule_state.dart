part of 'schedule_bloc.dart';

@freezed
class ScheduleState with _$ScheduleState {
  const factory ScheduleState({
    required Schedule schedule,
  }) = _ScheduleState;

  factory ScheduleState.initial() => ScheduleState(schedule: Schedule.empty());
}
