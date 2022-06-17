import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:timekeeping/domain/timekeeping/timekeeping.dart';
import 'package:timekeeping/infrastructure/timekeeping/timekeeping_repository.dart';

import '../../domain/timekeeping/timekeeping_failure.dart';
import '../../infrastructure/secure_storage/secure_storage_repository.dart';

part 'qr_scan_screen_bloc.freezed.dart';

part 'qr_scan_screen_event.dart';

part 'qr_scan_screen_state.dart';

class QrScanScreenBloc extends Bloc<QrScanScreenEvent, QrScanScreenState> {
  final TimekeepingRepository _repository;

  QrScanScreenBloc({required TimekeepingRepository repository})
      : _repository = repository,
        super(QrScanScreenState.initial()) {
    on<QrScanScreenEvent>((event, emit) async {
      await event.when(qrCodeScanned: (qrCodeValue) async {
        emit(state.copyWith(isSubmitting: true));
        final failureOrUnit =
            await _repository.qrCheck(Timekeeping(qrCodeValue: qrCodeValue));
        emit(state.copyWith(failureOrUnit: failureOrUnit));
        emit(state.copyWith(isSubmitting: false));
      }, screenReset: () {
        emit(state.copyWith(failureOrUnit: null));
      });
    });
  }
}
