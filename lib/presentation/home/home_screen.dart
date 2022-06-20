import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timekeeping/application/checkin_checkout/qr_scan_screen_bloc.dart';
import 'package:timekeeping/application/profile/profile_screen_bloc.dart';
import 'package:timekeeping/infrastructure/employee/employee_repository.dart';
import 'package:timekeeping/infrastructure/secure_storage/secure_storage_repository.dart';
import 'package:timekeeping/infrastructure/timekeeping/timekeeping_repository.dart';

import '../../application/absent_form/absent_form_bloc.dart';
import '../../application/checkin_checkout/checkin_checkout_screen_bloc.dart';
import '../../application/timekeeping_record/timekeeping_record_screen_bloc.dart';
import '../../infrastructure/absent/absent_repository.dart';
import '../core/app_widgets.dart';
import '../routes/app_router.gr.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CheckinCheckoutScreenBloc>(
          create: (context) {
            final bloc = CheckinCheckoutScreenBloc(
              repository: RepositoryProvider.of<TimekeepingRepository>(context),
            );
            // bloc.add(const CheckinCheckoutScreenEvent.getSchedule());
            // bloc.add(const CheckinCheckoutScreenEvent.getTimekeeping());
            return bloc;
          },
        ),
        BlocProvider<QrScanScreenBloc>(
          create: (context) {
            return QrScanScreenBloc(repository: RepositoryProvider.of<TimekeepingRepository>(context));
          },
        ),
        BlocProvider<TimekeepingRecordScreenBloc>(
          create: (context) => TimekeepingRecordScreenBloc(),
          lazy: false,
        ),
        BlocProvider<AbsentFormBloc>(
            create: (context) => AbsentFormBloc(repository: RepositoryProvider.of<AbsentRepository>(context))),
        BlocProvider<ProfileScreenBloc>(
          create: (context) {
            final bloc = ProfileScreenBloc(
              employeeRepository: RepositoryProvider.of<EmployeeRepository>(context),
              storage: RepositoryProvider.of<SecureStorageRepository>(context),
            );
            bloc.add(const ProfileScreenEvent.employeeRequest());
            return bloc;
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
