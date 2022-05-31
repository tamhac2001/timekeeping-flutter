
import '../../domain/user/user.dart';
import 'i_user_api_client.dart';
import 'user_dto.dart';

class FakeUserApiClient implements IUserApiClient {
  @override
  Future<UserDTO> fetchData(String accessToken) async {
    return await Future.delayed(const Duration(seconds: 1)).then((_) => UserDTO(
        name: 'abc',
        gender: Gender.male,
        phoneNumber: '0123456789',
        address: 'Can Tho',
        profilePicture: '',
        startDate: DateTime(2022, 5, 23)));
  }
}
