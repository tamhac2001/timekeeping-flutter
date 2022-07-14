import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';
import 'package:timekeeping/domain/employee/employee.dart';
import 'package:timekeeping/infrastructure/employee/employee_repository.dart';

import '../../domain/employee/employee_failure.dart';
import '../cubits/employee_cubit.dart';

part 'profile_screen_bloc.freezed.dart';

part 'profile_screen_event.dart';

part 'profile_screen_state.dart';

class ProfileScreenBloc extends Bloc<ProfileScreenEvent, ProfileScreenState> {
  final EmployeeRepository _employeeRepository;
  final EmployeeCubit _employeeCubit;

  ProfileScreenBloc({
    required EmployeeRepository employeeRepository,
    required EmployeeCubit employeeCubit,
  })  : _employeeRepository = employeeRepository,
        _employeeCubit = employeeCubit,
        super(ProfileScreenState.initial()) {
    on<ProfileScreenEvent>((event, emit) async {
      await event.when(
        initialize: () async {
          emit(state.copyWith(isLoading: true));
          if (_employeeCubit.state == null || _employeeCubit.state!.isLeft()) {
            await _employeeCubit.employeeRequest();
          }
          emit(state.copyWith(failureOrEmployee: _employeeCubit.state));
          emit(state.copyWith(isLoading: false));
        },
        updateEmployee: () async {
          debugPrint('profile screen: update employee called');
          emit(state.copyWith(profileChangedSuccessOrFail: null, isLoading: true));
          await _employeeCubit.employeeRequest();
          emit(state.copyWith(failureOrEmployee: _employeeCubit.state));
          emit(state.copyWith(isLoading: false));
        },
        avatarChanged: (avatar) async {
          emit(state.copyWith(isSubmitting: true));
          final profileChangeFailureOrUnit = await _employeeRepository.updateAvatar(avatar);
          emit(state.copyWith(profileChangedSuccessOrFail: profileChangeFailureOrUnit));
          if (state.profileChangedSuccessOrFail!.isRight()) {
            await Future.delayed(const Duration(seconds: 3));
            add(const ProfileScreenEvent.updateEmployee());
          }
          emit(state.copyWith(isSubmitting: false));
        },
        resetState: () {
          emit(ProfileScreenState.initial());
        },
      );
    });
  }
}
