import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../utils/extensions.dart';

part 'checkin_checkout_screen_bloc.freezed.dart';

part 'checkin_checkout_screen_event.dart';

part 'checkin_checkout_screen_state.dart';

class CheckinCheckoutScreenBloc
    extends Bloc<CheckinCheckoutScreenEvent, CheckinCheckoutScreenState> {
  CheckinCheckoutScreenBloc() : super(CheckinCheckoutScreenState.initial()) {
    on<CheckinCheckoutScreenEvent>((event, emit) {
      event.when(
          clockTick: () =>
              emit(state.copyWith(currentTime: DateTime.now())),
          updateNextCheckTime: () {
            if (state.currentTime
                .isBefore(state.morningShiftStart.toDateTime())) {
              emit(state.copyWith(nextCheckTime: state.morningShiftStart));
            } else if (state.currentTime
                .isBefore(state.morningShiftEnd.toDateTime())) {
              emit(state.copyWith(nextCheckTime: state.morningShiftEnd));
            } else if (state.currentTime
                .isBefore(state.afternoonShiftStart.toDateTime())) {
              emit(state.copyWith(nextCheckTime: state.afternoonShiftStart));
            } else if (state.currentTime
                .isBefore(state.afternoonShiftEnd.toDateTime())) {
              emit(state.copyWith(nextCheckTime: state.afternoonShiftEnd));
            } else {
              emit(state.copyWith(nextCheckTime: state.morningShiftStart));
              debugPrint('else');
            }
          });
    });
  }
}
