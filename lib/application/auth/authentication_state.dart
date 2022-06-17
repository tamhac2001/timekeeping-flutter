part of 'authentication_bloc.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const AuthenticationState._();

  const factory AuthenticationState.initial() = Initial;

  const factory AuthenticationState.authenticated(
      String accessToken, String employeeId) = Authenticated;

  const factory AuthenticationState.unauthenticated() = Unauthenticated;
}
