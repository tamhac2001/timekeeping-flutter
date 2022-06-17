import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:timekeeping/application/absent_form/absent_form_bloc.dart';
import 'package:timekeeping/infrastructure/absent/absent_repository.dart';
import 'package:timekeeping/infrastructure/absent/api/absent_api_client.dart';
import 'package:timekeeping/infrastructure/secure_storage/secure_storage_repository.dart';

import '../../domain/absent/reason.dart';
import '../core/app_widgets.dart';
import 'widgets.dart';

class AbsentFormScreen extends StatelessWidget {
  const AbsentFormScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AbsentFormBloc, AbsentFormState>(
      listenWhen: (previous, current) =>
          previous.failureOrUnit != current.failureOrUnit,
      listener: (context, state) {
        if (state.failureOrUnit != null) {
          state.failureOrUnit!.fold(
              (failure) => failure.when(
                  serverError: () => showMyDialog(context,
                      title: 'Xin nghỉ phép',
                      text: 'Lỗi server',
                      barrierDismissible: true),
                  unAuthenticated: () => showMyDialog(context,
                      title: 'Xin nghỉ phép',
                      text: 'Phiên đăng nhập hết hạn',
                      barrierDismissible: true)), (_) {
            showMyDialog(context,
                title: 'Xin nghỉ phép',
                text: 'Xin nghỉ phép thành công',
                barrierDismissible: true);
            context
                .read<AbsentFormBloc>()
                .add(const AbsentFormEvent.cancelled());
          });
        }
      },
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Xin nghỉ phép'),
          ),
          body: SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const NormalText('Từ '),
                                  NormalText(DateFormat('dd/MM/yyyy')
                                      .format(state.absentForm.startDate)),
                                  IconButton(
                                      onPressed: () async {
                                        context.read<AbsentFormBloc>().add(
                                              AbsentFormEvent.startDatePicked(
                                                await selectStartDate(context),
                                              ),
                                            );
                                      },
                                      icon: const Icon(Icons.calendar_today)),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Flexible(child: const NormalText(' đến ')),
                                  NormalText(DateFormat('dd/MM/yyyy')
                                      .format(state.absentForm.endDate)),
                                  Flexible(
                                    child: IconButton(
                                        onPressed: () async {
                                          context.read<AbsentFormBloc>().add(
                                              AbsentFormEvent.endDatePicked(
                                                  await selectEndDate(
                                                      context,
                                                      state.absentForm
                                                          .startDate)));
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
                        child: DropdownButton<Reason>(
                          value: state.absentForm.reason,
                          items: [
                            const Reason.ill(),
                            const Reason.personal(),
                            const Reason.others()
                          ]
                              .map<DropdownMenuItem<Reason>>((reason) =>
                                  DropdownMenuItem<Reason>(
                                      value: reason,
                                      child: NormalText(reason.value)))
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
                            minLines: 1,
                            maxLines: 10,
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
                            .add(const AbsentFormEvent.formSubmitted());
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
      ),
    );
  }
}
//
// enum Reason {
//   benh,
//   coViec,
//   khac,
// }
