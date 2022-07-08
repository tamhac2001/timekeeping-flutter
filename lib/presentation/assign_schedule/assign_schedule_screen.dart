import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/connectivity/connectivity_bloc.dart';
import '../../application/notification/notification_bloc.dart';
import '../../application/schedule/assign_schedule_form/assign_schedule_form_bloc.dart';
import '../../application/schedule/schedule_cubit.dart';
import '../../domain/schedule/schedule.dart';
import '../../domain/schedule/schedule_failure.dart';
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
      child: BlocConsumer<ScheduleCubit, Either<ScheduleFailure, Schedule>?>(
        listener: (context, state) {
          if (state != null) {
            state.fold(
                (failure) => failure.when(
                      serverError: () {
                        showMyDialog(context, title: 'Đăng ký lịch làm việc', text: 'Lỗi server');
                      },
                      noScheduleStored: () {
                        debugPrint('No schedule store');
                      },
                    ), (schedule) {
              context.read<NotificationBloc>().add(NotificationEvent.initialize(schedule));
              AutoRouter.of(context).replace(const HomeScreen());
            });
          }
        },
        builder: (context, state) {
          if (state == null) {
            final connectivityState = context.watch<ConnectivityBloc>().state;
            connectivityState.whenHasInternetAccess(context, () {
              context.read<ScheduleCubit>().initialized();
            }, okButtonPressedOnNoInternetAccessDialog: () {
              context.read<ScheduleCubit>().initialized();
            });
            return const SafeArea(child: Scaffold(body: Center(child: CircularProgressIndicator())));
          } else {
            return state.fold(
              (failure) => failure.when(
                  serverError: () => const SafeArea(child: Scaffold(body: Center(child: CircularProgressIndicator()))),
                  noScheduleStored: () => const AssignScheduleForm()),
              (_) => Container(),
            );
          }
        },
      ),
    );
  }
}
