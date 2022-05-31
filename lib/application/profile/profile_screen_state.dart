part of 'profile_screen_bloc.dart';

@freezed
class ProfileScreenState with _$ProfileScreenState {
  const factory ProfileScreenState({
    required User? user,
    required bool isSubmitting,
    required bool? profileChangedSuccessOrFail,
  }) = _ProfileScreenState;

  factory ProfileScreenState.initial() => const ProfileScreenState(
      user: null, isSubmitting: false, profileChangedSuccessOrFail: null);
}
