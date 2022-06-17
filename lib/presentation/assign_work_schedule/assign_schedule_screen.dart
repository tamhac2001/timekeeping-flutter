import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timekeeping/application/notification/notification_bloc.dart';

import '../../application/schedule/assign_schedule_form_bloc.dart';
import '../../infrastructure/schedule/schedule_api_client.dart';
import '../../infrastructure/schedule/schedule_repository.dart';
import '../../infrastructure/secure_storage/secure_storage_repository.dart';
import '../core/app_widgets.dart';
import '../routes/app_router.gr.dart';
import 'widgets.dart';

class AssignScheduleScreen extends StatelessWidget {
  const AssignScheduleScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<ScheduleRepository>(
          create: (context) {
            return ScheduleRepository(
                apiClient: ScheduleApiClient(),
                secureStorageRepository: RepositoryProvider.of<SecureStorageRepository>(context));
          },
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<AssignScheduleFormBloc>(
            create: (context) => AssignScheduleFormBloc(
              repository: RepositoryProvider.of<ScheduleRepository>(context),
              storage: RepositoryProvider.of<SecureStorageRepository>(context),
            ),
          ),
        ],
        child: SafeArea(
            child: BlocConsumer<AssignScheduleFormBloc, AssignScheduleFormState>(
          listenWhen: (previous, current) => previous.scheduleFailureOrSuccess != current.scheduleFailureOrSuccess,
          listener: (context, state) {
            if (state.scheduleFailureOrSuccess != null) {
              state.scheduleFailureOrSuccess!.fold(
                  (failure) => failure.when(
                        serverError: () {
                          showMyDialog(context, title: 'Đăng ký lịch làm việc', text: 'Lỗi server');
                        },
                        noScheduleStored: () {
                          debugPrint('No schedule store');
                        },
                      ), (_) {
                context.read<NotificationBloc>().add(const NotificationEvent.initialize());
                AutoRouter.of(context).replace(const HomeScreen());
              });
            }
          },
          // buildWhen: (previous, current) =>
          //     (previous.scheduleFailureOrSuccess !=
          //         current.scheduleFailureOrSuccess) ||
          //     (previous.isLoading != current.isLoading),
          builder: (context, state) {
            // if (state.scheduleFailureOrSuccess != null &&
            //     state.scheduleFailureOrSuccess!.isRight()) {
            // } else {
            //   context.read<AssignWorkScheduleFormBloc>().add(
            //       const AssignWorkScheduleFormEvent.workScheduleRequested());
            // }
            if (state.scheduleFailureOrSuccess == null && state.isLoading == false) {
              context.read<AssignScheduleFormBloc>().add(const AssignScheduleFormEvent.workScheduleRequested());
            }
            return Scaffold(
                appBar: AppBar(
                  centerTitle: true,
                  title: const Text("Đăng ký lịch làm việc"),
                  automaticallyImplyLeading: false,
                ),
                body: (state.isLoading)
                    ? const Center(
                        child: CircularProgressIndicator(),
                      )
                    : state.scheduleFailureOrSuccess?.fold(
                        (failure) => Padding(
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
                                          showMyDialog(
                                            context,
                                            title: 'Đăng ký lịch làm việc',
                                            text: 'Bạn chắc chứ ?',
                                            action: [
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
                                                      .read<AssignScheduleFormBloc>()
                                                      .add(const AssignScheduleFormEvent.formSubmitted());
                                                  Navigator.of(context).pop();
                                                },
                                              ),
                                            ],
                                          );
                                        },
                                        child: const Text('Đăng ký')))
                              ],
                            )),
                        (_) => Container()));
          },
        )),
      ),
    );
  }
}
