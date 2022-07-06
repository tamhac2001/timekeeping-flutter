import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/schedule/assign_schedule_form/assign_schedule_form_bloc.dart';
import '../../core/app_widgets.dart';
import '../../../utils/extensions.dart';

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
        buildWhen: (previous, current) => previous.morningShiftStart != current.morningShiftStart,
        builder: (context, state) {
          return DropdownButton<TimeOfDay>(
              value: state.morningShiftStart,
              items: morningShiftStartTimes
                  .map<DropdownMenuItem<TimeOfDay>>((timeOfDay) => DropdownMenuItem<TimeOfDay>(
                        value: timeOfDay,
                        child: Text(timeOfDay.toDisplayText()),
                      ))
                  .toList(growable: true),
              onChanged: (timeOfDay) {
                context
                    .read<AssignScheduleFormBloc>()
                    .add(AssignScheduleFormEvent.morningShiftStartTimeChanged(timeOfDay!));
              });
        },
      ),
      Text('đến', style: Theme.of(context).textTheme.subtitle1),
      BlocBuilder<AssignScheduleFormBloc, AssignScheduleFormState>(
        buildWhen: (previous, current) => previous.morningShiftEnd != current.morningShiftEnd,
        builder: (context, state) {
          return DropdownButton<TimeOfDay>(
              value: state.morningShiftEnd,
              items: morningShiftEndTimes
                  .map<DropdownMenuItem<TimeOfDay>>((timeOfDay) => DropdownMenuItem<TimeOfDay>(
                        value: timeOfDay,
                        child: Text(timeOfDay.toDisplayText()),
                      ))
                  .toList(),
              onChanged: (timeOfDay) {
                context
                    .read<AssignScheduleFormBloc>()
                    .add(AssignScheduleFormEvent.morningShiftEndTimeChanged(timeOfDay!));
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
        buildWhen: (previous, current) => previous.afternoonShiftStart != current.afternoonShiftStart,
        builder: (context, state) {
          return DropdownButton<TimeOfDay>(
              value: state.afternoonShiftStart,
              items: afternoonShiftStartTimes
                  .map<DropdownMenuItem<TimeOfDay>>((timeOfDay) => DropdownMenuItem<TimeOfDay>(
                        value: timeOfDay,
                        child: Text(timeOfDay.toDisplayText()),
                      ))
                  .toList(growable: true),
              onChanged: (timeOfDay) {
                context
                    .read<AssignScheduleFormBloc>()
                    .add(AssignScheduleFormEvent.afternoonShiftStartTimeChanged(timeOfDay!));
              });
        },
      ),
      Text('đến', style: Theme.of(context).textTheme.subtitle1),
      BlocBuilder<AssignScheduleFormBloc, AssignScheduleFormState>(
        buildWhen: (previous, current) => previous.afternoonShiftEnd != current.afternoonShiftEnd,
        builder: (context, state) {
          return Text(
            state.afternoonShiftEnd.toDisplayText(),
            style: Theme.of(context).textTheme.subtitle1,
          );
        },
      ),
    ],
  );
}

class AssignScheduleButton extends StatelessWidget {
  const AssignScheduleButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          showMyDialog(context, title: 'Đăng ký lịch làm việc', text: 'Bạn chắc chứ ?', action: [
            TextButton(
              autofocus: true,
              child: const Text('Huỷ'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
                child: const Text('Xác nhận'),
                onPressed: () {
                  context.read<AssignScheduleFormBloc>().add(const AssignScheduleFormEvent.formSubmitted());
                  Navigator.of(context).pop();
                })
          ]);
        },
        child: const Text('Đăng ký'));
  }
}
