part of 'profile_screen_bloc.dart';

@freezed
class ProfileScreenState with _$ProfileScreenState {
  const factory ProfileScreenState({
    required Either<EmployeeFailure, Employee>? failureOrEmployee,
    required Either<EmployeeFailure, Unit>? profileChangedSuccessOrFail,
    required bool isSubmitting,
    required bool isLoading,
    required bool isSigningOut,
  }) = _ProfileScreenState;

  factory ProfileScreenState.initial() => const ProfileScreenState(
      failureOrEmployee: null,
      isSubmitting: false,
      isLoading: false,
      profileChangedSuccessOrFail: null,
      isSigningOut: false);
}
