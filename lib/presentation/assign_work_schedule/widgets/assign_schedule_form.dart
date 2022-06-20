import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/schedule/assign_schedule_form_bloc.dart';
import 'widgets.dart';

class AssignScheduleForm extends StatelessWidget {
  const AssignScheduleForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AssignScheduleFormBloc, AssignScheduleFormState>(
      builder: (context, state) {
        return IgnorePointer(
          ignoring: state.isSubmitting,
          child: SafeArea(
            child: Scaffold(
              appBar: AppBar(
                  centerTitle: true, title: const Text("Đăng ký lịch làm việc"), automaticallyImplyLeading: false),
              body: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Text(
                      "Buổi sáng",
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    buildAssignMorningShift(context),
                    const SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      "Buổi chiều",
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    const SizedBox(
                      height: 8.0,
                    ),
                    buildAssignAfternoonShift(context),
                    const SizedBox(
                      height: 32.0,
                    ),
                    const Center(child: AssignScheduleButton())
                  ])),
            ),
          ),
        );
      },
    );
  }
}
