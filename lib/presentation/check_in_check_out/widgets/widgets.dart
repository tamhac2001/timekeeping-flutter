import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/checkin_checkout/checkin_checkout_screen_bloc.dart';
import '../../../utils/extensions.dart';
import '../../core/app_widgets.dart';
import '../../routes/app_router.gr.dart';
import '../../../constants.dart' as constant;

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
        // context.read<CheckinCheckoutScreenBloc>().add(const CheckinCheckoutScreenEvent.updateNextCheckTime());
        return Center(
          child: Text(
            state.nextCheckTime.toTodayDateTime().toDisplayedTime(),
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
    return BlocBuilder<CheckinCheckoutScreenBloc, CheckinCheckoutScreenState>(
      // buildWhen: (previous, current) => previous.failureOrTimekeeping != current.failureOrTimekeeping,
      builder: (context, state) {
        if (state.failureOrTimekeeping == null) {
          return Container();
        } else {
          return IconButton(
            onPressed: ((state.nextCheckTime == state.schedule.morningShiftEnd ||
                        state.nextCheckTime == state.schedule.afternoonShiftEnd) &&
                    state.currentTime.isBefore(
                        state.nextCheckTime.toTodayDateTime().subtract(constant.durationForValidCheckOutTime)))
                ? () => {
                      showMyDialog(context,
                          title: 'Điểm danh',
                          text: 'Còn quá sớm để check out, bạn chắc chứ?',
                          action: [
                            TextButton(
                                onPressed: () {
                                  context.router.pop();
                                },
                                child: const Text('Không')),
                            TextButton(
                                onPressed: () async {
                                  final bloc = context.read<CheckinCheckoutScreenBloc>();
                                  bloc.add(const CheckinCheckoutScreenEvent.qrScanned(true));
                                  context.router.pop();
                                  AutoRouter.of(context)
                                      .push<bool>(QrScannerScreen())
                                      .then((_) => bloc.add(const CheckinCheckoutScreenEvent.qrScanned(false)));
                                },
                                child: const Text('Có')),
                          ])
                    }
                : (state.failureOrTimekeeping!.fold(
                        (l) => false,
                        (timekeeping) =>
                            timekeeping.afternoonShiftEnd.maybeWhen(unknown: (_) => false, orElse: () => true)))
                    ? null
                    : () {
                        final bloc = context.read<CheckinCheckoutScreenBloc>();
                        bloc.add(const CheckinCheckoutScreenEvent.qrScanned(true));
                        AutoRouter.of(context)
                            .push<bool>(QrScannerScreen())
                            .then((_) => bloc.add(const CheckinCheckoutScreenEvent.qrScanned(false)));
                      },
            icon: const Icon(Icons.qr_code_scanner),
            iconSize: 76,
            color: Color(Colors.green.value),
          );
        }
      },
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
        if (state.failureOrTimekeeping == null) {
          return Container();
        } else {
          return Card(
            shadowColor: Colors.grey.shade300,
            color: Color(Colors.grey.shade100.value),
            child: ListTile(
              leading: CircleAvatar(
                  backgroundColor: state.failureOrTimekeeping!.fold(
                    (l) => Colors.grey.shade100,
                    (timekeeping) => timekeeping.morningShiftStart.toColor(),
                  ),
                  child: Text(state.schedule.morningShiftStart.toDisplayText())),
              title: Text(state.failureOrTimekeeping!
                  .fold((_) => 'Lỗi server', (timekeeping) => timekeeping.morningShiftStart.toString())),
              trailing: state.failureOrTimekeeping!
                  .fold((_) => null, (timekeeping) => timekeeping.morningShiftStart.toIcon()),
            ),
          );
        }
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
        if (state.failureOrTimekeeping == null) {
          return Container();
        } else {
          return Card(
            shadowColor: Color(Colors.grey.shade300.value),
            color: Color(Colors.grey.shade100.value),
            child: ListTile(
              leading: CircleAvatar(
                  backgroundColor: state.failureOrTimekeeping!
                      .fold((l) => Colors.grey.shade100, (timekeeping) => timekeeping.morningShiftEnd.toColor()),
                  child: Text(state.schedule.morningShiftEnd.toDisplayText())),
              title: Text(state.failureOrTimekeeping!
                  .fold((_) => 'Lỗi server', (timekeeping) => timekeeping.morningShiftEnd.toString())),
              trailing:
                  state.failureOrTimekeeping!.fold((_) => null, (timekeeping) => timekeeping.morningShiftEnd.toIcon()),
            ),
          );
        }
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
        if (state.failureOrTimekeeping == null) {
          return Container();
        } else {
          return Card(
            shadowColor: Color(Colors.grey.shade300.value),
            color: Color(Colors.grey.shade100.value),
            child: ListTile(
              leading: CircleAvatar(
                  backgroundColor: state.failureOrTimekeeping!
                      .fold((l) => Colors.grey.shade100, (timekeeping) => timekeeping.afternoonShiftStart.toColor()),
                  child: Text(state.schedule.afternoonShiftStart.toDisplayText())),
              title: Text(state.failureOrTimekeeping!
                  .fold((_) => 'Lỗi server', (timekeeping) => timekeeping.afternoonShiftStart.toString())),
              trailing: state.failureOrTimekeeping!
                  .fold((_) => null, (timekeeping) => timekeeping.afternoonShiftStart.toIcon()),
            ),
          );
        }
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
        if (state.failureOrTimekeeping == null) {
          return Container();
        } else {
          return Card(
            shadowColor: Color(Colors.grey.shade300.value),
            color: Color(Colors.grey.shade100.value),
            child: ListTile(
              leading: CircleAvatar(
                  backgroundColor: state.failureOrTimekeeping!
                      .fold((l) => Colors.grey.shade100, (timekeeping) => timekeeping.afternoonShiftEnd.toColor()),
                  child: Text(state.schedule.afternoonShiftEnd.toDisplayText())),
              title: Text(state.failureOrTimekeeping!
                  .fold((_) => 'Lỗi server', (timekeeping) => timekeeping.afternoonShiftEnd.toString())),
              trailing: state.failureOrTimekeeping!
                  .fold((_) => null, (timekeeping) => timekeeping.afternoonShiftEnd.toIcon()),
            ),
          );
        }
      },
    );
  }
}
