import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/checkin_checkout/checkin_checkout_screen_bloc.dart';
import '../../../domain/timekeeping/afternoon_check_in/afternoon_check_in.dart';
import '../../../domain/timekeeping/afternoon_check_out/afternoon_check_out.dart';
import '../../../domain/timekeeping/morning_check_in/morning_check_in.dart';
import '../../../domain/timekeeping/morning_check_out/morning_check_out.dart';
import '../../../domain/timekeeping/timekeeping.dart';
import '../../../presentation/core/constant/ui_constant.dart' as ui_constant;
import '../../../utils/extensions.dart';
import '../../core/app_widgets.dart';
import '../../routes/app_router.gr.dart';

class CurrentTimeClock extends StatelessWidget {
  const CurrentTimeClock({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CheckinCheckoutScreenBloc, CheckinCheckoutScreenState>(
      buildWhen: (previous, current) => previous.currentTime != current.currentTime,
      builder: (context, state) {
        return Center(
          child: Text(
            state.currentTime.toDisplayedTime(),
            style: TextStyle(color: Color(Colors.grey.value), fontSize: 36, fontWeight: FontWeight.w700),
          ),
        );
      },
    );
  }
}

class NextCheckTime extends StatelessWidget {
  const NextCheckTime({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CheckinCheckoutScreenBloc, CheckinCheckoutScreenState>(
      buildWhen: (previous, current) => previous.nextCheckTime != current.nextCheckTime,
      builder: (context, state) {
        if (state.nextCheckTime == null) {
          context.read<CheckinCheckoutScreenBloc>().add(const CheckinCheckoutScreenEvent.updateNextCheckTime());
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        return Column(
          children: [
            const Center(child: TitleText('Thời gian điểm danh kế tiếp:')),
            const SizedBox(height: 16.0),
            Center(
              child: Text(
                state.nextCheckTime!.toTodayDateTime().toDisplayedTime(),
                style: TextStyle(color: Color(Colors.grey.value), fontSize: 30, fontWeight: FontWeight.w700),
              ),
            ),
          ],
        );
      },
    );
  }
}

class QrScanButton extends StatelessWidget {
  const QrScanButton({
    Key? key,
    required this.timekeeping,
  }) : super(key: key);

  final Timekeeping timekeeping;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CheckinCheckoutScreenBloc, CheckinCheckoutScreenState>(
      buildWhen: (previous, current) => previous.nextCheckTime != current.nextCheckTime,
      builder: (context, state) {
        if (state.nextCheckTime == timekeeping.morningCheckIn.scheduledTime ||
            state.nextCheckTime == timekeeping.afternoonCheckIn.scheduledTime) {
          return CheckInButton(
            nextCheckTime: state.nextCheckTime!,
          );
        } else if (state.nextCheckTime == timekeeping.morningCheckOut.scheduledTime ||
            state.nextCheckTime == timekeeping.afternoonCheckOut.scheduledTime) {
          return CheckOutButton(
            nextCheckTime: state.nextCheckTime!,
          );
        }
        return Container();
      },
    );
  }
}

class CheckInButton extends StatelessWidget {
  const CheckInButton({
    Key? key,
    required this.nextCheckTime,
  }) : super(key: key);

  final TimeOfDay nextCheckTime;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CheckinCheckoutScreenBloc, CheckinCheckoutScreenState>(
      buildWhen: (previous, current) =>
          previous.currentTime != current.currentTime &&
          current.currentTime.isAtSameMomentAs(nextCheckTime.toTodayDateTime()),
      builder: (context, state) {
        final bool isLate = state.currentTime.isAfter(nextCheckTime.toTodayDateTime());
        return Column(
          children: [
            IconButton(
              onPressed: () {
                context.read<CheckinCheckoutScreenBloc>().add(const CheckinCheckoutScreenEvent.qrScanning());
                AutoRouter.of(context).push(QrScannerScreen());
              },
              icon: const Icon(Icons.qr_code_scanner),
              iconSize: 76,
              color: (isLate) ? ui_constant.lateColor : ui_constant.onTimeColor,
            ),
            Center(
                child: Text('Check In',
                    style: TextStyle(color: (isLate) ? ui_constant.lateColor : ui_constant.onTimeColor))),
          ],
        );
      },
    );
  }
}

class CheckOutButton extends StatelessWidget {
  const CheckOutButton({
    Key? key,
    required this.nextCheckTime,
  }) : super(key: key);

