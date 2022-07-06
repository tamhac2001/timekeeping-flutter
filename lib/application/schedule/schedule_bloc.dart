import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:timekeeping/domain/schedule/schedule.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:timekeeping/infrastructure/schedule/schedule_repository.dart';

part 'schedule_bloc.freezed.dart';

part 'schedule_event.dart';

part 'schedule_state.dart';

class ScheduleBloc extends Bloc<ScheduleEvent, ScheduleState> {
  ScheduleBloc() : super(ScheduleState.initial()) {
    on<ScheduleEvent>((event, emit) async {
      await event.when(
        initialized: (schedule) async {
          emit(state.copyWith(schedule: schedule));
        },
      );
    });
  }
}
