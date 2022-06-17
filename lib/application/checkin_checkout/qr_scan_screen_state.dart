part of 'qr_scan_screen_bloc.dart';

@freezed
class QrScanScreenState with _$QrScanScreenState {
  const factory QrScanScreenState({
    required bool isSubmitting,
    required Either<TimekeepingFailure, Unit>? failureOrUnit,
  }) = _QrScanScreenState;

  factory QrScanScreenState.initial() =>
      const QrScanScreenState(isSubmitting: false, failureOrUnit: null);
}
