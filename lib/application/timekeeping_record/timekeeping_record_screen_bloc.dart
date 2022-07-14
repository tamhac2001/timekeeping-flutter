import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:timekeeping/application/cubits/employee_cubit.dart';
import 'package:timekeeping/application/cubits/schedule/schedule_cubit.dart';
import 'package:timekeeping/domain/absent/absent_form.dart';
import 'package:timekeeping/domain/employee/employee.dart';
import 'package:timekeeping/domain/employee/employee_failure.dart';
import 'package:timekeeping/domain/schedule/schedule.dart';
import 'package:timekeeping/domain/timekeeping/timekeeping_failure.dart';

import '../../domain/schedule/schedule_failure.dart';
import '../../domain/timekeeping/timekeeping.dart';
import '../../infrastructure/timekeeping/timekeeping_repository.dart';
import '../cubits/absent_list_cubit.dart';

part 'timekeeping_record_screen_bloc.freezed.dart';

part 'timekeeping_record_screen_event.dart';

part 'timekeeping_record_screen_state.dart';

class TimekeepingRecordScreenBloc extends Bloc<TimekeepingRecordScreenEvent, TimekeepingRecordScreenState> {
  final TimekeepingRepository _timekeepingRepository;
  final EmployeeCubit _employeeCubit;
  final ScheduleCubit _scheduleCubit;
  final AbsentListCubit _absentListCubit;

