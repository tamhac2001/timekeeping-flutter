import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/work_schedule/assign_work_schedule_form_bloc.dart';
import '../../presentation/utils/extensions.dart';
Widget buildAssignMorningShift(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Text('Từ', style: Theme.of(context).textTheme.subtitle1),
      BlocBuilder<AssignWorkScheduleFormBloc, AssignWorkScheduleFormState>(
        buildWhen: (previous, current) =>
            previous.morningShiftStartTime != current.morningShiftStartTime,
        builder: (context, state) {
          return DropdownButton<TimeOfDay>(
              value: state.morningShiftStartTime,
              items: morningShiftStartTimes
                  .map<DropdownMenuItem<TimeOfDay>>(
                      (timeOfDay) => DropdownMenuItem<TimeOfDay>(
                            value: timeOfDay,
                            child: Text(timeOfDay.toDisplayText()),
                          ))
                  .toList(growable: true),
              onChanged: (timeOfDay) {
                context.read<AssignWorkScheduleFormBloc>().add(
                    AssignWorkScheduleFormEvent.morningShiftStartTimeChanged(
                        timeOfDay!));
              });
        },
      ),
      Text('đến', style: Theme.of(context).textTheme.subtitle1),
      BlocBuilder<AssignWorkScheduleFormBloc, AssignWorkScheduleFormState>(
        buildWhen: (previous, current) =>
            previous.morningShiftEndTime != current.morningShiftEndTime,
        builder: (context, state) {
          return DropdownButton<TimeOfDay>(
              value: state.morningShiftEndTime,
              items: morningShiftEndTimes
                  .map<DropdownMenuItem<TimeOfDay>>(
                      (timeOfDay) => DropdownMenuItem<TimeOfDay>(
                            value: timeOfDay,
                            child: Text(timeOfDay.toDisplayText()),
                          ))
                  .toList(growable: true),
              onChanged: (timeOfDay) {
                context.read<AssignWorkScheduleFormBloc>().add(
                    AssignWorkScheduleFormEvent.morningShiftEndTimeChanged(
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
      BlocBuilder<AssignWorkScheduleFormBloc, AssignWorkScheduleFormState>(
        buildWhen: (previous, current) =>
            previous.afternoonShiftStartTime != current.afternoonShiftStartTime,
        builder: (context, state) {
          return DropdownButton<TimeOfDay>(
              value: state.afternoonShiftStartTime,
              items: afternoonShiftStartTimes
                  .map<DropdownMenuItem<TimeOfDay>>(
                      (timeOfDay) => DropdownMenuItem<TimeOfDay>(
                            value: timeOfDay,
                            child: Text(timeOfDay.toDisplayText()),
                          ))
                  .toList(growable: true),
              onChanged: (timeOfDay) {
                context.read<AssignWorkScheduleFormBloc>().add(
                    AssignWorkScheduleFormEvent.afternoonShiftStartTimeChanged(
                        timeOfDay!));
              });
        },
      ),
      Text('đến', style: Theme.of(context).textTheme.subtitle1),
      BlocBuilder<AssignWorkScheduleFormBloc, AssignWorkScheduleFormState>(
        buildWhen: (previous, current) =>
            previous.afternoonShiftEndTime != current.afternoonShiftEndTime,
        builder: (context, state) {
          return Text(
            state.afternoonShiftEndTime.toDisplayText(),
            style: Theme.of(context).textTheme.subtitle1,
          );
        },
      ),
    ],
  );
}

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
