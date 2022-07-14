import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../domain/schedule/schedule.dart';
import '../../domain/schedule/schedule_failure.dart';
import '../../infrastructure/schedule/schedule_repository.dart';
import '../../infrastructure/secure_storage/secure_storage_repository.dart';
import '../../utils/extensions.dart';

part 'assign_schedule_form_event.dart';

part 'assign_schedule_form_state.dart';

part 'assign_schedule_form_bloc.freezed.dart';

class AssignScheduleFormBloc extends Bloc<AssignScheduleFormEvent, AssignScheduleFormState> {
  final ScheduleRepository _repository;

  AssignScheduleFormBloc({required ScheduleRepository repository, required SecureStorageRepository storage})
      : _repository = repository,
        super(AssignScheduleFormState.initial()) {
    on<AssignScheduleFormEvent>((event, emit) async {
      await event.when(
        morningShiftStartTimeChanged: (time) {
          emit(state.copyWith(
              scheduleFailureOrUnit: null,
              morningShiftStart: time,
              afternoonShiftEnd: TimeOfDayX.getWorkEndTime(
                time,
                state.morningShiftEnd,
                state.afternoonShiftStart,
              )));
        },
        morningShiftEndTimeChanged: (time) {
          emit(state.copyWith(
              scheduleFailureOrUnit: null,
              morningShiftEnd: time,
              afternoonShiftEnd: TimeOfDayX.getWorkEndTime(
                state.morningShiftStart,
                time,
                state.afternoonShiftStart,
              )));
        },
        afternoonShiftStartTimeChanged: (time) {
          emit(state.copyWith(
              scheduleFailureOrUnit: null,
              afternoonShiftStart: time,
              afternoonShiftEnd: TimeOfDayX.getWorkEndTime(
                state.morningShiftStart,
                state.morningShiftEnd,
                time,
              )));
        },
        formSubmitted: () async {
          emit(state.copyWith(isSubmitting: true));
          final scheduleFailureOrUnit = await _repository.assignSchedule(
              schedule: Schedule(
                  morningShiftStart: state.morningShiftStart,
                  morningShiftEnd: state.morningShiftEnd,
                  afternoonShiftStart: state.afternoonShiftStart,
                  afternoonShiftEnd: state.afternoonShiftEnd));
          emit(state.copyWith(scheduleFailureOrUnit: scheduleFailureOrUnit));
          emit(state.copyWith(isSubmitting: false));
        },
        resetState: () async {
          emit(AssignScheduleFormState.initial());
        },
      );
    });
  }
}
