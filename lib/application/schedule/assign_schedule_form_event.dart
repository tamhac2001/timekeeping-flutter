part of 'assign_schedule_form_bloc.dart';

@freezed
class AssignScheduleFormEvent with _$AssignScheduleFormEvent {
  const factory AssignScheduleFormEvent.morningShiftStartTimeChanged(TimeOfDay time) = _MorningShiftStartTimeChanged;

  const factory AssignScheduleFormEvent.morningShiftEndTimeChanged(TimeOfDay time) = _MorningShiftEndTimeChanged;

  const factory AssignScheduleFormEvent.afternoonShiftStartTimeChanged(TimeOfDay time) =
      _AfternoonShiftStartTimeChanged;

  const factory AssignScheduleFormEvent.formSubmitted() = _FormSubmitted;

  const factory AssignScheduleFormEvent.resetState() = _ResetState;
}
