import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timekeeping/application/checkin_checkout/checkin_checkout_screen_bloc.dart';
import 'package:timekeeping/presentation/check_in_check_out/widgets/widgets.dart';
import 'package:timekeeping/presentation/core/app_widgets.dart';
import 'package:timekeeping/presentation/utils/extensions.dart';
import 'package:timezone/data/latest_all.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

class CheckInCheckOutScreen extends StatelessWidget {
  const CheckInCheckOutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    tz.initializeTimeZones();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Check in Check out'),
          automaticallyImplyLeading: false,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0),
          child: ListView(
            children: [
              const CurrentTimeClock(),
              const SizedBox(
                height: 32.0,
              ),
              const Center(
                child: TitleText(
                  'Thời gian điểm danh kế tiếp:',
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              const NextCheckTime(),
              const SizedBox(
                height: 16.0,
              ),
              const CheckButton(),
              Center(
                child: Text(
                  'Checkin',
                  style: TextStyle(color: Color(Colors.green.value)),
                ),
              ),
              const SizedBox(
                height: 32.0,
              ),
              BlocBuilder<CheckinCheckoutScreenBloc,
                  CheckinCheckoutScreenState>(
                builder: (context, state) => buildCheckTimeListTile(
                    state.morningShiftStart.toDisplayText(),
                    'Chua diem danh',
                    null),
              ),
              const SizedBox(
                height: 16.0,
              ),
              BlocBuilder<CheckinCheckoutScreenBloc,
                  CheckinCheckoutScreenState>(
                builder: (context, state) => buildCheckTimeListTile(
                    state.morningShiftEnd.toDisplayText(),
                    'Chua diem danh',
                    null),
              ),
              const SizedBox(
                height: 16.0,
              ),
              BlocBuilder<CheckinCheckoutScreenBloc,
                  CheckinCheckoutScreenState>(
                builder: (context, state) => buildCheckTimeListTile(
                    state.afternoonShiftStart.toDisplayText(),
                    'Chua diem danh',
                    null),
              ),
              const SizedBox(
                height: 16.0,
              ),
              BlocBuilder<CheckinCheckoutScreenBloc,
                  CheckinCheckoutScreenState>(
                builder: (context, state) => buildCheckTimeListTile(
                    state.afternoonShiftEnd.toDisplayText(),
                    'Chua diem danh',
                    null),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildCheckTimeListTile(String time, String text, Icon? icon) {
  return Card(
    child: ListTile(
      leading: CircleAvatar(
        child: Text(time),
      ),
      title: Text(text),
      trailing: icon,
    ),
  );
}
