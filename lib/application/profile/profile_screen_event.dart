part of 'profile_screen_bloc.dart';

@freezed
class ProfileScreenEvent with _$ProfileScreenEvent {
  const factory ProfileScreenEvent.userLoaded(User user) = UserLoaded;
  const factory ProfileScreenEvent.profilePictureChanged(Uint8List profilePicture) = ProfilePictureChanged;
}
