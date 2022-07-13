import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timekeeping/presentation/check_in_check_out/widgets/work_day_finished_screen.dart';

import '../../application/checkin_checkout/checkin_checkout_screen_bloc.dart';
import '../core/app_widgets.dart';
import 'widgets/day_off_screen.dart';
import 'widgets/work_day_screen.dart';

class CheckInCheckOutScreen extends StatelessWidget {
  const CheckInCheckOutScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CheckinCheckoutScreenBloc, CheckinCheckoutScreenState>(
      buildWhen: (previous, current) =>
          (previous.timekeepingFailureOrTimekeeping != current.timekeepingFailureOrTimekeeping) ||
          (previous.isDayOff != current.isDayOff) ||
          (previous.isLoading != current.isLoading) ||
          (previous.isChecking != current.isChecking),
      builder: (context, state) {
        if (state.isLoading) return const LoadingScreen(appBarTitle: 'Check In Check Out');
        if (state.isDayOff == null || state.timekeepingFailureOrTimekeeping == null) {
          context.read<CheckinCheckoutScreenBloc>().add(const CheckinCheckoutScreenEvent.getTimekeeping());
          return const LoadingScreen(appBarTitle: 'Check In Check Out');
        }
        if (state.isDayOff != null && state.isDayOff!) {
          return const DayOffScreen(isAbsentLegit: true);
        }
        return state.timekeepingFailureOrTimekeeping!.fold(
          (failure) => FailureScreen(
              appBarTitle: 'Check In Check Out',
              failureText: failure.toFailureMessage(),
              retryCallback: () {
                context.read<CheckinCheckoutScreenBloc>().add(const CheckinCheckoutScreenEvent.getTimekeeping());
              }),
          (timekeeping) {
            if (timekeeping.isAbsent()) {
              return const DayOffScreen(isAbsentLegit: false);
            }
            if (timekeeping.isFinish()) {
              return WorkDayFinishedScreen(timekeeping: timekeeping);
            }
            return WorkDayScreen(timekeeping: timekeeping);
          },
        );
      },
    );
  }
}
