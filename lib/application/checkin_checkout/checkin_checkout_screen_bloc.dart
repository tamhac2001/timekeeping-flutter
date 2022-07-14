import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/absent/absent_form.dart';
import '../../domain/timekeeping/afternoon_check_in/afternoon_check_in.dart';
import '../../domain/timekeeping/afternoon_check_out/afternoon_check_out.dart';
import '../../domain/timekeeping/morning_check_in/morning_check_in.dart';
import '../../domain/timekeeping/morning_check_out/morning_check_out.dart';
import '../../domain/timekeeping/timekeeping.dart';
import '../../domain/timekeeping/timekeeping_failure.dart';
import '../../infrastructure/timekeeping/timekeeping_repository.dart';
import '../../utils/extensions.dart';
import '../cubits/absent_list_cubit.dart';
import '../cubits/timekeeping_cubit.dart';

part 'checkin_checkout_screen_bloc.freezed.dart';

part 'checkin_checkout_screen_event.dart';

part 'checkin_checkout_screen_state.dart';

class CheckinCheckoutScreenBloc extends Bloc<CheckinCheckoutScreenEvent, CheckinCheckoutScreenState> {
  late final Timer _timer;

  final AbsentListCubit _absentListCubit;
  final TimekeepingCubit _timekeepingCubit;

