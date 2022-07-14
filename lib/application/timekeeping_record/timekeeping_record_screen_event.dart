part of 'timekeeping_record_screen_bloc.dart';

@freezed
class TimekeepingRecordScreenEvent with _$TimekeepingRecordScreenEvent {
  const factory TimekeepingRecordScreenEvent.toPreviousMonth() = _ToPreviousMonth;

  const factory TimekeepingRecordScreenEvent.toNextMonth() = _ToNextMonth;

  const factory TimekeepingRecordScreenEvent.getTimekeepingRecords() = _GetTimekeepingRecords;

  const factory TimekeepingRecordScreenEvent.resetState() = _ResetState;
}
