import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:timekeeping/utils/extensions.dart';

import '../../application/absent_form/absent_form_bloc.dart';
import '../../domain/absent/absent_form.dart';
import '../../domain/absent/reason/reason.dart';
import '../core/app_widgets.dart';

Future<DateTime?> selectStartDate(BuildContext context) async {
  final now = DateTime.now();
  final tomorrow = DateTime(now.year, now.month, now.day).add(const Duration(days: 1));
  final datePicked = await showDatePicker(
    context: context,
    initialDate: tomorrow,
    firstDate: tomorrow,
    lastDate: DateTime(tomorrow.year + 1),
  );
  if (datePicked != null) {
    return DateTime(datePicked.year, datePicked.month, datePicked.day);
  }
  return null;
}

Future<DateTime?> selectEndDate(BuildContext context, DateTime startDate) async {
  final now = DateTime.now();
  final datePicked = await showDatePicker(
    context: context,
    initialDate: startDate,
    firstDate: startDate,
    lastDate: DateTime(now.year + 1),
  );
  if (datePicked != null) {
    return DateTime(datePicked.year, datePicked.month, datePicked.day);
  }
  return null;
}

class AbsentDatePicker extends StatelessWidget {
  const AbsentDatePicker({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Flexible(flex: 2, child: TitleText('Thời gian')),
        BlocBuilder<AbsentFormBloc, AbsentFormState>(
          builder: (context, state) {
            return Flexible(
              flex: 3,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const NormalText('Từ '),
                      NormalText(DateFormat('dd/MM/yyyy').format(state.absentForm.startDate)),
                      IconButton(
                        icon: const Icon(Icons.calendar_today),
                        onPressed: () async {
                          context.read<AbsentFormBloc>().add(AbsentFormEvent.startDatePicked(
                                await selectStartDate(context),
                              ));
                        },
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Flexible(child: NormalText(' đến hết ')),
                      NormalText(DateFormat('dd/MM/yyyy').format(state.absentForm.endDate)),
                      Flexible(
                        child: IconButton(
                            onPressed: () async {
                              context.read<AbsentFormBloc>().add(AbsentFormEvent.endDatePicked(
                                  await selectEndDate(context, state.absentForm.startDate)));
                            },
                            icon: const Icon(Icons.calendar_today)),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        )
      ],
    );
  }
}

class ReasonPicker extends StatelessWidget {
  const ReasonPicker({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AbsentFormBloc, AbsentFormState>(builder: (context, state) {
      return Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Flexible(child: TitleText('Lý do')),
            Flexible(
              child: DropdownButton<Reason>(
                value: state.absentForm.reason,
                items: [const Reason.ill(), const Reason.personal(), const Reason.others()]
                    .map<DropdownMenuItem<Reason>>(
                        (reason) => DropdownMenuItem<Reason>(value: reason, child: NormalText(reason.value)))
                    .toList(),
                onChanged: (reason) => context.read<AbsentFormBloc>().add(AbsentFormEvent.reasonChanged(reason!)),
              ),
            ),
            const SizedBox(width: 120),
          ]);
    });
  }
}

class NoteTextField extends StatelessWidget {
  NoteTextField({
    Key? key,
  }) : super(key: key);

  final _noteController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AbsentFormBloc, AbsentFormState>(
      builder: (context, state) {
        if (state == AbsentFormState.initial()) {
          _noteController.clear();
        }
        return Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const TitleText('Ghi chú'),
              const SizedBox(
                width: 16.0,
              ),
              Expanded(
                child: TextField(
                  controller: _noteController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                  minLines: 1,
                  maxLines: 10,
                  autocorrect: false,
                  onChanged: (note) => context.read<AbsentFormBloc>().add(AbsentFormEvent.noteChanged(note)),
                ),
              )
            ]);
      },
    );
  }
}

class CancelButton extends StatelessWidget {
  const CancelButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        context.read<AbsentFormBloc>().add(const AbsentFormEvent.cancelled());
      },
      child: const Text('Huỷ'),
    );
  }
}

class SubmitButton extends StatelessWidget {
  const SubmitButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        context.read<AbsentFormBloc>().add(const AbsentFormEvent.formSubmitted());
      },
      child: const Text('Xác nhận'),
    );
  }
}

class AbsentFormList extends StatelessWidget {
  const AbsentFormList({
    Key? key,
    required this.absentFormList,
  }) : super(key: key);

  final List<AbsentForm> absentFormList;

  @override
  Widget build(BuildContext context) {
    if (absentFormList.isEmpty) {
      return const Flexible(
        child: Center(
          child: Text('Không có đơn xin nghỉ phép'),
        ),
      );
    } else {
      return Flexible(
        child: ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: absentFormList.length,
          itemBuilder: (context, index) {
            return Card(
              shadowColor: Colors.grey.shade300,
              color: Color(Colors.grey.shade100.value),
              child: ExpansionTile(
                title: TitleText(absentFormList[index].status!.value, color: absentFormList[index].status!.toColor()),
                subtitle: Text(
                    'Từ ${absentFormList[index].startDate.toDisplayedDate()} đến hết ${absentFormList[index].endDate.toDisplayedDate()}'),
                trailing: absentFormList[index].status!.toIcon(),
                children: [
                  ListTile(
                    title: Text('Lý do: ${absentFormList[index].reason.value}'),
                  ),
                  ListTile(title: Text('Ghi chú: ${absentFormList[index].note}')),
                ],
              ),
            );
          },
        ),
      );
    }
  }
}
