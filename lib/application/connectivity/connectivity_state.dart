part of 'connectivity_bloc.dart';

@freezed
class ConnectivityState with _$ConnectivityState {
  const factory ConnectivityState.initial() = _Initial;

  const factory ConnectivityState.internetAccess() = _InternetAccess;

  const factory ConnectivityState.noInternetAccess() = _NoInternetAccess;
}