  final TimeOfDay nextCheckTime;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CheckinCheckoutScreenBloc, CheckinCheckoutScreenState>(
      buildWhen: (previous, current) =>
          previous.currentTime != current.currentTime &&
          current.currentTime
              .isAtSameMomentAs(nextCheckTime.toTodayDateTime().subtract(MorningCheckOut.maxDurationForEarlyCheckOut)),
      builder: (context, state) {
        final bool isEarly = state.currentTime
            .isBefore(nextCheckTime.toTodayDateTime().subtract(MorningCheckOut.maxDurationForEarlyCheckOut));
        return Column(
          children: [
            IconButton(
              onPressed: (isEarly)
                  ? () {
                      earlyCheckOutPressed(context);
                    }
                  : () {
                      context.read<CheckinCheckoutScreenBloc>().add(const CheckinCheckoutScreenEvent.qrScanning());
                      AutoRouter.of(context).push(QrScannerScreen());
                    },
              icon: const Icon(Icons.qr_code_scanner),
              iconSize: 76,
              color: (isEarly) ? ui_constant.earlyColor : ui_constant.onTimeColor,
            ),
            Center(
                child: Text('Check Out',
                    style: TextStyle(color: (isEarly) ? ui_constant.earlyColor : ui_constant.onTimeColor))),
          ],
        );
      },
    );
  }

  void earlyCheckOutPressed(BuildContext context) {
    showMyDialog(context, title: 'Điểm danh', text: 'Còn quá sớm để Check Out, bạn chắc chứ?', action: [
      TextButton(
          onPressed: () {
            context.router.pop();
          },
          child: const Text('Không')),
      TextButton(
          onPressed: () async {
            context.read<CheckinCheckoutScreenBloc>().add(const CheckinCheckoutScreenEvent.qrScanning());
            context.router.pop();
            AutoRouter.of(context).push(QrScannerScreen());
          },
          child: const Text('Có')),
    ]);
  }
}

class MorningCheckInListTile extends StatelessWidget {
  const MorningCheckInListTile({
    Key? key,
    required this.morningCheckIn,
  }) : super(key: key);

  final MorningCheckIn morningCheckIn;

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.grey.shade300,
      color: Color(Colors.grey.shade100.value),
      child: ListTile(
          leading: CircleAvatar(
              backgroundColor: morningCheckIn.toColor(), child: Text(morningCheckIn.scheduledTime.toDisplayText())),
          title: Text(morningCheckIn.toCheckInStatusString()),
          trailing: morningCheckIn.toIcon()),
    );
  }
}

class MorningCheckOutListTile extends StatelessWidget {
  const MorningCheckOutListTile({
    Key? key,
    required this.morningCheckOut,
  }) : super(key: key);
  final MorningCheckOut morningCheckOut;

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.grey.shade300,
      color: Color(Colors.grey.shade100.value),
      child: ListTile(
          leading: CircleAvatar(
              backgroundColor: morningCheckOut.toColor(), child: Text(morningCheckOut.scheduledTime.toDisplayText())),
          title: Text(morningCheckOut.toCheckOutStatusString()),
          trailing: morningCheckOut.toIcon()),
    );
  }
}

class AfternoonCheckInListTile extends StatelessWidget {
  const AfternoonCheckInListTile({
    Key? key,
    required this.afternoonCheckIn,
  }) : super(key: key);
  final AfternoonCheckIn afternoonCheckIn;

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.grey.shade300,
      color: Color(Colors.grey.shade100.value),
      child: ListTile(
          leading: CircleAvatar(
              backgroundColor: afternoonCheckIn.toColor(), child: Text(afternoonCheckIn.scheduledTime.toDisplayText())),
          title: Text(afternoonCheckIn.toCheckInStatusString()),
          trailing: afternoonCheckIn.toIcon()),
    );
  }
}

class AfternoonCheckOutListTile extends StatelessWidget {
  const AfternoonCheckOutListTile({
    Key? key,
    required this.afternoonCheckOut,
  }) : super(key: key);
  final AfternoonCheckOut afternoonCheckOut;

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.grey.shade300,
      color: Color(Colors.grey.shade100.value),
      child: ListTile(
          leading: CircleAvatar(
              backgroundColor: afternoonCheckOut.toColor(),
              child: Text(afternoonCheckOut.scheduledTime.toDisplayText())),
          title: Text(afternoonCheckOut.toCheckOutStatusString()),
          trailing: afternoonCheckOut.toIcon()),
    );
  }
}
