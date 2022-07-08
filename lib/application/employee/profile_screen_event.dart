part of 'profile_screen_bloc.dart';

@freezed
class ProfileScreenEvent with _$ProfileScreenEvent {
  const factory ProfileScreenEvent.employeeRequest() = EmployeeRequest;

  const factory ProfileScreenEvent.avatarChanged(Uint8List profilePicture) =
      AvatarChanged;
}
