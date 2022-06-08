part of 'notification_bloc.dart';

@freezed
class NotificationEvent with _$NotificationEvent {
  const factory NotificationEvent.initialize() = Initialize;
  const factory NotificationEvent.scheduleMorningShiftStart() =
      ScheduleMorningShiftStart;
  const factory NotificationEvent.scheduleMorningShiftEnd() =
      ScheduleMorningShiftEnd;
  const factory NotificationEvent.scheduleAfternoonShiftStart() =
      ScheduleAfternoonShiftStart;
  const factory NotificationEvent.scheduleAfternoonShiftEnd() =
      ScheduleAfternoonShiftEnd;
}
