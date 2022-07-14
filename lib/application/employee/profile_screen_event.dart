part of 'profile_screen_bloc.dart';

@freezed
class ProfileScreenEvent with _$ProfileScreenEvent {
  const factory ProfileScreenEvent.initialize() = _Initialize;

  const factory ProfileScreenEvent.updateEmployee() = _UpdateEmployee;

  const factory ProfileScreenEvent.avatarChanged(Uint8List profilePicture) = _AvatarChanged;

  const factory ProfileScreenEvent.resetState() = _ResetState;
}
