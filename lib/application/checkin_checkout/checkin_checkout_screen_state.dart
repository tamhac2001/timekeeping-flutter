part of 'checkin_checkout_screen_bloc.dart';

@freezed
class CheckinCheckoutScreenState with _$CheckinCheckoutScreenState {
  const factory CheckinCheckoutScreenState({
    required DateTime currentTime,
    required TimeOfDay morningShiftStart,
    required TimeOfDay morningShiftEnd,
    required TimeOfDay afternoonShiftStart,
    required TimeOfDay afternoonShiftEnd,
    required TimeOfDay nextCheckTime,
    DateTime? morningShiftCheckin,
    DateTime? morningShiftCheckout,
    DateTime? afternoonShiftCheckin,
    DateTime? afternoonShiftCheckout,
    required bool isLoading,
    required bool isChecking,
  }) = _CheckinCheckoutScreenState;

  factory CheckinCheckoutScreenState.empty() => CheckinCheckoutScreenState(
        currentTime: DateTime.now(),
        morningShiftStart: const TimeOfDay(hour: 0, minute: 0),
        morningShiftEnd: const TimeOfDay(hour: 0, minute: 0),
        afternoonShiftStart: const TimeOfDay(hour: 0, minute: 0),
        afternoonShiftEnd: const TimeOfDay(hour: 0, minute: 0),
        nextCheckTime: const TimeOfDay(hour: 0, minute: 0),
        isLoading: false,
        isChecking: false,
      );
}
