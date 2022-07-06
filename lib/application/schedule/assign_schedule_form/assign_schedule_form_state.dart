part of 'assign_schedule_form_bloc.dart';

@freezed
class AssignScheduleFormState with _$AssignScheduleFormState {
  const factory AssignScheduleFormState({
    required TimeOfDay morningShiftStart,
    required TimeOfDay morningShiftEnd,
    required TimeOfDay afternoonShiftStart,
    required TimeOfDay afternoonShiftEnd,
    required bool isSubmitting,
    required bool isLoading,
    required Either<ScheduleFailure, Schedule>? scheduleFailureOrSchedule,
  }) = _AssignScheduleFormState;

  factory AssignScheduleFormState.initial() => const AssignScheduleFormState(
        morningShiftStart: TimeOfDay(hour: 8, minute: 0),
        morningShiftEnd: TimeOfDay(hour: 12, minute: 0),
        afternoonShiftStart: TimeOfDay(hour: 14, minute: 0),
        afternoonShiftEnd: TimeOfDay(hour: 18, minute: 0),
        isSubmitting: false,
        isLoading: false,
        scheduleFailureOrSchedule: null,
      );
}
