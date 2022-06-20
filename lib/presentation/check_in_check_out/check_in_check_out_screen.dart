import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timekeeping/application/checkin_checkout/checkin_checkout_screen_bloc.dart';
import 'package:timekeeping/presentation/check_in_check_out/widgets/widgets.dart';
import 'package:timekeeping/presentation/core/app_widgets.dart';

import '../../application/checkin_checkout/checkin_checkout_screen_bloc.dart';
import '../../domain/schedule/schedule.dart';

class CheckInCheckOutScreen extends StatelessWidget {
  const CheckInCheckOutScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CheckinCheckoutScreenBloc, CheckinCheckoutScreenState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        if (state.failureOrTimekeeping == null) {
          context.read<CheckinCheckoutScreenBloc>().add(const CheckinCheckoutScreenEvent.getTimekeeping());
        }
        if (state.schedule == Schedule.empty()) {
          context.read<CheckinCheckoutScreenBloc>().add(const CheckinCheckoutScreenEvent.getSchedule());
        }
        return IgnorePointer(
          ignoring: state.isLoading,
          child: SafeArea(
            child: Scaffold(
              appBar:
                  AppBar(centerTitle: true, title: const Text('Check in Check out'), automaticallyImplyLeading: false),
              body: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0),
                  child: ListView(children: [
                    const CurrentTimeClock(),
                    const SizedBox(height: 32.0),
                    const Center(child: TitleText('Thời gian điểm danh kế tiếp:')),
                    const SizedBox(height: 16.0),
                    const NextCheckTime(),
                    const SizedBox(height: 16.0),
                    const CheckButton(),
                    Center(child: Text('Checkin', style: TextStyle(color: Color(Colors.green.value)))),
                    const SizedBox(height: 32.0),
                    const MorningShiftStartListTile(),
                    const SizedBox(
                      height: 16.0,
                    ),
                    const MorningShiftEndListTile(),
                    const SizedBox(
                      height: 16.0,
                    ),
                    const AfternoonShiftStartListTile(),
                    const SizedBox(
                      height: 16.0,
                    ),
                    const AfternoonShiftEndListTile(),
                  ])),
            ),
          ),
        );
      },
    );
  }
}
