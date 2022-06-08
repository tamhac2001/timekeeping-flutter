part of 'absent_form_bloc.dart';

@freezed
class AbsentFormEvent with _$AbsentFormEvent {
  const factory AbsentFormEvent.startDatePicked(DateTime? startDate) = StartDatePicked;
  const factory AbsentFormEvent.endDatePicked(DateTime? endDate) = EndDatePicked;
  const factory AbsentFormEvent.reasonChanged(String reason) = ReasonChanged;
  const factory AbsentFormEvent.noteChanged(String noteChanged) = NoteChanged;
  const factory AbsentFormEvent.formSubmitted() = FormSubmitted;
  const factory AbsentFormEvent.cancelled() = Cancelled;

}
