import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/checkin_checkout/checkin_checkout_screen_bloc.dart';
import '../../../utils/extensions.dart';
import '../../routes/app_router.gr.dart';

class CurrentTimeClock extends StatelessWidget {
  const CurrentTimeClock({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CheckinCheckoutScreenBloc, CheckinCheckoutScreenState>(
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
        context.read<CheckinCheckoutScreenBloc>().add(const CheckinCheckoutScreenEvent.updateNextCheckTime());
        return Center(
          child: Text(
            state.nextCheckTime.toDateTime().toDisplayedTime(),
            style: TextStyle(color: Color(Colors.grey.value), fontSize: 30, fontWeight: FontWeight.w700),
          ),
        );
      },
    );
  }
}

class CheckButton extends StatelessWidget {
  const CheckButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        final bloc = BlocProvider.of<CheckinCheckoutScreenBloc>(context);
        bloc.add(const CheckinCheckoutScreenEvent.qrScanned(true));
        final isScanning = await AutoRouter.of(context).push<bool>(QrScannerScreen());
        bloc.add(CheckinCheckoutScreenEvent.qrScanned(isScanning!));
      },
      icon: const Icon(Icons.qr_code_scanner),
      iconSize: 64,
      color: Color(Colors.green.value),
    );
  }
}

class MorningShiftStartListTile extends StatelessWidget {
  const MorningShiftStartListTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CheckinCheckoutScreenBloc, CheckinCheckoutScreenState>(
      buildWhen: (previous, current) => previous.failureOrTimekeeping != current.failureOrTimekeeping,
      builder: (context, state) {
        return Card(
          child: ListTile(
            leading: CircleAvatar(child: Text(state.schedule.morningShiftStart.toDisplayText())),
            title: (state.failureOrTimekeeping == null)
                ? null
                : Text(state.failureOrTimekeeping!
                    .fold((_) => 'Lỗi server', (timekeeping) => timekeeping.morningShiftStart.toString())),
            trailing: (state.failureOrTimekeeping == null)
                ? null
                : state.failureOrTimekeeping!
                    .fold((_) => null, (timekeeping) => timekeeping.morningShiftStart.toIcon()),
          ),
        );
      },
    );
  }
}

class MorningShiftEndListTile extends StatelessWidget {
  const MorningShiftEndListTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CheckinCheckoutScreenBloc, CheckinCheckoutScreenState>(
      buildWhen: (previous, current) => previous.failureOrTimekeeping != current.failureOrTimekeeping,
      builder: (context, state) {
        return Card(
          child: ListTile(
            leading: CircleAvatar(
              child: Text(state.schedule.morningShiftEnd.toDisplayText()),
            ),
            title: (state.failureOrTimekeeping == null)
                ? null
                : Text(state.failureOrTimekeeping!
                    .fold((_) => 'Lỗi server', (timekeeping) => timekeeping.morningShiftEnd.toString())),
            trailing: (state.failureOrTimekeeping == null)
                ? null
                : state.failureOrTimekeeping!.fold((_) => null, (timekeeping) => timekeeping.morningShiftEnd.toIcon()),
          ),
        );
      },
    );
  }
}

class AfternoonShiftStartListTile extends StatelessWidget {
  const AfternoonShiftStartListTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CheckinCheckoutScreenBloc, CheckinCheckoutScreenState>(
      buildWhen: (previous, current) => previous.failureOrTimekeeping != current.failureOrTimekeeping,
      builder: (context, state) {
        return Card(
          child: ListTile(
            leading: CircleAvatar(
              child: Text(state.schedule.afternoonShiftStart.toDisplayText()),
            ),
            title: (state.failureOrTimekeeping == null)
                ? null
                : Text(state.failureOrTimekeeping!
                    .fold((_) => 'Lỗi server', (timekeeping) => timekeeping.afternoonShiftStart.toString())),
            trailing: (state.failureOrTimekeeping == null)
                ? null
                : state.failureOrTimekeeping!
                    .fold((_) => null, (timekeeping) => timekeeping.afternoonShiftStart.toIcon()),
          ),
        );
      },
    );
  }
}

class AfternoonShiftEndListTile extends StatelessWidget {
  const AfternoonShiftEndListTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CheckinCheckoutScreenBloc, CheckinCheckoutScreenState>(
      buildWhen: (previous, current) => previous.failureOrTimekeeping != current.failureOrTimekeeping,
      builder: (context, state) {
        return Card(
          child: ListTile(
            leading: CircleAvatar(
              child: Text(state.schedule.afternoonShiftEnd.toDisplayText()),
            ),
            title: (state.failureOrTimekeeping == null)
                ? null
                : Text(state.failureOrTimekeeping!
                    .fold((_) => 'Lỗi server', (timekeeping) => timekeeping.afternoonShiftEnd.toString())),
            trailing: (state.failureOrTimekeeping == null)
                ? null
                : state.failureOrTimekeeping!
                    .fold((_) => null, (timekeeping) => timekeeping.afternoonShiftEnd.toIcon()),
          ),
        );
      },
    );
  }
}
