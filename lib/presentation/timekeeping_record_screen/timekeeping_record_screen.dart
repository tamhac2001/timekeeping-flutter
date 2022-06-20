import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../application/timekeeping_record/timekeeping_record_screen_bloc.dart';

class TimekeepingRecordScreen extends StatelessWidget {
  const TimekeepingRecordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lịch sử điểm danh'),
        automaticallyImplyLeading: false,
      ),
      body: BlocBuilder<TimekeepingRecordScreenBloc, TimekeepingRecordScreenState>(
        builder: (context, state) {
          return Column(
            children: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {
                        context
                            .read<TimekeepingRecordScreenBloc>()
                            .add(const TimekeepingRecordScreenEvent.toPreviousMonth());
                      },
                      icon: const Icon(Icons.chevron_left)),
                  Expanded(
                    child: Center(
                      child: Text(
                        DateFormat('MM/yyyy').format(state.currentDisplayedTime),
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                    ),
                  ),
                  IconButton(
                      onPressed: () {
                        context
                            .read<TimekeepingRecordScreenBloc>()
                            .add(const TimekeepingRecordScreenEvent.toNextMonth());
                      },
                      icon: const Icon(Icons.chevron_right)),
                ],
              ),
              Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, index) => const SizedBox(
                    height: 8.0,
                  ),
                  padding: const EdgeInsets.all(16),
                  itemCount:
                      DateUtils.getDaysInMonth(state.currentDisplayedTime.year, state.currentDisplayedTime.month),
                  itemBuilder: (context, index) {
                    return Card(
                      child: ExpansionTile(
                        leading: CircleAvatar(
                          child: Text('${index + 1}/${state.currentDisplayedTime.month}'),
                        ),
                        title: Container(),
                        children: const [
                          ListTile(
                            title: Text('Check in 7h'),
                          ),
                          ListTile(
                            title: Text('Check out 11h'),
                          ),
                          ListTile(
                            title: Text('Check in 14h'),
                          ),
                          ListTile(
                            title: Text('Check in 18h'),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
