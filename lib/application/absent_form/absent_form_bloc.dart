import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:timekeeping/infrastructure/absent/absent_repository.dart';

import '../../domain/absent/absent_failure.dart';
import '../../domain/absent/absent_form.dart';
import '../../domain/absent/reason.dart';

part 'absent_form_event.dart';

part 'absent_form_state.dart';

part 'absent_form_bloc.freezed.dart';

class AbsentFormBloc extends Bloc<AbsentFormEvent, AbsentFormState> {
  final AbsentRepository _repository;

  AbsentFormBloc({required AbsentRepository repository})
      : _repository = repository,
        super(AbsentFormState.initial()) {
    on<AbsentFormEvent>((event, emit) async {
      await event.when(
          startDatePicked: (startDate) async {
            if (startDate != null) {
              emit(state.copyWith(
                  absentForm: state.absentForm.copyWith(startDate: startDate)));
              if (startDate.isAfter(state.absentForm.endDate)) {
                emit(state.copyWith(
                    absentForm: state.absentForm.copyWith(endDate: startDate)));
              }
            }
          },
          endDatePicked: (endDate) async {
            if (endDate != null) {
              emit(state.copyWith(
                  absentForm: state.absentForm.copyWith(endDate: endDate)));
            }
          },
          reasonChanged: (reason) async => emit(state.copyWith(
              absentForm: state.absentForm.copyWith(reason: reason))),
          noteChanged: (note) async => emit(state.copyWith(
              absentForm: state.absentForm.copyWith(note: note))),
          formSubmitted: () async {
            emit(state.copyWith(isSubmitting: true));
            final failureOrUnit = await _repository.createAbsentForm(
                absentForm: state.absentForm);
            emit(state.copyWith(failureOrUnit: failureOrUnit));
            emit(state.copyWith(isSubmitting: false));
          },
          cancelled: () async => emit(AbsentFormState.initial()));
    });
  }
}
