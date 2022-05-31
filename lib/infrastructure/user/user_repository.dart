
import 'dart:typed_data';

import '../../domain/user/user.dart';
import 'i_user_api_client.dart';



class UserRepository {
  final IUserApiClient _apiClient;
  final String _accessToken;

  UserRepository(this._apiClient, this._accessToken);

  Future<User> getUser() async {
    return User.fromUserDTO(await _apiClient.fetchData(_accessToken));
  }

  Future<void> assignWorkSchedule() async {}

  Future<void> updateProfilePicture(Uint8List profilePicture) async {}
}
