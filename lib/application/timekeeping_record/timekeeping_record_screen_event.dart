part of 'timekeeping_record_screen_bloc.dart';

@freezed
class TimekeepingRecordScreenEvent with _$TimekeepingRecordScreenEvent {
  const factory TimekeepingRecordScreenEvent.toPreviousMonth() = _ToPreviousMonth;
  const factory TimekeepingRecordScreenEvent.toNextMonth() = _ToNextMonth;
  const factory TimekeepingRecordScreenEvent.getEmployeeStartDate() = _GetEmployeeStartDate;
  const factory TimekeepingRecordScreenEvent.getSchedule() = _GetSchedule;
  const factory TimekeepingRecordScreenEvent.getTimekeepingRecords() = _GetTimekeepingRecords;
}
