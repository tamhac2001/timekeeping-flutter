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
  }) = _CheckinCheckoutScreenState;

  factory CheckinCheckoutScreenState.initial() => CheckinCheckoutScreenState(
      currentTime: DateTime.now(),
      morningShiftStart: const TimeOfDay(hour: 8, minute: 0),
      morningShiftEnd: const TimeOfDay(hour: 12, minute: 0),
      afternoonShiftStart: const TimeOfDay(hour: 14, minute: 0),
      afternoonShiftEnd: const TimeOfDay(hour: 18, minute: 0),
      nextCheckTime: const TimeOfDay(hour: 8, minute: 0));
}
