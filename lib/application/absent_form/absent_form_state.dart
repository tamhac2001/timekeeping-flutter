part of 'absent_form_bloc.dart';

@freezed
class AbsentFormState with _$AbsentFormState {
  const factory AbsentFormState({
    required AbsentForm absentForm,
    required bool isSubmitting,
    required Either<AbsentFailure, Unit>? failureOrUnit,
  }) = _AbsentFormState;

  factory AbsentFormState.initial() => AbsentFormState(
        absentForm: AbsentForm(
          startDate: DateTime.now(),
          endDate: DateTime.now(),
          reason: const Reason.ill(),
          note: '',
        ),
        isSubmitting: false,
        failureOrUnit: null,
      );
}
