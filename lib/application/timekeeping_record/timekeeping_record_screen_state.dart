part of 'timekeeping_record_screen_bloc.dart';

@freezed
class TimekeepingRecordScreenState with _$TimekeepingRecordScreenState {
  const factory TimekeepingRecordScreenState({
    required DateTime currentDisplayedTime,
  }) = _TimekeepingRecordScreenState;

  factory TimekeepingRecordScreenState.initial() =>
      TimekeepingRecordScreenState(currentDisplayedTime: DateTime.now());
}
