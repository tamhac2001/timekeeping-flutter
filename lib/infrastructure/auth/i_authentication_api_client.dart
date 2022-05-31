abstract class IAuthenticationApiClient{
  Future<Map<String,dynamic>> login(String email,String password);
  
}