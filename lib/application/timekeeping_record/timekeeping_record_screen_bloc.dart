import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:timekeeping/domain/schedule/schedule.dart';
import 'package:timekeeping/domain/timekeeping/timekeeping_failure.dart';

import '../../domain/timekeeping/timekeeping.dart';
import '../../infrastructure/timekeeping/timekeeping_repository.dart';

part 'timekeeping_record_screen_bloc.freezed.dart';

part 'timekeeping_record_screen_event.dart';

part 'timekeeping_record_screen_state.dart';

class TimekeepingRecordScreenBloc extends Bloc<TimekeepingRecordScreenEvent, TimekeepingRecordScreenState> {
  final TimekeepingRepository _timekeepingRepository;

  TimekeepingRecordScreenBloc({required TimekeepingRepository timekeepingRepository})
      : _timekeepingRepository = timekeepingRepository,
        super(TimekeepingRecordScreenState.initial()) {
    on<TimekeepingRecordScreenEvent>((event, emit) async {
      await event.when(
        toPreviousMonth: () async {
          final previousMonth = DateTime.utc(state.timePicked.year, state.timePicked.month - 1);
          emit(state.copyWith(timePicked: previousMonth));
          add(const TimekeepingRecordScreenEvent.getTimekeepingRecords());
        },
        toNextMonth: () {
          final nextMonth = DateTime.utc(state.timePicked.year, state.timePicked.month + 1);
          emit(state.copyWith(timePicked: nextMonth));
          add(const TimekeepingRecordScreenEvent.getTimekeepingRecords());
        },
        getEmployeeStartDate: () async {
          emit(state.copyWith(isLoading: true));
          final employeeStartDate = await _timekeepingRepository.getEmployeeStartDate();
          emit(state.copyWith(employeeStartDate: employeeStartDate!));
          emit(state.copyWith(isLoading: false));
        },
        getSchedule: () async {
          emit(state.copyWith(isLoading: true));
          final schedule = await _timekeepingRepository.getSchedule();
          emit(state.copyWith(schedule: schedule));
          emit(state.copyWith(isLoading: false));
        },
        getTimekeepingRecords: () async {
          emit(state.copyWith(isLoading: true));
          final failureOrTimekeepingListByMonth =
              await _timekeepingRepository.getTimekeepingByMonth(state.timePicked.year, state.timePicked.month);
          emit(state.copyWith(failureOrTimekeepingListByMonth: failureOrTimekeepingListByMonth));
          final timekeepingListByMonth =
              failureOrTimekeepingListByMonth.fold((l) => List<Timekeeping>.empty(growable: true), id);
          debugPrint('timekeepingListByMonth: $timekeepingListByMonth');
          bool isEmployeeStartDate = false;
          if (state.timePicked
              .isAtSameMomentAs(DateTime.utc(state.employeeStartDate.year, state.employeeStartDate.month))) {
            isEmployeeStartDate = true;
            debugPrint('timekeeping month want to get == month start to work');
          }
          final schedule = state.schedule;
          // if month == this month => max day = today
          // if month == startDay => max day = monthStartTotalDay - startDay
          final totalDaysInMonth = state.timePicked.isAtSameMomentAs(state.thisMonth)
              ? DateTime.now().day
              : (isEmployeeStartDate)
                  ? (DateUtils.getDaysInMonth(state.employeeStartDate.year, state.employeeStartDate.month) -
                      state.employeeStartDate.day)
                  : DateUtils.getDaysInMonth(state.timePicked.year, state.timePicked.month);
          // if month == this month => generate from today backward
          // else generate from end of month backward
          final daysInMonthList = List.generate(
              totalDaysInMonth,
              (dayIndex) => (state.timePicked.isAtSameMomentAs(state.thisMonth))
                  ? DateTime(state.thisMonth.year, state.thisMonth.month, DateTime.now().day - dayIndex)
                  : DateTime(state.timePicked.year, state.timePicked.month,
                      DateUtils.getDaysInMonth(state.timePicked.year, state.timePicked.month) - dayIndex));
          debugPrint('daysInMonthList: $daysInMonthList');
          // get day except sat and sun
          final workDaysInMonthList =
              daysInMonthList.where((dateTime) => !(dateTime.weekday == 6 || dateTime.weekday == 7)).toList();
          if (timekeepingListByMonth.isNotEmpty) {
            // get days without timekeeping a single time
            for (Timekeeping timekeeping in timekeepingListByMonth) {
              for (DateTime dateTime in workDaysInMonthList) {
                if (timekeeping.date.day == dateTime.day) {
                  workDaysInMonthList.remove(dateTime);
                  break;
                }
              }
            }
          }
          // add days without timekeeping a single time to timekeepingListByMonth as absent days
          for (DateTime dateTime in workDaysInMonthList) {
            timekeepingListByMonth.add(Timekeeping.absent(schedule, dateTime));
          }
          timekeepingListByMonth.sort(
            (a, b) => a.date.compareTo(b.date),
          );
          emit(state.copyWith(displayedTimekeepingRecords: timekeepingListByMonth.reversed.toList()));

          emit(state.copyWith(isLoading: false));
        },
      );
    });
  }
}
