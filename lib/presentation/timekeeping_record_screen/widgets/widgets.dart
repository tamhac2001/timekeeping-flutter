import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:timekeeping/utils/extensions.dart';

import '../../../application/timekeeping_record/timekeeping_record_screen_bloc.dart';
import '../../core/app_widgets.dart';
import '../../routes/app_router.gr.dart';

class MonthNavigator extends StatelessWidget {
  const MonthNavigator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TimekeepingRecordScreenBloc, TimekeepingRecordScreenState>(
      builder: (context, state) {
        return Row(
          children: [
            IconButton(
                onPressed: (state.timePicked
                        .isAtSameMomentAs(DateTime.utc(state.employeeStartDate.year, state.employeeStartDate.month)))
                    ? null
                    : () {
                        context
                            .read<TimekeepingRecordScreenBloc>()
                            .add(const TimekeepingRecordScreenEvent.toPreviousMonth());
                      },
                icon: const Icon(Icons.chevron_left)),
            Expanded(
                child: Center(
                    child: Text(DateFormat('MM - yyyy').format(state.timePicked),
                        style: Theme.of(context).textTheme.subtitle1))),
            IconButton(
                onPressed: (state.timePicked.isAtSameMomentAs(state.thisMonth))
                    ? null
                    : () {
                        context
                            .read<TimekeepingRecordScreenBloc>()
                            .add(const TimekeepingRecordScreenEvent.toNextMonth());
                      },
                icon: const Icon(Icons.chevron_right)),
          ],
        );
      },
    );
  }
}

class TimekeepingRecordsList extends StatelessWidget {
  const TimekeepingRecordsList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TimekeepingRecordScreenBloc, TimekeepingRecordScreenState>(
      listenWhen: (previous, current) =>
          previous.failureOrTimekeepingListByMonth != current.failureOrTimekeepingListByMonth,
      listener: (context, state) {
        if (state.failureOrTimekeepingListByMonth != null) {
          state.failureOrTimekeepingListByMonth!.fold(
              (failure) => failure.when(
                    serverError: () {
                      showMyDialog(context, title: 'Lịch sử điểm danh', text: 'Lỗi server', barrierDismissible: true);
                    },
                    unauthenticated: () {
                      showMyDialog(context,
                              title: 'Lịch sử điểm danh', text: 'Phiên đăng nhập hết hạn', barrierDismissible: true)
                          .whenComplete(() => AutoRouter.of(context).replace(const LoginScreen()));
                    },
                    qrCodeNotMatch: () {},
                    timekeepingNotFound: () {},
                  ),
              (_) => null);
        }
      },
      builder: (context, state) {
        if (state.failureOrTimekeepingListByMonth == null || state.isLoading) {
          return const Expanded(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else {
          if (state.displayedTimekeepingRecords.isEmpty) {
            return const Expanded(
              child: Center(
                child: Text('Không có lịch sử điểm danh'),
              ),
            );
          } else {
            // final schedule = state.
            return Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.all(16),
                itemCount: state.displayedTimekeepingRecords.length,
                itemBuilder: (context, index) {
                  return Card(
                    shadowColor: Colors.grey.shade300,
                    color: Color(Colors.grey.shade100.value),
                    child: ExpansionTile(
                      leading: CircleAvatar(
                        backgroundColor: state.displayedTimekeepingRecords[index].toColor(),
                        child: Text(
                            '${state.displayedTimekeepingRecords[index].date.day}/${state.displayedTimekeepingRecords[index].date.month}'),
                      ),
                      title: Text(state.displayedTimekeepingRecords[index].toWholeDayStatusString()),
                      trailing: state.displayedTimekeepingRecords[index].toWholeDayStatusIcon(),
                      children: [
                        ListTile(
                          title: Text(
                              '${state.schedule.morningShiftStart.toDisplayText()}: ${state.displayedTimekeepingRecords[index].morningShiftStart.toString()}'),
                          trailing: state.displayedTimekeepingRecords[index].morningShiftStart.toIcon(),
                        ),
                        ListTile(
                          title: Text(
                              '${state.schedule.morningShiftEnd.toDisplayText()}: ${state.displayedTimekeepingRecords[index].morningShiftEnd.toString()}'),
                          trailing: state.displayedTimekeepingRecords[index].morningShiftEnd.toIcon(),
                        ),
                        ListTile(
                          title: Text(
                              '${state.schedule.afternoonShiftStart.toDisplayText()}: ${state.displayedTimekeepingRecords[index].afternoonShiftStart.toString()}'),
                          trailing: state.displayedTimekeepingRecords[index].afternoonShiftStart.toIcon(),
                        ),
                        ListTile(
                          title: Text(
                              '${state.schedule.afternoonShiftEnd.toDisplayText()}: ${state.displayedTimekeepingRecords[index].afternoonShiftEnd.toString()}'),
                          trailing: state.displayedTimekeepingRecords[index].afternoonShiftEnd.toIcon(),
                        ),
                      ],
                    ),
                  );
                },
              ),
            );
          }
        }
      },
    );
  }
}
