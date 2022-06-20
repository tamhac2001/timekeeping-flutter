part of 'checkin_checkout_screen_bloc.dart';

@freezed
class CheckinCheckoutScreenState with _$CheckinCheckoutScreenState {
  const factory CheckinCheckoutScreenState({
    required DateTime currentTime,
    required TimeOfDay nextCheckTime,
    required Schedule schedule,
    required Either<TimekeepingFailure, Timekeeping>? failureOrTimekeeping,
    required bool isLoading,
    required bool isChecking,
  }) = _CheckinCheckoutScreenState;

  factory CheckinCheckoutScreenState.empty() => CheckinCheckoutScreenState(
        currentTime: DateTime.now(),
        nextCheckTime: const TimeOfDay(hour: 0, minute: 0),
        schedule: Schedule.empty(),
        failureOrTimekeeping: null,
        isLoading: false,
        isChecking: false,
      );
}
