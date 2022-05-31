part of 'timekeeping_record_screen_bloc.dart';

@freezed
class TimekeepingRecordScreenEvent with _$TimekeepingRecordScreenEvent {
  const factory TimekeepingRecordScreenEvent.toPreviousMonth() = ToPreviousMonth;
  const factory TimekeepingRecordScreenEvent.toNextMonth() = ToNextMonth;
}
