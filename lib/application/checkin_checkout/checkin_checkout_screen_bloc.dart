import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:timekeeping/domain/schedule/schedule.dart';
import 'package:timekeeping/domain/timekeeping/timekeeping.dart';

import '../../domain/timekeeping/timekeeping_failure.dart';
import '../../infrastructure/timekeeping/timekeeping_repository.dart';
import '../../utils/extensions.dart';

part 'checkin_checkout_screen_bloc.freezed.dart';

part 'checkin_checkout_screen_event.dart';

part 'checkin_checkout_screen_state.dart';

class CheckinCheckoutScreenBloc extends Bloc<CheckinCheckoutScreenEvent, CheckinCheckoutScreenState> {
  late final Timer _timer;

  final TimekeepingRepository _repository;

  CheckinCheckoutScreenBloc({
    required TimekeepingRepository repository,
  })  : _repository = repository,
        super(CheckinCheckoutScreenState.empty()) {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      add(const CheckinCheckoutScreenEvent.clockTick());
      final now = DateTime.now();
      if (now.isAtSameMomentAs(state.schedule.morningShiftStart.toTodayDateTime().add(const Duration(minutes: 30)))) {
        add(const CheckinCheckoutScreenEvent.getTimekeeping());
      } else if (now
          .isAtSameMomentAs(state.schedule.morningShiftEnd.toTodayDateTime().add(const Duration(minutes: 30)))) {
        add(const CheckinCheckoutScreenEvent.getTimekeeping());
      } else if (now
          .isAtSameMomentAs(state.schedule.afternoonShiftStart.toTodayDateTime().add(const Duration(minutes: 30)))) {
        add(const CheckinCheckoutScreenEvent.getTimekeeping());
      } else if (now
          .isAtSameMomentAs(state.schedule.afternoonShiftEnd.toTodayDateTime().add(const Duration(minutes: 30)))) {
        add(const CheckinCheckoutScreenEvent.getTimekeeping());
      }
    });

    on<CheckinCheckoutScreenEvent>((event, emit) async {
      await event.when(
        clockTick: () async => emit(state.copyWith(currentTime: DateTime.now())),
        getSchedule: () async {
          emit(state.copyWith(isChecking: false, isLoading: true));
          final schedule = await _repository.getSchedule();
          emit(state.copyWith(schedule: schedule));
          emit(state.copyWith(isLoading: false));
        },
        updateNextCheckTime: () async {
          if (state.failureOrTimekeeping == null) {
            if (state.currentTime.isBefore(state.schedule.morningShiftStart.toTodayDateTime())) {
              emit(state.copyWith(nextCheckTime: state.schedule.morningShiftStart));
            } else if (state.currentTime.isBefore(state.schedule.morningShiftEnd.toTodayDateTime())) {
              emit(state.copyWith(nextCheckTime: state.schedule.morningShiftEnd));
            } else if (state.currentTime.isBefore(state.schedule.afternoonShiftStart.toTodayDateTime())) {
              emit(state.copyWith(nextCheckTime: state.schedule.afternoonShiftStart));
            } else if (state.currentTime.isBefore(state.schedule.afternoonShiftEnd.toTodayDateTime())) {
              emit(state.copyWith(nextCheckTime: state.schedule.afternoonShiftEnd));
            } else {
              emit(state.copyWith(nextCheckTime: state.schedule.morningShiftStart));
            }
          } else {
            if (state.failureOrTimekeeping!.fold((l) => false,
                (timekeeping) => timekeeping.morningShiftStart.maybeWhen(unknown: (_) => true, orElse: () => false))) {
              emit(state.copyWith(nextCheckTime: state.schedule.morningShiftStart));
            } else if (state.failureOrTimekeeping!.fold((l) => false,
                (timekeeping) => timekeeping.morningShiftEnd.maybeWhen(unknown: (_) => true, orElse: () => false))) {
              emit(state.copyWith(nextCheckTime: state.schedule.morningShiftEnd));
            } else if (state.failureOrTimekeeping!.fold(
                (l) => false,
                (timekeeping) =>
                    timekeeping.afternoonShiftStart.maybeWhen(unknown: (_) => true, orElse: () => false))) {
              emit(state.copyWith(nextCheckTime: state.schedule.afternoonShiftStart));
            } else if (state.failureOrTimekeeping!.fold((l) => false,
                (timekeeping) => timekeeping.afternoonShiftEnd.maybeWhen(unknown: (_) => true, orElse: () => false))) {
              emit(state.copyWith(nextCheckTime: state.schedule.afternoonShiftEnd));
            } else {
              emit(state.copyWith(nextCheckTime: state.schedule.morningShiftStart));
            }
          }
        },
        qrScanned: (isScanning) async {
          emit(state.copyWith(isChecking: isScanning, isLoading: false));
        },
        getTimekeeping: () async {
          debugPrint('getTimekeeping called');
          emit(state.copyWith(isChecking: false, isLoading: true));
          final failureOrTimekeeping = await _repository.getTimekeepingToday();
          emit(state.copyWith(failureOrTimekeeping: failureOrTimekeeping));
          add(const CheckinCheckoutScreenEvent.updateNextCheckTime());
          emit(state.copyWith(isLoading: false));
        },
      );
    });
  }

  @override
  Future<void> close() {
    _timer.cancel();
    return super.close();
  }
}
