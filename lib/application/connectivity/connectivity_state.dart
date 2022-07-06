part of 'connectivity_bloc.dart';

@freezed
class ConnectivityState with _$ConnectivityState {
  const ConnectivityState._();

  const factory ConnectivityState.initial() = _Initial;

  const factory ConnectivityState.internetAccess() = _InternetAccess;

  const factory ConnectivityState.noInternetAccess() = _NoInternetAccess;

  void whenHasInternetAccess(BuildContext context, void Function() callbackFunction) {
    when(initial: () {}, internetAccess: callbackFunction, noInternetAccess: () => showNoInternetAccessDialog(context));
  }
}
