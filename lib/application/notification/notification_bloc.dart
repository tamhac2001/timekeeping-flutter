// ignore_for_file: constant_identifier_names

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../utils/extensions.dart';
import '../cubits/timekeeping_cubit.dart';

part 'notification_bloc.freezed.dart';

part 'notification_event.dart';

part 'notification_state.dart';

class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  final TimekeepingCubit _timekeepingCubit;
  final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  static const _duration_before_check_time = Duration(minutes: 10);

  static const _channel_id = '6969';
  static const _channel_name = 'TIME_KEEPING_CHANNEL';
  static const _CHANNEL_DESCRIPTION = 'Channel for timekeeping application';

  static const AndroidNotificationDetails _androidNotificationDetails =
      AndroidNotificationDetails(_channel_id, _channel_name, channelDescription: _CHANNEL_DESCRIPTION);

  static const NotificationDetails _notificationDetails = NotificationDetails(android: _androidNotificationDetails);

  static const AndroidInitializationSettings _initializationSettingsAndroid = AndroidInitializationSettings('app_icon');

  static const InitializationSettings _initializationSettings = InitializationSettings(
    android: _initializationSettingsAndroid,
  );

  static const int _morningCheckInNotificationId = 0;
  static const int _morningCheckInLateNotificationId = 1;
  static const int _morningCheckOutNotificationId = 2;
  static const int _afternoonCheckInNotificationId = 3;
  static const int _afternoonCheckOutNotificationId = 4;

  NotificationBloc({required TimekeepingCubit timekeepingCubit})
      : _timekeepingCubit = timekeepingCubit,
        super(NotificationState.initial()) {
    on<NotificationEvent>(
      (event, emit) async {
        await event.when(
          initialize: () async {
            await _flutterLocalNotificationsPlugin.initialize(_initializationSettings, onSelectNotification: (str) {});
            if (_timekeepingCubit.state == null) {
              await _timekeepingCubit.timekeepingRequest();
            }
            await _timekeepingCubit.state!.fold(
              (_) => null,
              (timekeeping) async {
                final pendingNotificationList = await _flutterLocalNotificationsPlugin.pendingNotificationRequests();
                final now = DateTime.now();
                for (PendingNotificationRequest pendingNotification in pendingNotificationList) {
                  debugPrint('Before add:${pendingNotification.id}:${pendingNotification.title} ');
                  if (pendingNotification.id == _morningCheckInNotificationId) {
                    emit(state.copyWith(isMorningCheckInNotificationSet: true));
                  } else if (pendingNotification.id == _morningCheckInLateNotificationId) {
                    emit(state.copyWith(isMorningCheckInLateNotificationSet: true));
                  } else if (pendingNotification.id == _morningCheckOutNotificationId) {
                    emit(state.copyWith(isMorningCheckOutNotificationSet: true));
                  } else if (pendingNotification.id == _afternoonCheckInNotificationId) {
                    emit(state.copyWith(isAfternoonCheckInNotificationSet: true));
                  } else if (pendingNotification.id == _afternoonCheckOutNotificationId) {
                    emit(state.copyWith(isAfternoonCheckOutNotificationSet: true));
                  }
                }
                if (!state.isMorningCheckInNotificationSet) {
                  add(const NotificationEvent.setMorningCheckInNotification());
                }
                if (!state.isMorningCheckInLateNotificationSet) {
                  add(const NotificationEvent.setMorningCheckInLateNotification());
                }
                if (!state.isMorningCheckOutNotificationSet) {
                  add(const NotificationEvent.setMorningCheckOutNotification());
                }
                if (!state.isAfternoonCheckInNotificationSet) {
                  add(const NotificationEvent.setMorningCheckInNotification());
                }
                // if already check in morning: setAfternoonCheckOutNotification
                if (!state.isAfternoonCheckOutNotificationSet && !timekeeping.morningCheckIn.isUnknown()) {
                  add(const NotificationEvent.setAfternoonCheckOutNotification());
                }
                // if already check in morning: cancel morningCheckInLateNotification
                if (!timekeeping.morningCheckIn.isUnknown() &&
                    now.isBefore(timekeeping.morningCheckIn.latestTimeForCheckIn().toTodayDateTime())) {
                  await _flutterLocalNotificationsPlugin.cancel(_morningCheckInLateNotificationId);
                }
                final pendingNotificationListAfterAdd =
                    await _flutterLocalNotificationsPlugin.pendingNotificationRequests();
                if (pendingNotificationListAfterAdd.isEmpty) debugPrint('After add: notification list is empty');
                for (PendingNotificationRequest pendingNotification in pendingNotificationListAfterAdd) {
                  debugPrint('After add:${pendingNotification.id}:${pendingNotification.title} ');
                }
              },
            );
          },
          setMorningCheckInNotification: () async {
            await _timekeepingCubit.state!.fold(
                (_) => null,
                (timekeeping) async => await _flutterLocalNotificationsPlugin.zonedSchedule(
                    _morningCheckInNotificationId,
                    '??i???m danh ${timekeeping.morningCheckIn.scheduledTime.toDisplayText()}',
                    'C??n ${_duration_before_check_time.inMinutes} ph??t n???a l?? t???i gi??? ??i???m danh r???i k??a',
                    timekeeping.morningCheckIn.scheduledTime
                        .toTZDateTimeForDailyNotification()
                        .subtract(_duration_before_check_time),
                    _notificationDetails,
                    androidAllowWhileIdle: true,
                    uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime,
                    matchDateTimeComponents: DateTimeComponents.time));
          },
          setMorningCheckInLateNotification: () async {
            await _timekeepingCubit.state!.fold(
                (_) => null,
                (timekeeping) async => await _flutterLocalNotificationsPlugin.zonedSchedule(
                    _morningCheckInLateNotificationId,
                    '??i???m danh ${timekeeping.morningCheckIn.latestTimeForCheckIn().toDisplayText()}',
                    'C??n ${_duration_before_check_time.inMinutes} ph??t n???a l?? tr??? h??n 2h r???i k??a! N???u b???n kh??ng ??i???m danh s??? b??? t??nh v???ng ?????y!!!',
                    timekeeping.morningCheckIn
                        .latestTimeForCheckIn()
                        .toTZDateTimeForDailyNotification()
                        .subtract(_duration_before_check_time),
                    _notificationDetails,
                    androidAllowWhileIdle: true,
                    uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime,
                    matchDateTimeComponents: DateTimeComponents.time));
          },
          setMorningCheckOutNotification: () async {
            await _timekeepingCubit.state!.fold(
                (_) => null,
                (timekeeping) async => await _flutterLocalNotificationsPlugin.zonedSchedule(
                    _morningCheckOutNotificationId,
                    '??i???m danh ${timekeeping.morningCheckOut.scheduledTime.toDisplayText()}',
                    'C??n ${_duration_before_check_time.inMinutes} ph??t n???a l?? t???i gi??? ??i???m danh r???i k??a',
                    timekeeping.morningCheckOut.scheduledTime
                        .toTZDateTimeForDailyNotification()
                        .subtract(_duration_before_check_time),
                    _notificationDetails,
                    androidAllowWhileIdle: true,
                    uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime,
                    matchDateTimeComponents: DateTimeComponents.time));
          },
          setAfternoonCheckInNotification: () async {
            await _timekeepingCubit.state!.fold(
                (_) => null,
                (timekeeping) async => await _flutterLocalNotificationsPlugin.zonedSchedule(
                    _afternoonCheckInNotificationId,
                    '??i???m danh ${timekeeping.afternoonCheckIn.scheduledTime.toDisplayText()}',
                    'C??n ${_duration_before_check_time.inMinutes} ph??t n???a l?? t???i gi??? ??i???m danh r???i k??a',
                    timekeeping.afternoonCheckIn.scheduledTime
                        .toTZDateTimeForDailyNotification()
                        .subtract(_duration_before_check_time),
                    _notificationDetails,
                    androidAllowWhileIdle: true,
                    uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime,
                    matchDateTimeComponents: DateTimeComponents.time));
          },
          setAfternoonCheckOutNotification: () async {
            await _timekeepingCubit.state!.fold(
                (_) => null,
                (timekeeping) async => await _flutterLocalNotificationsPlugin.zonedSchedule(
                    _afternoonCheckOutNotificationId,
                    '??i???m danh ${timekeeping.afternoonCheckOut.scheduledTime.toDisplayText()}',
                    'C??n ${_duration_before_check_time.inMinutes} ph??t n???a l?? t???i gi??? ??i???m danh r???i k??a',
                    timekeeping.afternoonCheckOut.scheduledTime
                        .toTZDateTimeForDailyNotification()
                        .subtract(_duration_before_check_time),
                    _notificationDetails,
                    androidAllowWhileIdle: true,
                    uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime,
                    matchDateTimeComponents: DateTimeComponents.time));
          },
          resetState: () async {
            await _flutterLocalNotificationsPlugin.cancelAll();
            emit(NotificationState.initial());
          },
        );
      },
    );
  }
}
