import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../application/checkin_checkout/checkin_checkout_screen_bloc.dart';
import '../../../application/utils/extensions.dart';
import '../../routes/app_router.gr.dart';
import '../../utils/extensions.dart';

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
            DateFormat('HH:mm:ss').format(state.currentTime),
            style: TextStyle(
                color: Color(Colors.grey.value),
                fontSize: 36,
                fontWeight: FontWeight.w700),
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
      buildWhen: (previous, current) =>
          previous.nextCheckTime != current.nextCheckTime,
      builder: (context, state) {
        context
            .read<CheckinCheckoutScreenBloc>()
            .add(const CheckinCheckoutScreenEvent.updateNextCheckTime());
        return Center(
          child: Text(
            DateFormat('HH:mm:ss').format(state.nextCheckTime.toDateTime()),
            style: TextStyle(
                color: Color(Colors.grey.value),
                fontSize: 30,
                fontWeight: FontWeight.w700),
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
      onPressed: () {
        AutoRouter.of(context).push(QrScannerScreen());
      },
      icon: const Icon(Icons.qr_code_scanner),
      iconSize: 64,
      color: Color(Colors.green.value),
    );
  }
}

Future<void> showMyDialog(BuildContext context, String text) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: true, // user can tap button or not!
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('QR Code'),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text(text),
              // Text('Would you like to approve of this message?'),
            ],
          ),
        ),
      );
    },
  );
}

class MorningShiftStartListTile extends StatelessWidget {
  const MorningShiftStartListTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CheckinCheckoutScreenBloc, CheckinCheckoutScreenState>(
      builder: (context, state) {
        return Card(
          child: ListTile(
            leading: CircleAvatar(
              child: Text(state.morningShiftStart.toDisplayText()),
            ),
            title: Text('Chua diem danh'),
            trailing: null,
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
      builder: (context, state) {
        return Card(
          child: ListTile(
            leading: CircleAvatar(
              child: Text(state.morningShiftEnd.toDisplayText()),
            ),
            title: Text('Chua diem danh'),
            trailing: null,
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
      builder: (context, state) {
        return Card(
          child: ListTile(
            leading: CircleAvatar(
              child: Text(state.afternoonShiftStart.toDisplayText()),
            ),
            title: Text('Chua diem danh'),
            trailing: null,
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
      builder: (context, state) {
        return Card(
          child: ListTile(
            leading: CircleAvatar(
              child: Text(state.afternoonShiftEnd.toDisplayText()),
            ),
            title: Text('Chua diem danh'),
            trailing: null,
          ),
        );
      },
    );
  }
}
