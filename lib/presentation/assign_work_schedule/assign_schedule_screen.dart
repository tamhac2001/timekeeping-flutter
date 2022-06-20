import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/notification/notification_bloc.dart';
import '../../application/schedule/assign_schedule_form_bloc.dart';
import '../../infrastructure/schedule/schedule_repository.dart';
import '../../infrastructure/secure_storage/secure_storage_repository.dart';
import '../core/app_widgets.dart';
import '../routes/app_router.gr.dart';
import 'widgets/assign_schedule_form.dart';

class AssignScheduleScreen extends StatelessWidget {
  const AssignScheduleScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AssignScheduleFormBloc>(
      create: (context) => AssignScheduleFormBloc(
        repository: RepositoryProvider.of<ScheduleRepository>(context),
        storage: RepositoryProvider.of<SecureStorageRepository>(context),
      ),
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
          builder: (context, state) {
            if (state.scheduleFailureOrSuccess == null && state.isLoading == false) {
              context.read<AssignScheduleFormBloc>().add(const AssignScheduleFormEvent.workScheduleRequested());
            }
            if (state.isLoading) {
              return const SafeArea(child: Scaffold(body: Center(child: CircularProgressIndicator())));
            } else {
              return const AssignScheduleForm();
            }
          }),
    );
  }
}
