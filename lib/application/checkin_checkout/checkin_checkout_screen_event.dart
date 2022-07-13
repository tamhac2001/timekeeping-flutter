part of 'checkin_checkout_screen_bloc.dart';

@freezed
class CheckinCheckoutScreenEvent with _$CheckinCheckoutScreenEvent {
  const factory CheckinCheckoutScreenEvent.clockTick() = _ClockTick;

  const factory CheckinCheckoutScreenEvent.updateNextCheckTime() = _UpdateNextCheckTime;

  const factory CheckinCheckoutScreenEvent.qrScanning() = _QrScanning;

  const factory CheckinCheckoutScreenEvent.getTimekeeping() = _GetTimekeeping;

  const factory CheckinCheckoutScreenEvent.updateIsDayOff() = _UpdateIsDayOff;
}
