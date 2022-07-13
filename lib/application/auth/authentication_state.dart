part of 'authentication_bloc.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const AuthenticationState._();

  const factory AuthenticationState.initial() = _Initial;

  const factory AuthenticationState.authenticated() = _Authenticated;

  const factory AuthenticationState.unauthenticated() = _Unauthenticated;
}
