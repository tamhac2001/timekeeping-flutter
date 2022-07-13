import 'package:flutter/material.dart';
import 'package:timekeeping/domain/timekeeping/timekeeping.dart';

import 'widgets.dart';

class WorkDayScreen extends StatelessWidget {
  const WorkDayScreen({Key? key, required this.timekeeping}) : super(key: key);

  final Timekeeping timekeeping;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0),
            child: SingleChildScrollView(
              child: Column(children: [
                const CurrentTimeClock(),
                const SizedBox(height: 32.0),
                const NextCheckTime(),
                const SizedBox(height: 16.0),
                QrScanButton(
                  timekeeping: timekeeping,
                ),
                const SizedBox(height: 32.0),
                MorningCheckInListTile(morningCheckIn: timekeeping.morningCheckIn),
                MorningCheckOutListTile(morningCheckOut: timekeeping.morningCheckOut),
                AfternoonCheckInListTile(afternoonCheckIn: timekeeping.afternoonCheckIn),
                AfternoonCheckOutListTile(afternoonCheckOut: timekeeping.afternoonCheckOut),
              ]),
            )),
      ),
    );
  }
}
