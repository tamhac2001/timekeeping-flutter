import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:timekeeping/application/absent_form/absent_form_bloc.dart';

import '../core/app_widgets.dart';
import 'widgets.dart';

class AbsentFormScreen extends StatelessWidget {
  const AbsentFormScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Xin nghỉ phép'),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Flexible(child: TitleText('Thời gian')),
                  Flexible(child: BlocBuilder<AbsentFormBloc, AbsentFormState>(
                    builder: (context, state) {
                      return Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const NormalText('Từ '),
                              state.startDate != null
                                  ? NormalText(DateFormat('dd/MM/yyyy')
                                      .format(state.startDate))
                                  : Container(),
                              IconButton(
                                  onPressed: () async {
                                    context.read<AbsentFormBloc>().add(
                                        AbsentFormEvent.startDatePicked(
                                            await selectStartDate(context)));
                                  },
                                  icon: const Icon(Icons.calendar_today)),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const NormalText(' đến '),
                              state.endDate != null
                                  ? NormalText(DateFormat('dd/MM/yyyy')
                                      .format(state.endDate!))
                                  : Container(),
                              IconButton(
                                  onPressed: () async {
                                    context.read<AbsentFormBloc>().add(
                                        AbsentFormEvent.endDatePicked(
                                            await selectEndDate(
                                                context, state.startDate)));
                                  },
                                  icon: const Icon(Icons.calendar_today)),
                            ],
                          ),
                        ],
                      );
                    },
                  ))
                ],
              ),
              const SizedBox(
                height: 32.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Flexible(
                    child: TitleText('Lý do'),
                  ),
                  BlocBuilder<AbsentFormBloc, AbsentFormState>(
                      builder: (context, state) {
                    return Flexible(
                      child: DropdownButton<String>(
                        value: state.reason,
                        items: Reason.values
                            .map<DropdownMenuItem<String>>((reason) =>
                                DropdownMenuItem<String>(
                                    value: reason.name,
                                    child: NormalText(reason.name)))
                            .toList(),
                        onChanged: (reason) => context
                            .read<AbsentFormBloc>()
                            .add(AbsentFormEvent.reasonChanged(reason!)),
                      ),
                    );
                  }),
                  const SizedBox(
                    width: 120,
                  )
                ],
              ),
              const SizedBox(
                height: 32.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const TitleText('Ghi chú'),
                  const SizedBox(
                    width: 16.0,
                  ),
                  BlocBuilder<AbsentFormBloc, AbsentFormState>(
                    builder: (context, state) {
                      return Expanded(
                        child: TextField(
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                          autocorrect: false,
                          onChanged: (note) => context
                              .read<AbsentFormBloc>()
                              .add(AbsentFormEvent.noteChanged(note)),
                        ),
                      );
                    },
                  )
                ],
              ),
              const SizedBox(
                height: 64.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      context
                          .read<AbsentFormBloc>()
                          .add(const AbsentFormEvent.cancelled());
                    },
                    child: const Text('Huy'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      context
                          .read<AbsentFormBloc>()
                          .add(const AbsentFormEvent.cancelled());
                    },
                    child: const Text('Xac nhan'),
                  ),
                ],
              )
            ],
          ),
        ),
        // bottomNavigationBar: MyBottomAppBar(initialActiveIndex: 2),
      ),
    );
  }
}

enum Reason {
  benh,
  coViec,
  khac,
}
