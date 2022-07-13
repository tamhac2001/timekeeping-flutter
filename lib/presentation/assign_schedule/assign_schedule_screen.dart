import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timekeeping/application/cubits/absent_list_cubit.dart';
import 'package:timekeeping/presentation/assign_schedule/widgets/assign_schedule_form.dart';

import '../../application/notification/notification_bloc.dart';
import '../../application/schedule/assign_schedule_form_bloc.dart';
import '../../application/cubits/schedule/schedule_cubit.dart';
import '../../domain/schedule/schedule.dart';
import '../../domain/schedule/schedule_failure.dart';
import '../../infrastructure/schedule/schedule_repository.dart';
import '../../infrastructure/secure_storage/secure_storage_repository.dart';
import '../core/app_widgets.dart';
import '../routes/app_router.gr.dart';

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
      child: BlocConsumer<ScheduleCubit, ScheduleState>(
        listener: (context, state) {
          if (state.scheduleFailureOrSchedule != null) {
            state.scheduleFailureOrSchedule!.fold(
                (failure) => failure.maybeWhen(
                      unAuthenticated: () => showTokenExpireDialog(context),
                      noScheduleStored: () {
                        debugPrint('No schedule store');
                      },
                      orElse: () => null,
                    ), (schedule) {
              AutoRouter.of(context).replace(const HomeScreen());
            });
          }
        },
        builder: (context, state) {
          if (state.scheduleFailureOrSchedule == null) {
            context.read<ScheduleCubit>().scheduleRequest();
            return const LoadingScreen();
          }
          if (state.isLoading) return const LoadingScreen();
          return state.scheduleFailureOrSchedule!.fold(
            (failure) => failure.maybeWhen(
              noScheduleStored: () => const AssignScheduleForm(),
              orElse: () => FailureScreen(
                  appBarTitle: 'Lịch làm việc',
                  failureText: failure.toFailureMessage(),
                  retryCallback: () => context.read<ScheduleCubit>().scheduleRequest()),
            ),
            (_) => const LoadingScreen(),
          );
        },
      ),
    );
  }
}
