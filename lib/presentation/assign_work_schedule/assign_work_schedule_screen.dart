import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/work_schedule/assign_work_schedule_form_bloc.dart';
import '../routes/app_router.gr.dart';
import 'widgets.dart';

class AssignWorkScheduleScreen extends StatelessWidget {
  const AssignWorkScheduleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Đăng ký lịch làm việc"),
          automaticallyImplyLeading: false,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisSize: MainAxisSize.min,
            children: [
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
              Center(
                  child: ElevatedButton(
                      onPressed: () {
                        _showMyDialog(context);
                      },
                      child: const Text('Đăng ký')))
            ],
          ),
        ),
      ),
    );
  }
}

Future<void> _showMyDialog(BuildContext context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return BlocConsumer<AssignWorkScheduleFormBloc,
          AssignWorkScheduleFormState>(
        listener: (context, state) {
          if (state.successOrFail != null && state.successOrFail!) {
            AutoRouter.of(context).navigate(const HomeScreenRoute());
          }
        },
        builder: (context, state) {
          return AlertDialog(
            title: const Text('Đăng ký lịch làm việc '),
            content: SingleChildScrollView(
              child: ListBody(
                children: const <Widget>[
                  Text('Bạn chắc chắn chứ?'),
                  // Text('Would you like to approve of this message?'),
                ],
              ),
            ),
            actions: <Widget>[
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
                  context
                      .read<AssignWorkScheduleFormBloc>()
                      .add(const AssignWorkScheduleFormEvent.formSubmitted());
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    },
  );
}
