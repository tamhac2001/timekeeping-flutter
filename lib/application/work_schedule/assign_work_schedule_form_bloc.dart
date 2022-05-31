import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'extensions.dart';

part 'assign_work_schedule_form_event.dart';

part 'assign_work_schedule_form_state.dart';

part 'assign_work_schedule_form_bloc.freezed.dart';

class AssignWorkScheduleFormBloc
    extends Bloc<AssignWorkScheduleFormEvent, AssignWorkScheduleFormState> {
  AssignWorkScheduleFormBloc() : super(AssignWorkScheduleFormState.initial()) {
    on<AssignWorkScheduleFormEvent>((event, emit) {
      event.map(
          workScheduleRequested: (event) {},
          morningShiftStartTimeChanged: (event) {
            emit(
              state.copyWith(
                morningShiftStartTime: event.time,
                afternoonShiftEndTime: TimeOfDayX.getWorkEndTime(event.time,
                    state.morningShiftEndTime, state.afternoonShiftStartTime),
              ),
            );
          },
          morningShiftEndTimeChanged: (event) {
            emit(
              state.copyWith(
                morningShiftEndTime: event.time,
                afternoonShiftEndTime: TimeOfDayX.getWorkEndTime(
                    state.morningShiftStartTime,
                    event.time,
                    state.afternoonShiftStartTime),
              ),
            );
          },
          afternoonShiftStartTimeChanged: (event) {
            emit(
              state.copyWith(
                afternoonShiftStartTime: event.time,
                afternoonShiftEndTime: TimeOfDayX.getWorkEndTime(
                  state.morningShiftStartTime,
                  state.morningShiftEndTime,
                  event.time,
                ),
              ),
            );
          },
          formSubmitted: (event) {
            emit(state.copyWith(isSubmitting: true, successOrFail: true));
          });
    });
  }
}
