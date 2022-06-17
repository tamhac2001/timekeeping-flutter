import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:timekeeping/domain/schedule/schedule_failure.dart';
import 'package:timekeeping/infrastructure/schedule/schedule_repository.dart';
import '../../domain/schedule/schedule.dart';
import '../../infrastructure/secure_storage/secure_storage_repository.dart';
import '../utils/extensions.dart';

part 'assign_schedule_form_event.dart';

part 'assign_schedule_form_state.dart';

part 'assign_schedule_form_bloc.freezed.dart';

class AssignScheduleFormBloc
    extends Bloc<AssignScheduleFormEvent, AssignScheduleFormState> {
  final ScheduleRepository _repository;
  final SecureStorageRepository _storage;

  AssignScheduleFormBloc(
      {required ScheduleRepository repository,
      required SecureStorageRepository storage})
      : _repository = repository,
        _storage = storage,
        super(AssignScheduleFormState.initial()) {
    on<AssignScheduleFormEvent>((event, emit) async {
      await event.when(
        workScheduleRequested: () async {
          final accessToken = await _storage.accessToken;
          final employeeId = await _storage.employeeId;
          emit(state.copyWith(isLoading: true));
          final scheduleFailureOrSchedule = await _repository.scheduleRequest(
              accessToken: accessToken!, employeeId: employeeId!);
          debugPrint(scheduleFailureOrSchedule.toString());
          scheduleFailureOrSchedule.fold(
              (failure) =>
                  emit(state.copyWith(scheduleFailureOrSuccess: left(failure))),
              (schedule) {
            emit(state.copyWith(
                schedule: schedule, scheduleFailureOrSuccess: right(unit)));
          });
          emit(state.copyWith(isLoading: false));
        },
        morningShiftStartTimeChanged: (time) {
          emit(state.copyWith(
              schedule: state.schedule.copyWith(
                  morningShiftStart: time,
                  afternoonShiftEnd: TimeOfDayX.getWorkEndTime(
                    time,
                    state.schedule.morningShiftEnd,
                    state.schedule.afternoonShiftStart,
                  ))));
        },
        morningShiftEndTimeChanged: (time) {
          emit(state.copyWith(
              schedule: state.schedule.copyWith(
            morningShiftEnd: time,
            afternoonShiftEnd: TimeOfDayX.getWorkEndTime(
                state.schedule.morningShiftStart,
                time,
                state.schedule.afternoonShiftStart),
          )));
        },
        afternoonShiftStartTimeChanged: (time) {
          emit(state.copyWith(
              schedule: state.schedule.copyWith(
                  afternoonShiftStart: time,
                  afternoonShiftEnd: TimeOfDayX.getWorkEndTime(
                    state.schedule.morningShiftStart,
                    state.schedule.morningShiftEnd,
                    time,
                  ))));
        },
        formSubmitted: () async {
          final accessToken = await _storage.accessToken;
          final employeeId = await _storage.employeeId;
          emit(state.copyWith(isSubmitting: true));
          final scheduleFailureOrSuccess = await _repository.assignSchedule(
              accessToken: accessToken!,
              employeeId: employeeId!,
              schedule: state.schedule);
          emit(state.copyWith(
              scheduleFailureOrSuccess: scheduleFailureOrSuccess));
          emit(state.copyWith(isSubmitting: false));
        },
      );
    });
  }
}
