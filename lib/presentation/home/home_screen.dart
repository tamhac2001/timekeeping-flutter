import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/absent_form/absent_form_bloc.dart';
import '../../application/cubits/absent_list_cubit.dart';
import '../../application/checkin_checkout/checkin_checkout_screen_bloc.dart';
import '../../application/checkin_checkout/qr_scan_screen_bloc.dart';
import '../../application/cubits/employee_cubit.dart';
import '../../application/cubits/timekeeping_cubit.dart';
import '../../application/employee/profile_screen_bloc.dart';
import '../../application/cubits/schedule/schedule_cubit.dart';
import '../../application/notification/notification_bloc.dart';
import '../../application/timekeeping_record/timekeeping_record_screen_bloc.dart';
import '../../infrastructure/absent/absent_repository.dart';
import '../../infrastructure/employee/employee_repository.dart';
import '../../infrastructure/timekeeping/timekeeping_repository.dart';
import '../core/app_widgets.dart';
import '../routes/app_router.gr.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<NotificationBloc>().add(const NotificationEvent.initialize());
    return MultiBlocProvider(
      providers: [
        BlocProvider<CheckinCheckoutScreenBloc>(
          create: (context) {
            return CheckinCheckoutScreenBloc(
                absentListCubit: BlocProvider.of<AbsentListCubit>(context),
                timekeepingCubit: BlocProvider.of<TimekeepingCubit>(context));
          },
        ),
        BlocProvider<QrScanScreenBloc>(
          create: (context) {
            return QrScanScreenBloc(repository: RepositoryProvider.of<TimekeepingRepository>(context));
          },
        ),
        BlocProvider<TimekeepingRecordScreenBloc>(create: (context) {
          return TimekeepingRecordScreenBloc(
              timekeepingRepository: RepositoryProvider.of<TimekeepingRepository>(context),
              scheduleCubit: BlocProvider.of<ScheduleCubit>(context),
              employeeCubit: BlocProvider.of<EmployeeCubit>(context),
              absentListCubit: BlocProvider.of<AbsentListCubit>(context));
        }),
        BlocProvider<AbsentFormBloc>(
            create: (context) => AbsentFormBloc(
                repository: RepositoryProvider.of<AbsentRepository>(context),
                absentListCubit: BlocProvider.of<AbsentListCubit>(context))),
        BlocProvider<ProfileScreenBloc>(
          create: (context) {
            return ProfileScreenBloc(
                employeeRepository: RepositoryProvider.of<EmployeeRepository>(context),
                employeeCubit: BlocProvider.of<EmployeeCubit>(context));
          },
          lazy: false,
        ),
      ],
      child: AutoTabsScaffold(
        routes: [
          CheckInCheckOutRouter(children: [
            const CheckInCheckOutScreen(),
            QrScannerScreen(),
          ]),
          const TimekeepingRecordScreen(),
          const AbsentFormScreen(),
          const ProfileScreen(),
        ],
        bottomNavigationBuilder: (context, tabsRouter) => MyBottomAppBar(
          initialActiveIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
        ),
        // builder: (context,widget,animation){
        //   return const AutoRouter();
        // },
        // homeIndex: 1,
      ),
    );
  }
}
