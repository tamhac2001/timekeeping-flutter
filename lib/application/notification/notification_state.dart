part of 'notification_bloc.dart';

@freezed
class NotificationState with _$NotificationState {
  const factory NotificationState({
    required TimeOfDay morningShiftStart,
    required TimeOfDay morningShiftEnd,
    required TimeOfDay afternoonShiftStart,
    required TimeOfDay afternoonShiftEnd,
  }) = _NotificationState;

  factory NotificationState.preInitial() => const NotificationState(
        morningShiftStart: TimeOfDay(hour: 8, minute: 0),
        morningShiftEnd: TimeOfDay(hour: 12, minute: 0),
        afternoonShiftStart: TimeOfDay(hour: 14, minute: 0),
        afternoonShiftEnd: TimeOfDay(hour: 18, minute: 0),
      );
}
