// ignore_for_file: constant_identifier_names

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../infrastructure/secure_storage/secure_storage_repository.dart';
import '../../utils/extensions.dart';

part 'notification_bloc.freezed.dart';

part 'notification_event.dart';

part 'notification_state.dart';

class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  final SecureStorageRepository _storage;
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  static const _DURATION_BEFORE_CHECK_TIME = Duration(minutes: 10);

  static const _CHANNEL_ID = '6969';
  static const _CHANNEL_NAME = 'TIME_KEEPING_CHANNEL';
  static const _CHANNEL_DESCRIPTION = 'Channel for timekeeping application';

  static const AndroidNotificationDetails _androidNotificationDetails =
      AndroidNotificationDetails(_CHANNEL_ID, _CHANNEL_NAME, channelDescription: _CHANNEL_DESCRIPTION);

  static const NotificationDetails _notificationDetails = NotificationDetails(android: _androidNotificationDetails);

  static const AndroidInitializationSettings _initializationSettingsAndroid = AndroidInitializationSettings('app_icon');

  static const InitializationSettings _initializationSettings = InitializationSettings(
    android: _initializationSettingsAndroid,
  );

  NotificationBloc({required SecureStorageRepository storage})
      : _storage = storage,
        super(NotificationState.preInitial()) {
    on<NotificationEvent>(
      (event, emit) async {
        await event.when(
          initialize: () async {
            flutterLocalNotificationsPlugin.initialize(_initializationSettings, onSelectNotification: (str) {});

            final morningShiftStart = await _storage.morningShiftStart;
            final morningShiftEnd = await _storage.morningShiftEnd;
            final afternoonShiftStart = await _storage.afternoonShiftStart;
            final afternoonShiftEnd = await _storage.afternoonShiftEnd;
            emit(state.copyWith(
              morningShiftStart: morningShiftStart!,
              morningShiftEnd: morningShiftEnd!,
              afternoonShiftStart: afternoonShiftStart!,
              afternoonShiftEnd: afternoonShiftEnd!,
            ));
            await flutterLocalNotificationsPlugin.pendingNotificationRequests().then((notificationList) {
              if (notificationList.isEmpty) {
                add(const NotificationEvent.scheduleMorningShiftStart());
                add(const NotificationEvent.scheduleMorningShiftEnd());
                add(const NotificationEvent.scheduleAfternoonShiftStart());
                add(const NotificationEvent.scheduleAfternoonShiftEnd());
              }
            });
          },
          scheduleMorningShiftStart: () async {
            await flutterLocalNotificationsPlugin.zonedSchedule(
                0,
                'Điểm danh ${state.morningShiftStart.toDisplayText()}',
                'Còn 10 phút nữa là tới giờ điểm danh rồi kìa',
                state.morningShiftStart.toTZDateTime().subtract(_DURATION_BEFORE_CHECK_TIME),
                _notificationDetails,
                androidAllowWhileIdle: true,
                uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime,
                matchDateTimeComponents: DateTimeComponents.time);
          },
          scheduleMorningShiftEnd: () async {
            await flutterLocalNotificationsPlugin.zonedSchedule(
                1,
                'Điểm danh ${state.morningShiftEnd.toDisplayText()}',
                'Còn 10 phút nữa là tới giờ điểm danh rồi kìa',
                state.morningShiftEnd.toTZDateTime().subtract(_DURATION_BEFORE_CHECK_TIME),
                _notificationDetails,
                androidAllowWhileIdle: true,
                uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime,
                matchDateTimeComponents: DateTimeComponents.time);
          },
          scheduleAfternoonShiftStart: () async {
            await flutterLocalNotificationsPlugin.zonedSchedule(
                2,
                'Điểm danh ${state.afternoonShiftStart.toDisplayText()}',
                'Còn 10 phút nữa là tới giờ điểm danh rồi kìa',
                state.afternoonShiftStart.toTZDateTime().subtract(_DURATION_BEFORE_CHECK_TIME),
                _notificationDetails,
                androidAllowWhileIdle: true,
                uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime,
                matchDateTimeComponents: DateTimeComponents.time);
          },
          scheduleAfternoonShiftEnd: () async {
            await flutterLocalNotificationsPlugin.zonedSchedule(
                3,
                'Điểm danh ${state.afternoonShiftEnd.toDisplayText()}',
                'Còn 10 phút nữa là tới giờ điểm danh rồi kìa',
                state.afternoonShiftEnd.toTZDateTime().subtract(_DURATION_BEFORE_CHECK_TIME),
                _notificationDetails,
                androidAllowWhileIdle: true,
                uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime,
                matchDateTimeComponents: DateTimeComponents.time);
          },
        );
      },
    );
  }
}
