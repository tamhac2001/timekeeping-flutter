import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/schedule/assign_schedule_form_bloc.dart';
import '../../presentation/utils/extensions.dart';

const List<TimeOfDay> morningShiftStartTimes = [
  TimeOfDay(hour: 7, minute: 0),
  TimeOfDay(hour: 7, minute: 15),
  TimeOfDay(hour: 7, minute: 30),
  TimeOfDay(hour: 7, minute: 45),
  TimeOfDay(hour: 8, minute: 00),
  TimeOfDay(hour: 8, minute: 15),
  TimeOfDay(hour: 8, minute: 30),
  TimeOfDay(hour: 8, minute: 45),
  TimeOfDay(hour: 9, minute: 0),
];
const List<TimeOfDay> morningShiftEndTimes = [
  TimeOfDay(hour: 11, minute: 0),
  TimeOfDay(hour: 11, minute: 15),
  TimeOfDay(hour: 11, minute: 30),
  TimeOfDay(hour: 11, minute: 45),
  TimeOfDay(hour: 12, minute: 00),
];
const List<TimeOfDay> afternoonShiftStartTimes = [
  TimeOfDay(hour: 13, minute: 0),
  TimeOfDay(hour: 13, minute: 15),
  TimeOfDay(hour: 13, minute: 30),
  TimeOfDay(hour: 13, minute: 45),
  TimeOfDay(hour: 14, minute: 00),
];

Widget buildAssignMorningShift(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Text('Từ', style: Theme.of(context).textTheme.subtitle1),
      BlocBuilder<AssignScheduleFormBloc, AssignScheduleFormState>(
        buildWhen: (previous, current) =>
            previous.schedule.morningShiftStart !=
            current.schedule.morningShiftStart,
        builder: (context, state) {
          return DropdownButton<TimeOfDay>(
              value: state.schedule.morningShiftStart,
              items: morningShiftStartTimes
                  .map<DropdownMenuItem<TimeOfDay>>(
                      (timeOfDay) => DropdownMenuItem<TimeOfDay>(
                            value: timeOfDay,
                            child: Text(timeOfDay.toDisplayText()),
                          ))
                  .toList(growable: true),
              onChanged: (timeOfDay) {
                context.read<AssignScheduleFormBloc>().add(
                    AssignScheduleFormEvent.morningShiftStartTimeChanged(
                        timeOfDay!));
              });
        },
      ),
      Text('đến', style: Theme.of(context).textTheme.subtitle1),
      BlocBuilder<AssignScheduleFormBloc, AssignScheduleFormState>(
        buildWhen: (previous, current) =>
            previous.schedule.morningShiftEnd !=
            current.schedule.morningShiftEnd,
        builder: (context, state) {
          return DropdownButton<TimeOfDay>(
              value: state.schedule.morningShiftEnd,
              items: morningShiftEndTimes
                  .map<DropdownMenuItem<TimeOfDay>>(
                      (timeOfDay) => DropdownMenuItem<TimeOfDay>(
                            value: timeOfDay,
                            child: Text(timeOfDay.toDisplayText()),
                          ))
                  .toList(),
              onChanged: (timeOfDay) {
                context.read<AssignScheduleFormBloc>().add(
                    AssignScheduleFormEvent.morningShiftEndTimeChanged(
                        timeOfDay!));
              });
        },
      ),
    ],
  );
}

Widget buildAssignAfternoonShift(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Text('Từ', style: Theme.of(context).textTheme.subtitle1),
      BlocBuilder<AssignScheduleFormBloc, AssignScheduleFormState>(
        buildWhen: (previous, current) =>
            previous.schedule.afternoonShiftStart !=
            current.schedule.afternoonShiftStart,
        builder: (context, state) {
          return DropdownButton<TimeOfDay>(
              value: state.schedule.afternoonShiftStart,
              items: afternoonShiftStartTimes
                  .map<DropdownMenuItem<TimeOfDay>>(
                      (timeOfDay) => DropdownMenuItem<TimeOfDay>(
                            value: timeOfDay,
                            child: Text(timeOfDay.toDisplayText()),
                          ))
                  .toList(growable: true),
              onChanged: (timeOfDay) {
                context.read<AssignScheduleFormBloc>().add(
                    AssignScheduleFormEvent.afternoonShiftStartTimeChanged(
                        timeOfDay!));
              });
        },
      ),
      Text('đến', style: Theme.of(context).textTheme.subtitle1),
      BlocBuilder<AssignScheduleFormBloc, AssignScheduleFormState>(
        buildWhen: (previous, current) =>
            previous.schedule.afternoonShiftEnd !=
            current.schedule.afternoonShiftEnd,
        builder: (context, state) {
          return Text(
            state.schedule.afternoonShiftEnd.toDisplayText(),
            style: Theme.of(context).textTheme.subtitle1,
          );
        },
      ),
    ],
  );
}
