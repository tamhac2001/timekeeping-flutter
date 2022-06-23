part of 'timekeeping_record_screen_bloc.dart';

@freezed
class TimekeepingRecordScreenState with _$TimekeepingRecordScreenState {
  const factory TimekeepingRecordScreenState({
    required DateTime thisMonth,
    required DateTime employeeStartDate,
    required Schedule schedule,
    required DateTime timePicked,
    required Either<TimekeepingFailure, List<Timekeeping>>? failureOrTimekeepingListByMonth,
    required List<Timekeeping> displayedTimekeepingRecords,
    required bool isLoading,
  }) = _TimekeepingRecordScreenState;

  factory TimekeepingRecordScreenState.initial() {
    final now = DateTime.now();
    return TimekeepingRecordScreenState(
        thisMonth: DateTime.utc(now.year, now.month),
        schedule: Schedule.empty(),
        employeeStartDate: DateTime(now.year),
        timePicked: DateTime.utc(now.year, now.month),
        failureOrTimekeepingListByMonth: null,
        displayedTimekeepingRecords: [],
        isLoading: false);
  }
}
