part of 'qr_scan_screen_bloc.dart';

@freezed
class QrScanScreenEvent with _$QrScanScreenEvent {
  const factory QrScanScreenEvent.qrCodeScanned(String qrCodeValue) = QrCodeScanned;

  const factory QrScanScreenEvent.reset() = Reset;
}
