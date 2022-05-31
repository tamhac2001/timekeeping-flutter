part of 'assign_work_schedule_form_bloc.dart';

@freezed
class AssignWorkScheduleFormEvent with _$AssignWorkScheduleFormEvent {
  const factory AssignWorkScheduleFormEvent.workScheduleRequested(String accessToken) = WorkScheduleRequested;
  const factory AssignWorkScheduleFormEvent.morningShiftStartTimeChanged(TimeOfDay time) = MorningShiftStartTimeChanged;
  const factory AssignWorkScheduleFormEvent.morningShiftEndTimeChanged(TimeOfDay time) = MorningShiftEndTimeChanged;
  const factory AssignWorkScheduleFormEvent.afternoonShiftStartTimeChanged(TimeOfDay time) = AfternoonShiftStartTimeChanged;
  const factory AssignWorkScheduleFormEvent.formSubmitted() = FormSubmitted;

}
