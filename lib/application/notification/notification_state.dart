part of 'notification_bloc.dart';

@freezed
class NotificationState with _$NotificationState {
  const factory NotificationState({
    required bool isMorningCheckInNotificationSet,
    required bool isMorningCheckInLateNotificationSet,
    required bool isMorningCheckOutNotificationSet,
    required bool isAfternoonCheckInNotificationSet,
    required bool isAfternoonCheckOutNotificationSet,
  }) = _NotificationState;

  factory NotificationState.initial() => const NotificationState(
        isMorningCheckInNotificationSet: false,
        isMorningCheckInLateNotificationSet: false,
        isMorningCheckOutNotificationSet: false,
        isAfternoonCheckInNotificationSet: false,
        isAfternoonCheckOutNotificationSet: false,
      );
}
