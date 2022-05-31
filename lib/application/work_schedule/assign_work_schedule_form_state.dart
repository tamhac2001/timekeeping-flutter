part of 'assign_work_schedule_form_bloc.dart';

@freezed
class AssignWorkScheduleFormState with _$AssignWorkScheduleFormState {
  const factory AssignWorkScheduleFormState({
    required TimeOfDay morningShiftStartTime,
    required TimeOfDay morningShiftEndTime,
    required TimeOfDay afternoonShiftStartTime,
    required TimeOfDay afternoonShiftEndTime,
    required bool isSubmitting,
    required bool alreadyHasWorkSchedule,
    bool? successOrFail,
  }) = _AssignWorkScheduleFormState;

  factory AssignWorkScheduleFormState.initial() =>
      const AssignWorkScheduleFormState(
        morningShiftStartTime: TimeOfDay(hour: 8, minute: 0),
        morningShiftEndTime: TimeOfDay(hour: 12, minute: 0),
        afternoonShiftStartTime: TimeOfDay(hour: 14, minute: 0),
        afternoonShiftEndTime: TimeOfDay(hour: 18, minute: 0),
        isSubmitting: false,
        alreadyHasWorkSchedule: false,
      );
}
