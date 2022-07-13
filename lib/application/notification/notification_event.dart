part of 'notification_bloc.dart';

@freezed
class NotificationEvent with _$NotificationEvent {
  const factory NotificationEvent.initialize() = _Initialize;

  const factory NotificationEvent.setMorningCheckInNotification() = _SetMorningCheckInNotification;

  const factory NotificationEvent.setMorningCheckInLateNotification() = _SetMorningCheckInLateNotification;

  const factory NotificationEvent.setMorningCheckOutNotification() = _SetMorningCheckOutNotification;

  const factory NotificationEvent.setAfternoonCheckInNotification() = _SetAfternoonCheckInNotification;

  const factory NotificationEvent.setAfternoonCheckOutNotification() = _SetAfternoonCheckOutNotification;

  const factory NotificationEvent.resetState() = _ResetState;
}
