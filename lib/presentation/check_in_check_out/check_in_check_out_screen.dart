import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timekeeping/application/checkin_checkout/checkin_checkout_screen_bloc.dart';
import 'package:timekeeping/presentation/check_in_check_out/widgets/widgets.dart';
import 'package:timekeeping/presentation/core/app_widgets.dart';

import '../../application/checkin_checkout/checkin_checkout_screen_bloc.dart';

class CheckInCheckOutScreen extends StatelessWidget {
  const CheckInCheckOutScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CheckinCheckoutScreenBloc, CheckinCheckoutScreenState>(
      buildWhen: (previous, current) => previous.failureOrTimekeeping != current.failureOrTimekeeping,
      builder: (context, state) {
        return IgnorePointer(
          ignoring: state.isLoading,
          child: SafeArea(
            child: Scaffold(
              appBar:
                  AppBar(centerTitle: true, title: const Text('Check in Check out'), automaticallyImplyLeading: false),
              body: BlocBuilder<CheckinCheckoutScreenBloc, CheckinCheckoutScreenState>(
                buildWhen: (previous, current) => previous.failureOrTimekeeping != current.failureOrTimekeeping,
                builder: (context, state) {
                  if (context.read<CheckinCheckoutScreenBloc>().state.isLoading &&
                      context.read<CheckinCheckoutScreenBloc>().state.failureOrTimekeeping == null) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else {
                    return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0),
                        child: SingleChildScrollView(
                          child: Column(children: [
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
                            const MorningShiftEndListTile(),
                            const AfternoonShiftStartListTile(),
                            const AfternoonShiftEndListTile(),
                          ]),
                        ));
                  }
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
