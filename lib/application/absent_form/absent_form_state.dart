part of 'absent_form_bloc.dart';

@freezed
class AbsentFormState with _$AbsentFormState {
  const factory AbsentFormState({
    required DateTime startDate,
    required DateTime? endDate,
    required String reason,
    required String note,
    required bool isSubmitting,
    required bool? successOrFail,
  }) = _AbsentFormState;

  factory AbsentFormState.initial() => AbsentFormState(
        startDate: DateTime.now(),
        endDate: null,
        reason: 'benh',
        note: '',
        isSubmitting: true,
        successOrFail: null,
      );
}
