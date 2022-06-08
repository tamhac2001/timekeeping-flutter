import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'absent_form_event.dart';

part 'absent_form_state.dart';

part 'absent_form_bloc.freezed.dart';

class AbsentFormBloc extends Bloc<AbsentFormEvent, AbsentFormState> {
  AbsentFormBloc() : super(AbsentFormState.initial()) {
    on<AbsentFormEvent>((event, emit) {
      event.when(
          startDatePicked: (startDate) {
            if (startDate != null) {
              emit(state.copyWith(startDate: startDate));
            }
          },
          endDatePicked: (endDate) {
            if (state.endDate != null && endDate == null) {
            } else {
              emit(state.copyWith(endDate: endDate));
            }
          },
          reasonChanged: (reason) => emit(state.copyWith(reason: reason)),
          noteChanged: (note) => emit(state.copyWith(note: note)),
          formSubmitted: () {
            emit(state.copyWith(isSubmitting: true));

            emit(state.copyWith(isSubmitting: false));
          },
          cancelled: () => emit(AbsentFormState.initial()));
    });
  }
}
