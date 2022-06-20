part of 'assign_schedule_form_bloc.dart';

@freezed
class AssignScheduleFormEvent with _$AssignScheduleFormEvent {
  const factory AssignScheduleFormEvent.workScheduleRequested() = WorkScheduleRequested;
  const factory AssignScheduleFormEvent.morningShiftStartTimeChanged(TimeOfDay time) = MorningShiftStartTimeChanged;
  const factory AssignScheduleFormEvent.morningShiftEndTimeChanged(TimeOfDay time) = MorningShiftEndTimeChanged;
  const factory AssignScheduleFormEvent.afternoonShiftStartTimeChanged(TimeOfDay time) = AfternoonShiftStartTimeChanged;
  const factory AssignScheduleFormEvent.formSubmitted() = FormSubmitted;
}
