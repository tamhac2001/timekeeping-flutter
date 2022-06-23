import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/timekeeping_record/timekeeping_record_screen_bloc.dart';
import 'widgets/widgets.dart';

class TimekeepingRecordScreen extends StatelessWidget {
  const TimekeepingRecordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TimekeepingRecordScreenBloc, TimekeepingRecordScreenState>(
      buildWhen: (previous, current) => previous.isLoading != current.isLoading ,
      builder: (context, state) {
        return IgnorePointer(
          ignoring: state.isLoading,
          child: Scaffold(
              appBar:
                  AppBar(centerTitle: true, title: const Text('Lịch sử điểm danh'), automaticallyImplyLeading: false),
              body: Column(
                children: const [
                  MonthNavigator(),
                  TimekeepingRecordsList(),
                ],
              )),
        );
      },
    );
  }
}
