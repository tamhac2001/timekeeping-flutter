part of 'authentication_bloc.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  // const factory AuthenticationState({
  //   required String accessToken,
  //   required DateTime? expireDate,
  // }) = _AuthenticationState;

  const factory AuthenticationState.initial() =
  Initial;

  const factory AuthenticationState.authenticated(String accessToken,
      DateTime expireDate) = Authenticated;

  const factory AuthenticationState.unauthenticated() = Unauthenticated;
}