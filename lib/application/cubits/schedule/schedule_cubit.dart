import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import '../../../domain/schedule/schedule.dart';
import '../../../domain/schedule/schedule_failure.dart';
import '../../../infrastructure/schedule/schedule_repository.dart';
import '../employee_cubit.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule_cubit.freezed.dart';

part 'schedule_state.dart';

class ScheduleCubit extends Cubit<ScheduleState> {
  final ScheduleRepository _repository;
  final EmployeeCubit _employeeCubit;

  ScheduleCubit({required ScheduleRepository repository, required EmployeeCubit employeeCubit})
      : _repository = repository,
        _employeeCubit = employeeCubit,
        super(ScheduleState.initial());

  Future<void> scheduleRequest() async {
    debugPrint('schedule Request called');
    emit(state.copyWith(isLoading: true));
    if (_employeeCubit.state == null || _employeeCubit.state!.isLeft()) {
      await _employeeCubit.employeeRequest();
    }
    await _employeeCubit.state!.fold(
      (failure) async {
        debugPrint('schedule request: $failure');
        failure.when(
            timeOutError: () =>
                emit(state.copyWith(scheduleFailureOrSchedule: left(const ScheduleFailure.serverError()))),
            serverError: () =>
                emit(state.copyWith(scheduleFailureOrSchedule: left(const ScheduleFailure.serverError()))),
            unAuthenticated: () =>
                emit(state.copyWith(scheduleFailureOrSchedule: left(const ScheduleFailure.unAuthenticated()))),
            noInternetAccess: () =>
                emit(state.copyWith(scheduleFailureOrSchedule: left(const ScheduleFailure.noInternetAccess()))),
            noEmployeeFound: () =>
                emit(state.copyWith(scheduleFailureOrSchedule: left(const ScheduleFailure.serverError()))));
      },
      (employee) async {
        final scheduleFailureOrSchedule = await _repository.getSchedule(employeeId: employee.id.toString());
        emit(state.copyWith(scheduleFailureOrSchedule: scheduleFailureOrSchedule));
      },
    );
    emit(state.copyWith(isLoading: false));
  }

  void resetState() {
    emit(ScheduleState.initial());
  }
}
