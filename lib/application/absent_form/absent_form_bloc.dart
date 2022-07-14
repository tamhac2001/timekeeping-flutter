import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:timekeeping/utils/extensions.dart';

import '../../domain/absent/absent_failure.dart';
import '../../domain/absent/absent_form.dart';
import '../../domain/absent/reason/reason.dart';
import '../../infrastructure/absent/absent_repository.dart';
import '../cubits/absent_list_cubit.dart';

part 'absent_form_event.dart';

part 'absent_form_state.dart';

part 'absent_form_bloc.freezed.dart';

class AbsentFormBloc extends Bloc<AbsentFormEvent, AbsentFormState> {
  final AbsentRepository _repository;
  final AbsentListCubit _absentListCubit;

  AbsentFormBloc({required AbsentRepository repository, required AbsentListCubit absentListCubit})
      : _repository = repository,
        _absentListCubit = absentListCubit,
        super(AbsentFormState.initial()) {
    on<AbsentFormEvent>((event, emit) async {
      await event.when(
        getAbsentFormList: () async {
          emit(state.copyWith(isLoading: true));
          if (_absentListCubit.state == null || _absentListCubit.state!.isLeft()) {
            await _absentListCubit.absentListRequest();
          }
          if (state.failureOrUnit != null && state.failureOrUnit!.isRight()) {
            await _absentListCubit.absentListRequest();
          }
          _absentListCubit.state!.fold(
            (failure) {
              emit(state.copyWith(absentFailureOrAbsentFormList: left(failure)));
              emit(state.copyWith(isLoading: false));
              return;
            },
            (absentFormList) => emit(state.copyWith(absentFailureOrAbsentFormList: right(absentFormList))),
          );
          final absentFormList = absentListCubit.state!.fold((l) => List<AbsentForm>.empty(), id);
          // sort end date from latest date backward
          absentFormList.sort((a, b) => a.endDate.compareTo(b.endDate));
          final sortedAbsentFormList = absentFormList.reversed.toList();

          final displayedAbsentFormList = List<AbsentForm>.empty(growable: true);
          final today = DateTimeX.today();
          for (AbsentForm absentForm in sortedAbsentFormList) {
            if (today.isBefore(absentForm.endDate)) {
              displayedAbsentFormList.add(absentForm);
            } else {
              break;
            }
          }
          emit(state.copyWith(absentFormListAfterToday: displayedAbsentFormList));
          emit(state.copyWith(failureOrUnit: null, isLoading: false));
        },
        startDatePicked: (startDate) async {
          emit(state.copyWith(failureOrUnit: null));
          if (startDate != null) {
            emit(state.copyWith(failureOrUnit: null, absentForm: state.absentForm.copyWith(startDate: startDate)));
            if (startDate.isAfter(state.absentForm.endDate)) {
              emit(state.copyWith(failureOrUnit: null, absentForm: state.absentForm.copyWith(endDate: startDate)));
            }
          }
        },
        endDatePicked: (endDate) async {
          emit(state.copyWith(failureOrUnit: null));
          if (endDate != null) {
            emit(state.copyWith(failureOrUnit: null, absentForm: state.absentForm.copyWith(endDate: endDate)));
          }
        },
        reasonChanged: (reason) async =>
            emit(state.copyWith(failureOrUnit: null, absentForm: state.absentForm.copyWith(reason: reason))),
        noteChanged: (note) async =>
            emit(state.copyWith(failureOrUnit: null, absentForm: state.absentForm.copyWith(note: note))),
        formSubmitted: () async {
          emit(state.copyWith(isSubmitting: true));
          final failureOrUnit = await _repository.createAbsentForm(absentForm: state.absentForm);
          emit(state.copyWith(failureOrUnit: failureOrUnit));
          emit(state.copyWith(isSubmitting: false));
          add(const AbsentFormEvent.getAbsentFormList());
        },
        cancelled: () async => emit(state.copyWith(absentForm: AbsentForm.initial())),
        resetState: () {
          emit(AbsentFormState.initial());
        },
      );
    });
  }
}
