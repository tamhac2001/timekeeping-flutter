import 'package:flutter/material.dart';
import 'package:timekeeping/domain/timekeeping/timekeeping.dart';
import 'package:timekeeping/presentation/core/app_widgets.dart';

import 'widgets.dart';

class WorkDayFinishedScreen extends StatelessWidget {
  const WorkDayFinishedScreen({Key? key, required Timekeeping timekeeping})
      : _timekeeping = timekeeping,
        super(key: key);

  final Timekeeping _timekeeping;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0),
            child: SingleChildScrollView(
              child: Column(children: [
                const SizedBox(height: 32.0),
                const Center(
                  child: TitleText('Đã kết thúc ngày làm việc'),
                ),
                const SizedBox(height: 32.0),
                MorningCheckInListTile(morningCheckIn: _timekeeping.morningCheckIn),
                MorningCheckOutListTile(morningCheckOut: _timekeeping.morningCheckOut),
                AfternoonCheckInListTile(afternoonCheckIn: _timekeeping.afternoonCheckIn),
                AfternoonCheckOutListTile(afternoonCheckOut: _timekeeping.afternoonCheckOut),
              ]),
            )),
      ),
    );
  }
}
