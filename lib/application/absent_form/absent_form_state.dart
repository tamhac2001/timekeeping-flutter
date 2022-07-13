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
    final now = DateTime.now();
    final tomorrow = DateTime(now.year, now.month, now.day).add(const Duration(days: 1));
    return AbsentFormState(
      absentForm: AbsentForm(
        startDate: tomorrow,
        endDate: tomorrow,
        reason: const Reason.ill(),
        note: '',
        status: null,
      ),
      failureOrUnit: null,
      absentFailureOrAbsentFormList: null,
      absentFormListAfterToday: List.empty(),
      isLoading: false,
      isSubmitting: false,
    );
  }
}
