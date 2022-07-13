part of 'absent_form_bloc.dart';

@freezed
class AbsentFormEvent with _$AbsentFormEvent {
  const factory AbsentFormEvent.getAbsentFormList() = _GetAbsentFormList;

  const factory AbsentFormEvent.startDatePicked(DateTime? startDate) = _StartDatePicked;

  const factory AbsentFormEvent.endDatePicked(DateTime? endDate) = _EndDatePicked;

  const factory AbsentFormEvent.reasonChanged(Reason reason) = _ReasonChanged;

  const factory AbsentFormEvent.noteChanged(String noteChanged) = _NoteChanged;

  const factory AbsentFormEvent.formSubmitted() = _FormSubmitted;

  const factory AbsentFormEvent.cancelled() = _Cancelled;
}