  CheckinCheckoutScreenBloc({
    required AbsentListCubit absentListCubit,
    required TimekeepingCubit timekeepingCubit,
  })  : _absentListCubit = absentListCubit,
        _timekeepingCubit = timekeepingCubit,
        super(CheckinCheckoutScreenState.empty()) {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      add(const CheckinCheckoutScreenEvent.clockTick());
    });
    on<CheckinCheckoutScreenEvent>((event, emit) async {
      await event.when(
        getTimekeeping: () async {
          debugPrint('getTimekeeping called');
          emit(state.copyWith(isLoading: true));
          if (state.isDayOff == null) {
            add(const CheckinCheckoutScreenEvent.updateIsDayOff());
          }
          if (state.isDayOff == false) {
            if (_timekeepingCubit.state == null || _timekeepingCubit.state!.isLeft()) {
              await _timekeepingCubit.timekeepingRequest();
            }
            if (state.timekeepingFailureOrTimekeeping != null && state.timekeepingFailureOrTimekeeping!.isLeft()) {
              await _timekeepingCubit.timekeepingRequest();
            }
            debugPrint('state is checking: ${state.isChecking}');
            if (state.isChecking) {
              debugPrint('state is checking timekeeping request');
              await _timekeepingCubit.timekeepingRequest();
              emit(state.copyWith(isChecking: false));
            }
            emit(state.copyWith(timekeepingFailureOrTimekeeping: _timekeepingCubit.state));
            add(const CheckinCheckoutScreenEvent.updateNextCheckTime());
          }
          emit(state.copyWith(isLoading: false));
        },
        clockTick: () async {
          final now = DateTime.now();
          if (state.timekeepingFailureOrTimekeeping != null) {
            state.timekeepingFailureOrTimekeeping!.fold((f) => null, (timekeeping) {
              if (timekeeping.isFinish()) {
                _timer.cancel();
              } else if (!timekeeping.morningCheckIn.isUnknown() &&
                  now.isAtSameMomentAs(timekeeping.morningCheckIn.scheduledTime
                      .toTodayDateTime()
                      .add(MorningCheckIn.maxDurationForLateCheckIn))) {
                add(const CheckinCheckoutScreenEvent.getTimekeeping());
              } else if (!timekeeping.morningCheckOut.isUnknown() &&
                  now.isAtSameMomentAs(timekeeping.morningCheckOut.scheduledTime
                      .toTodayDateTime()
                      .add(MorningCheckOut.maxDurationForCheckOut))) {
                add(const CheckinCheckoutScreenEvent.getTimekeeping());
              } else if (!timekeeping.afternoonCheckIn.isUnknown() &&
                  now.isAtSameMomentAs(timekeeping.afternoonCheckIn.scheduledTime
                      .toTodayDateTime()
                      .add(AfternoonCheckIn.maxDurationForLateCheckIn))) {
                add(const CheckinCheckoutScreenEvent.getTimekeeping());
              } else if (!timekeeping.afternoonCheckOut.isUnknown() &&
                  now.isAtSameMomentAs(timekeeping.afternoonCheckOut.scheduledTime
                      .toTodayDateTime()
                      .add(AfternoonCheckOut.maxDurationForCheckOut))) {
                add(const CheckinCheckoutScreenEvent.getTimekeeping());
              }
            });
            emit(state.copyWith(currentTime: now));
          }
        },
        updateNextCheckTime: () async {
          state.timekeepingFailureOrTimekeeping!.fold((l) => null, (timekeeping) {
            if (timekeeping.isFinish()) {
              emit(state.copyWith(nextCheckTime: TimeOfDayX.empty()));
            } else {
              if (timekeeping.morningCheckIn.isUnknown()) {
                emit(state.copyWith(nextCheckTime: timekeeping.morningCheckIn.scheduledTime));
              } else if (timekeeping.morningCheckOut.isUnknown()) {
                emit(state.copyWith(nextCheckTime: timekeeping.morningCheckOut.scheduledTime));
              } else if (timekeeping.afternoonCheckIn.isUnknown()) {
                emit(state.copyWith(nextCheckTime: timekeeping.afternoonCheckIn.scheduledTime));
              } else if (timekeeping.afternoonCheckOut.isUnknown()) {
                emit(state.copyWith(nextCheckTime: timekeeping.afternoonCheckOut.scheduledTime));
              }
            }
          });
        },
        updateIsDayOff: () async {
          emit(state.copyWith(isChecking: false, isLoading: true));
          if (_absentListCubit.state == null) {
            await _absentListCubit.absentListRequest();
          }
          if (state.timekeepingFailureOrTimekeeping != null && state.timekeepingFailureOrTimekeeping!.isLeft()) {
            await _absentListCubit.absentListRequest();
          }
          if (_absentListCubit.state!.isLeft()) {
            _absentListCubit.state!.fold(
                (failure) => failure.when(
                      serverError: () => emit(state.copyWith(
                          timekeepingFailureOrTimekeeping: left(const TimekeepingFailure.serverError()))),
                      unAuthenticated: () => emit(state.copyWith(
                          timekeepingFailureOrTimekeeping: left(const TimekeepingFailure.unAuthenticated()))),
                      noInternetAccess: () {
                        emit(state.copyWith(
                            timekeepingFailureOrTimekeeping: left(const TimekeepingFailure.noInternetAccess())));
                      },
                    ),
                (absentList) => null);
            emit(state.copyWith(isLoading: false));
            return;
          }
          final today = DateTime.now();
          if (today.weekday == 6 || today.weekday == 7) {
            emit(state.copyWith(isDayOff: true));
            emit(state.copyWith(isLoading: false));
            return;
          }
          final absentList = _absentListCubit.state!.fold((_) => null, id);
          for (AbsentForm absentForm in absentList!) {
            if (today.isAfter(absentForm.startDate) &&
                today.isBefore(absentForm.endDate.add(const Duration(days: 1))) &&
                absentForm.status!.isApproved()) {
              emit(state.copyWith(isDayOff: true, isLoading: false));
              return;
            }
          }
          if (state.isDayOff == null) {
            emit(state.copyWith(isDayOff: false));
          }
          emit(state.copyWith(isLoading: false));
        },
        qrScanning: () {
          debugPrint('is scanning');
          emit(state.copyWith(isChecking: true, isLoading: false));
          debugPrint('qr scanning: ${state.isChecking}');
        },
        resetState: () {
          emit(CheckinCheckoutScreenState.empty());
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
