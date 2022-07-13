part of 'schedule_cubit.dart';

@freezed
class ScheduleState with _$ScheduleState {
  const factory ScheduleState({
    required Either<ScheduleFailure, Schedule>? scheduleFailureOrSchedule,
    required bool isLoading,
  }) = _ScheduleState;

  factory ScheduleState.initial() => const ScheduleState(scheduleFailureOrSchedule: null, isLoading: false);
}
