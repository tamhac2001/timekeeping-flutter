part of 'assign_schedule_form_bloc.dart';

@freezed
class AssignScheduleFormState with _$AssignWorkScheduleFormState {
  const factory AssignScheduleFormState({
    required Schedule schedule,
    required bool isSubmitting,
    required bool isLoading,
    required Either<ScheduleFailure, Unit>? scheduleFailureOrSuccess,
  }) = _AssignWorkScheduleFormState;

  factory AssignScheduleFormState.initial() => const AssignScheduleFormState(
        schedule: Schedule(
          morningShiftStart: TimeOfDay(hour: 8, minute: 0),
          morningShiftEnd: TimeOfDay(hour: 12, minute: 0),
          afternoonShiftStart: TimeOfDay(hour: 14, minute: 0),
          afternoonShiftEnd: TimeOfDay(hour: 18, minute: 0),
        ),
        isSubmitting: false,
        isLoading: false,
        scheduleFailureOrSuccess: null,
      );
}