  TimekeepingRecordScreenBloc({
    required TimekeepingRepository timekeepingRepository,
    required EmployeeCubit employeeCubit,
    required ScheduleCubit scheduleCubit,
    required AbsentListCubit absentListCubit,
  })  : _timekeepingRepository = timekeepingRepository,
        _employeeCubit = employeeCubit,
        _scheduleCubit = scheduleCubit,
        _absentListCubit = absentListCubit,
        super(TimekeepingRecordScreenState.initial()) {
    on<TimekeepingRecordScreenEvent>((event, emit) async {
      await event.when(
        toPreviousMonth: () async {
          final previousMonth = DateTime.utc(state.timePicked.year, state.timePicked.month - 1);
          emit(state.copyWith(timePicked: previousMonth));
          add(const TimekeepingRecordScreenEvent.getTimekeepingRecords());
        },
        toNextMonth: () async {
          final nextMonth = DateTime.utc(state.timePicked.year, state.timePicked.month + 1);
          emit(state.copyWith(timePicked: nextMonth));
          add(const TimekeepingRecordScreenEvent.getTimekeepingRecords());
        },
        getTimekeepingRecords: () async {
          emit(state.copyWith(isLoading: true));
          Schedule? schedule;
          Employee? employee;
          List<AbsentForm>? absentListThisMonth;
          if (_scheduleCubit.state.scheduleFailureOrSchedule == null ||
              _scheduleCubit.state.scheduleFailureOrSchedule!.isLeft()) {
            await _scheduleCubit.scheduleRequest();
          }
          _scheduleCubit.state.scheduleFailureOrSchedule!.fold(
              (failure) => failure.when(
                    noInternetAccess: () => emit(state.copyWith(
                        failureOrTimekeepingListByMonth: left(const TimekeepingFailure.noInternetAccess()))),
                    serverError: () => emit(
                        state.copyWith(failureOrTimekeepingListByMonth: left(const TimekeepingFailure.serverError()))),
                    unAuthenticated: () => emit(state.copyWith(
                        failureOrTimekeepingListByMonth: left(const TimekeepingFailure.unAuthenticated()))),
                    noScheduleStored: () => emit(
                        state.copyWith(failureOrTimekeepingListByMonth: left(const TimekeepingFailure.serverError()))),
                  ),
              (_) => schedule = _);
          if (_employeeCubit.state == null || _employeeCubit.state!.isLeft()) {
            await _employeeCubit.employeeRequest();
          }
          _employeeCubit.state!.fold(
              (failure) => failure.when(
                    timeOutError: () => emit(
                        state.copyWith(failureOrTimekeepingListByMonth: left(const TimekeepingFailure.serverError()))),
                    serverError: () => emit(
                        state.copyWith(failureOrTimekeepingListByMonth: left(const TimekeepingFailure.serverError()))),
                    unAuthenticated: () => emit(state.copyWith(
                        failureOrTimekeepingListByMonth: left(const TimekeepingFailure.unAuthenticated()))),
                    noInternetAccess: () => emit(state.copyWith(
                        failureOrTimekeepingListByMonth: left(const TimekeepingFailure.noInternetAccess()))),
                    noEmployeeFound: () => emit(
                        state.copyWith(failureOrTimekeepingListByMonth: left(const TimekeepingFailure.serverError()))),
                  ),
              (_) => employee = _);
          if (_absentListCubit.state == null || _absentListCubit.state!.isLeft()) {
            _absentListCubit.absentListRequest();
          }
          _absentListCubit.state!.fold(
            (failure) => failure.when(
              serverError: () =>
                  emit(state.copyWith(failureOrTimekeepingListByMonth: left(const TimekeepingFailure.serverError()))),
              unAuthenticated: () => emit(
                  state.copyWith(failureOrTimekeepingListByMonth: left(const TimekeepingFailure.unAuthenticated()))),
              noInternetAccess: () {
                emit(
                    state.copyWith(failureOrTimekeepingListByMonth: left(const TimekeepingFailure.noInternetAccess())));
              },
            ),
            (_) => absentListThisMonth = _
                .where((absentForm) =>
                    absentForm.startDate.isAfter(state.timePicked) &&
                    absentForm.endDate.isBefore(state.timePicked.add(const Duration(days: 31))))
                .toList(),
          );
          if (schedule == null || employee == null || absentListThisMonth == null) {
            emit(state.copyWith(isLoading: false));
            return;
          }
          debugPrint('absentListThisMonth:$absentListThisMonth');
          final failureOrTimekeepingListByMonth = await _timekeepingRepository.getTimekeepingByMonth(
              year: state.timePicked.year, month: state.timePicked.month, schedule: schedule!);

          emit(state.copyWith(failureOrTimekeepingListByMonth: failureOrTimekeepingListByMonth));

          final timekeepingListByMonth =
              failureOrTimekeepingListByMonth.fold((l) => List<Timekeeping>.empty(growable: true), id);
          bool isEmployeeStartDate = false;
          if (state.timePicked.isAtSameMomentAs(DateTime.utc(employee!.startDate.year, employee!.startDate.month))) {
            isEmployeeStartDate = true;
          }
          // if month == this month => max day = today
          // if month == startDay => max day = monthStartTotalDay - startDay
          final DateTime now = DateTime.now();
          final DateTime thisMonth = DateTime.utc(now.year, now.month);
          final totalDaysInMonth = state.timePicked.isAtSameMomentAs(thisMonth)
              ? DateTime.now().day
              : (isEmployeeStartDate)
                  ? (DateUtils.getDaysInMonth(employee!.startDate.year, employee!.startDate.month) -
                      employee!.startDate.day)
                  : DateUtils.getDaysInMonth(state.timePicked.year, state.timePicked.month);
          // if month == this month => generate from today backward
          // else generate from end of month backward
          final daysInMonthList = List.generate(
              totalDaysInMonth,
              (dayIndex) => (state.timePicked.isAtSameMomentAs(thisMonth))
                  ? DateTime(thisMonth.year, thisMonth.month, DateTime.now().day - dayIndex)
                  : DateTime(state.timePicked.year, state.timePicked.month,
                      DateUtils.getDaysInMonth(state.timePicked.year, state.timePicked.month) - dayIndex));
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
            bool hasAbsentForm = false;
            for (AbsentForm absentForm in absentListThisMonth!) {
              if (dateTime.add(const Duration(days: 1)).isAfter(absentForm.startDate) &&
                  dateTime.isBefore(absentForm.endDate.add(const Duration(days: 1)))) {
                hasAbsentForm = true;
                if (absentForm.status!.isApproved()) {
                  timekeepingListByMonth
                      .add(Timekeeping.absent(schedule: schedule!, dateTime: dateTime, isApproved: true));
                } else {
                  timekeepingListByMonth
                      .add(Timekeeping.absent(schedule: schedule!, dateTime: dateTime, isApproved: false));
                }
                break;
              }
            }
            if (!hasAbsentForm) {
              timekeepingListByMonth.add(Timekeeping.absent(schedule: schedule!, dateTime: dateTime));
            }
          }
          timekeepingListByMonth.sort((a, b) => a.date.compareTo(b.date));
          debugPrint(timekeepingListByMonth.toString());
          emit(state.copyWith(displayedTimekeepingRecords: timekeepingListByMonth.reversed.toList()));
          emit(state.copyWith(isLoading: false));
        },
        resetState: () {
          emit(TimekeepingRecordScreenState.initial());
        },
      );
    });
  }
}
