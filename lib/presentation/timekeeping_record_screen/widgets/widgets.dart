import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:timekeeping/application/cubits/employee_cubit.dart';
import 'package:timekeeping/utils/extensions.dart';

import '../../../application/timekeeping_record/timekeeping_record_screen_bloc.dart';

class MonthNavigator extends StatelessWidget {
  const MonthNavigator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TimekeepingRecordScreenBloc, TimekeepingRecordScreenState>(
      builder: (context, state) {
        if (context.watch<EmployeeCubit>().state == null) {
          return const CircularProgressIndicator();
        }
        final employeeStartDate =
            context.watch<EmployeeCubit>().state!.fold((l) => null, (employee) => employee.startDate);
        final now = DateTime.now();
        final thisMonth = DateTime.utc(now.year, now.month);
        return Row(
          children: [
            IconButton(
                onPressed:
                    (state.timePicked.isAtSameMomentAs(DateTime.utc(employeeStartDate!.year, employeeStartDate.month)))
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
                onPressed: (state.timePicked.isAtSameMomentAs(thisMonth))
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
    return BlocBuilder<TimekeepingRecordScreenBloc, TimekeepingRecordScreenState>(
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
                      children: (state.displayedTimekeepingRecords[index].isAbsentWithApprovedAbsentForm())
                          ? []
                          : [
                              ListTile(
                                title: Text(
                                    '${state.displayedTimekeepingRecords[index].morningCheckIn.scheduledTime.toDisplayText()}: ${state.displayedTimekeepingRecords[index].morningCheckIn.toCheckInStatusString()}'),
                                trailing: state.displayedTimekeepingRecords[index].morningCheckIn.toIcon(),
                              ),
                              ListTile(
                                title: Text(
                                    '${state.displayedTimekeepingRecords[index].morningCheckOut.scheduledTime.toDisplayText()}: ${state.displayedTimekeepingRecords[index].morningCheckOut.toCheckOutStatusString()}'),
                                trailing: state.displayedTimekeepingRecords[index].morningCheckOut.toIcon(),
                              ),
                              ListTile(
                                title: Text(
                                    '${state.displayedTimekeepingRecords[index].afternoonCheckIn.scheduledTime.toDisplayText()}: ${state.displayedTimekeepingRecords[index].afternoonCheckIn.toCheckInStatusString()}'),
                                trailing: state.displayedTimekeepingRecords[index].afternoonCheckIn.toIcon(),
                              ),
                              ListTile(
                                title: Text(
                                    '${state.displayedTimekeepingRecords[index].afternoonCheckOut.scheduledTime.toDisplayText()}: ${state.displayedTimekeepingRecords[index].afternoonCheckOut.toCheckOutStatusString()}'),
                                trailing: state.displayedTimekeepingRecords[index].afternoonCheckOut.toIcon(),
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
