import 'dart:async';
import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:timekeeping/domain/employee/employee.dart';
import 'package:timekeeping/domain/employee/profile_changed_failure.dart';
import 'package:timekeeping/infrastructure/employee/employee_repository.dart';

import '../../domain/employee/employee_failure.dart';
import '../../infrastructure/secure_storage/secure_storage_repository.dart';

part 'profile_screen_event.dart';

part 'profile_screen_state.dart';

part 'profile_screen_bloc.freezed.dart';

class ProfileScreenBloc extends Bloc<ProfileScreenEvent, ProfileScreenState> {
  final EmployeeRepository _employeeRepository;

  ProfileScreenBloc({
    required EmployeeRepository employeeRepository,
  })  : _employeeRepository = employeeRepository,
        super(ProfileScreenState.initial()) {
    on<ProfileScreenEvent>((event, emit) async {
      await event.when(
        employeeRequest: () async {
          emit(state.copyWith(
            isLoading: true,
          ));
          final failureOrEmployee = await _employeeRepository.getEmployee();
          debugPrint(failureOrEmployee.toString());
          emit(state.copyWith(
            failureOrEmployee: failureOrEmployee,
          ));
          emit(state.copyWith(
            isLoading: false,
          ));
        },
        avatarChanged: (avatar) async {
          emit(state.copyWith(isSubmitting: true));
          await _employeeRepository.updateAvatar(avatar);
          emit(state.copyWith(isSubmitting: false));
        },
      );
    });
  }
}
