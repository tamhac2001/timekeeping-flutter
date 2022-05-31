

import 'user_dto.dart';

abstract class IUserApiClient {
  Future<UserDTO> fetchData(String accessToken);
}
