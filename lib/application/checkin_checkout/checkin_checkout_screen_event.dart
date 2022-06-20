part of 'checkin_checkout_screen_bloc.dart';

@freezed
class CheckinCheckoutScreenEvent with _$CheckinCheckoutScreenEvent {
  const factory CheckinCheckoutScreenEvent.clockTick() = ClockTick;

  const factory CheckinCheckoutScreenEvent.updateNextCheckTime() = UpdateNextCheckTime;

  const factory CheckinCheckoutScreenEvent.getSchedule() = GetSchedule;

  const factory CheckinCheckoutScreenEvent.qrScanned(bool isScanning) = QrScanned;

  const factory CheckinCheckoutScreenEvent.getTimekeeping() = GetTimekeeping;
}
