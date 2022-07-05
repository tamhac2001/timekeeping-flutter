part of 'connectivity_bloc.dart';

@freezed
class ConnectivityEvent with _$ConnectivityEvent {
  const factory ConnectivityEvent.initialized() = _Initialized;
  const factory ConnectivityEvent.networkChanged(ConnectivityResult connectivityResult) = _NetworkChanged;
}
