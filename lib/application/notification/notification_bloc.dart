// ignore_for_file: constant_identifier_names

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_native_timezone/flutter_native_timezone.dart';
import 'package:meta/meta.dart';
import 'package:timekeeping/application/utils/extensions.dart';
import 'package:timekeeping/infrastructure/schedule/schedule_repository.dart';
import 'package:timekeeping/presentation/utils/extensions.dart';
import 'package:timezone/data/latest_all.dart' as tz;
import 'package:timezone/timezone.dart' as tz;
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_bloc.freezed.dart';

part 'notification_event.dart';

part 'notification_state.dart';

class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  final ScheduleRepository _scheduleRepository;
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  static const _DURATION_BEFORE_CHECK_TIME = Duration(minutes: 10);

  static const _CHANNEL_ID = '6969';
  static const _CHANNEL_NAME = 'TIME_KEEPING_CHANNEL';
  static const _CHANNEL_DESCRIPTION = 'Channel for timekeeping application';

  static const AndroidNotificationDetails androidNotificationDetails =
      AndroidNotificationDetails(_CHANNEL_ID, _CHANNEL_NAME,
          channelDescription: _CHANNEL_DESCRIPTION);

  static const NotificationDetails notificationDetails =
      NotificationDetails(android: androidNotificationDetails);

  NotificationBloc({required ScheduleRepository scheduleRepository})
      : _scheduleRepository = scheduleRepository,
        super(NotificationState.preInitial()) {
    on<NotificationEvent>(
      (event, emit) async {
        await event.when(
          initialize: () async {
            const AndroidInitializationSettings initializationSettingsAndroid =
                AndroidInitializationSettings('app_icon');
            const InitializationSettings initializationSettings =
                InitializationSettings(
              android: initializationSettingsAndroid,
            );
            flutterLocalNotificationsPlugin.initialize(initializationSettings,
                onSelectNotification: (str) {});
            tz.initializeTimeZones();
            final String timeZoneName =
                await FlutterNativeTimezone.getLocalTimezone();
            tz.setLocalLocation(tz.getLocation(timeZoneName));
            add(const NotificationEvent.scheduleMorningShiftStart());
            add(const NotificationEvent.scheduleMorningShiftEnd());
            add(const NotificationEvent.scheduleAfternoonShiftStart());
            add(const NotificationEvent.scheduleAfternoonShiftEnd());
          },
          scheduleMorningShiftStart: () async {
            await flutterLocalNotificationsPlugin.zonedSchedule(
                0,
                'Điểm danh ${state.morningShiftStart.toDisplayText()}',
                'Còn 10 phút nữa là tới giờ điểm danh rồi kìa',
                state.morningShiftStart
                    .toTZDateTime()
                    .subtract(_DURATION_BEFORE_CHECK_TIME),
                notificationDetails,
                androidAllowWhileIdle: true,
                uiLocalNotificationDateInterpretation:
                    UILocalNotificationDateInterpretation.absoluteTime,
                matchDateTimeComponents: DateTimeComponents.time);
          },
          scheduleMorningShiftEnd: () async {
            await flutterLocalNotificationsPlugin.zonedSchedule(
                1,
                'Điểm danh ${state.afternoonShiftStart.toDisplayText()}',
                'Còn 10 phút nữa là tới giờ điểm danh rồi kìa',
                state.morningShiftStart
                    .toTZDateTime()
                    .subtract(_DURATION_BEFORE_CHECK_TIME),
                notificationDetails,
                androidAllowWhileIdle: true,
                uiLocalNotificationDateInterpretation:
                    UILocalNotificationDateInterpretation.absoluteTime,
                matchDateTimeComponents: DateTimeComponents.time);
          },
          scheduleAfternoonShiftStart: () async {
            await flutterLocalNotificationsPlugin.zonedSchedule(
                2,
                'Điểm danh ${state.afternoonShiftStart.toDisplayText()}',
                'Còn 10 phút nữa là tới giờ điểm danh rồi kìa',
                state.afternoonShiftStart
                    .toTZDateTime()
                    .subtract(_DURATION_BEFORE_CHECK_TIME),
                notificationDetails,
                androidAllowWhileIdle: true,
                uiLocalNotificationDateInterpretation:
                    UILocalNotificationDateInterpretation.absoluteTime,
                matchDateTimeComponents: DateTimeComponents.time);
          },
          scheduleAfternoonShiftEnd: () async {
            await flutterLocalNotificationsPlugin.zonedSchedule(
                3,
                'Điểm danh ${state.afternoonShiftStart.toDisplayText()}',
                'Còn 10 phút nữa là tới giờ điểm danh rồi kìa',
                state.morningShiftStart
                    .toTZDateTime()
                    .subtract(_DURATION_BEFORE_CHECK_TIME),
                notificationDetails,
                androidAllowWhileIdle: true,
                uiLocalNotificationDateInterpretation:
                    UILocalNotificationDateInterpretation.absoluteTime,
                matchDateTimeComponents: DateTimeComponents.time);
          },
        );
      },
    );
  }
}
