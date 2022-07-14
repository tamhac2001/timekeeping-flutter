part of 'absent_form_bloc.dart';

@freezed
class AbsentFormState with _$AbsentFormState {
  const factory AbsentFormState({
    required AbsentForm absentForm,
    required Either<AbsentFailure, Unit>? failureOrUnit,
    required Either<AbsentFailure, List<AbsentForm>>? absentFailureOrAbsentFormList,
    required List<AbsentForm> absentFormListAfterToday,
    required bool isLoading,
    required bool isSubmitting,
  }) = _AbsentFormState;

  factory AbsentFormState.initial() {
    return AbsentFormState(
      absentForm: AbsentForm.initial(),
      failureOrUnit: null,
      absentFailureOrAbsentFormList: null,
      absentFormListAfterToday: List.empty(),
      isLoading: false,
      isSubmitting: false,
    );
  }
}
