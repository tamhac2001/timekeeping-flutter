import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:meta/meta.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'connectivity_bloc.freezed.dart';

part 'connectivity_event.dart';

part 'connectivity_state.dart';

class ConnectivityBloc extends Bloc<ConnectivityEvent, ConnectivityState> {
  final _connectivity = Connectivity();

  ConnectivityBloc() : super(const ConnectivityState.initial()) {
    on<ConnectivityEvent>((event, emit) async {
      await event.when(
        initialized: () async {
          add(ConnectivityEvent.networkChanged(await _connectivity.checkConnectivity()));
          await emit.onEach<ConnectivityResult>(
            _connectivity.onConnectivityChanged,
            onData: (connectivityResult) => add(ConnectivityEvent.networkChanged(connectivityResult)),
          );
        },
        networkChanged: (connectivityResult) {
          debugPrint('networkChanged called');
          if (connectivityResult == ConnectivityResult.none) {
            emit(const ConnectivityState.noInternetAccess());
          } else {
            emit(const ConnectivityState.internetAccess());
          }
        },
      );
    }, transformer: concurrent());
  }
}
