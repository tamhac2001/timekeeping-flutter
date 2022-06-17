import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../infrastructure/secure_storage/secure_storage_repository.dart';
import '../utils/extensions.dart';

part 'checkin_checkout_screen_bloc.freezed.dart';
part 'checkin_checkout_screen_event.dart';
part 'checkin_checkout_screen_state.dart';

class CheckinCheckoutScreenBloc
    extends Bloc<CheckinCheckoutScreenEvent, CheckinCheckoutScreenState> {
  late final Timer _timer;

  final SecureStorageRepository _storage;

  CheckinCheckoutScreenBloc({required SecureStorageRepository storage})
      : _storage = storage,
        super(CheckinCheckoutScreenState.empty()) {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      add(const CheckinCheckoutScreenEvent.clockTick());
      add(const CheckinCheckoutScreenEvent.updateNextCheckTime());
    });

    on<CheckinCheckoutScreenEvent>((event, emit) async {
      await event.when(
        clockTick: () async =>
            emit(state.copyWith(currentTime: DateTime.now())),
        getSchedule: () async {
          emit(state.copyWith(
            isLoading: true,
          ));
          final morningShiftStart = await _storage.morningShiftStart;
          final morningShiftEnd = await _storage.morningShiftEnd;
          final afternoonShiftStart = await _storage.afternoonShiftStart;
          final afternoonShiftEnd = await _storage.afternoonShiftEnd;
          emit(state.copyWith(
            morningShiftStart: morningShiftStart!,
            morningShiftEnd: morningShiftEnd!,
            afternoonShiftStart: afternoonShiftStart!,
            afternoonShiftEnd: afternoonShiftEnd!,
          ));
          emit(state.copyWith(
            isLoading: false,
          ));
        },
        updateNextCheckTime: () async {
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
          }
        },
        qrScanned: () async {},
      );
    });
  }

  @override
  void onEvent(CheckinCheckoutScreenEvent event) {
    super.onEvent(event);
  }

  @override
  Future<void> close() {
    _timer.cancel();
    return super.close();
  }
}
