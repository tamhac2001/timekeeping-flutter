import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'timekeeping_record_screen_event.dart';

part 'timekeeping_record_screen_state.dart';

part 'timekeeping_record_screen_bloc.freezed.dart';

class TimekeepingRecordScreenBloc
    extends Bloc<TimekeepingRecordScreenEvent, TimekeepingRecordScreenState> {
  TimekeepingRecordScreenBloc()
      : super(TimekeepingRecordScreenState.initial()) {
    on<TimekeepingRecordScreenEvent>((event, emit) {
      final current = state.currentDisplayedTime;
      event.when(toPreviousMonth: () {
        emit(state.copyWith(currentDisplayedTime: DateTime.utc(
            current.year, current.month - 1)));
      }, toNextMonth: (){
        emit(state.copyWith(currentDisplayedTime: DateTime.utc(
            current.year, current.month + 1)));
      });
    });
  }
}
