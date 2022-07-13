part of 'checkin_checkout_screen_bloc.dart';

@freezed
class CheckinCheckoutScreenState with _$CheckinCheckoutScreenState {
  const factory CheckinCheckoutScreenState({
    required DateTime currentTime,
    /* only get 3 type of value:
    - null: unknown or error,
    - 00:00: today is full, no need to check anymore
    - hh:mm: next check time
     */
    required TimeOfDay? nextCheckTime,
    required Either<TimekeepingFailure, Timekeeping>? timekeepingFailureOrTimekeeping,
    required bool isLoading,
    required bool isChecking,
    required bool? isDayOff,
  }) = _CheckinCheckoutScreenState;

  factory CheckinCheckoutScreenState.empty() => CheckinCheckoutScreenState(
        currentTime: DateTime.now(),
        nextCheckTime: null,
        timekeepingFailureOrTimekeeping: null,
        isLoading: false,
        isChecking: false,
        isDayOff: null,
      );
}
