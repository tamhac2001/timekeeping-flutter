import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_timezone/flutter_native_timezone.dart';

import 'package:timezone/data/latest_all.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

import 'application/cubits/absent_list_cubit.dart';
import 'application/auth/authentication_bloc.dart';
import 'application/cubits/employee_cubit.dart';
import 'application/cubits/timekeeping_cubit.dart';
import 'application/notification/notification_bloc.dart';
import 'application/cubits/schedule/schedule_cubit.dart';
import 'infrastructure/absent/absent_repository.dart';
import 'infrastructure/absent/api/absent_api_client.dart';
import 'infrastructure/auth/api/authentication_api_client.dart';
import 'infrastructure/auth/authentication_repository.dart';
import 'infrastructure/employee/api/employee_api_client.dart';
import 'infrastructure/employee/employee_repository.dart';
import 'infrastructure/schedule/api/schedule_api_client.dart';
import 'infrastructure/schedule/schedule_repository.dart';
import 'infrastructure/secure_storage/secure_storage_repository.dart';

import 'infrastructure/timekeeping/timekeeping_api_client.dart';
import 'infrastructure/timekeeping/timekeeping_repository.dart';
import 'presentation/routes/app_router.gr.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  tz.initializeTimeZones();
  final String timeZoneName = await FlutterNativeTimezone.getLocalTimezone();
  tz.setLocalLocation(tz.getLocation(timeZoneName));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final _appRouter = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<SecureStorageRepository>(
          create: (context) => SecureStorageRepository(),
        ),
        RepositoryProvider<AuthenticationRepository>(
            create: (context) => AuthenticationRepository(
                  apiClient: AuthenticationApiClient(),
                  storage: RepositoryProvider.of<SecureStorageRepository>(context),
                )),
        RepositoryProvider<EmployeeRepository>(
            create: (context) => EmployeeRepository(
                  apiClient: const EmployeeApiClient(),
                  storage: RepositoryProvider.of<SecureStorageRepository>(context),
                )),
        RepositoryProvider<ScheduleRepository>(
          create: (context) {
            return ScheduleRepository(
                apiClient: ScheduleApiClient(), storage: RepositoryProvider.of<SecureStorageRepository>(context));
          },
        ),
        RepositoryProvider<TimekeepingRepository>(
            create: (context) => TimekeepingRepository(
                apiClient: TimekeepingApiClient(), storage: RepositoryProvider.of<SecureStorageRepository>(context))),
        RepositoryProvider<AbsentRepository>(
            create: (context) => AbsentRepository(
                apiClient: AbsentApiClient(), storage: RepositoryProvider.of<SecureStorageRepository>(context))),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider<AuthenticationBloc>(
            lazy: false,
            create: (context) => AuthenticationBloc(
              authenticationRepository: RepositoryProvider.of<AuthenticationRepository>(context),
            ),
          ),
          BlocProvider<EmployeeCubit>(
              create: (context) => EmployeeCubit(repository: RepositoryProvider.of<EmployeeRepository>(context))),
          BlocProvider<ScheduleCubit>(
              create: (context) => ScheduleCubit(
                  repository: RepositoryProvider.of<ScheduleRepository>(context),
                  employeeCubit: BlocProvider.of<EmployeeCubit>(context))),
          BlocProvider<AbsentListCubit>(
              create: (context) => AbsentListCubit(repository: RepositoryProvider.of<AbsentRepository>(context))),
          BlocProvider<TimekeepingCubit>(
              create: (context) => TimekeepingCubit(
                  repository: RepositoryProvider.of<TimekeepingRepository>(context),
                  scheduleCubit: BlocProvider.of<ScheduleCubit>(context))),
          BlocProvider<NotificationBloc>(
              create: (context) => NotificationBloc(timekeepingCubit: BlocProvider.of<TimekeepingCubit>(context))),
        ],
        child: MaterialApp.router(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              // This is the theme of your application.
              //
              // Try running your application with "flutter run". You'll see the
              // application has a blue toolbar. Then, without quitting the app, try
              // changing the primarySwatch below to Colors.green and then invoke
              // "hot reload" (press "r" in the console where you ran "flutter run",
              // or simply save your changes to "hot reload" in a Flutter IDE).
              // Notice that the counter didn't reset back to zero; the application
              // is not restarted.
              primaryColorLight: Colors.white,
              // primaryColorDark: Colors.black87,

              primarySwatch: Colors.green,
              // primaryColor: Colors.green,
              textTheme: ThemeData.light().textTheme.copyWith()),
          routerDelegate: _appRouter.delegate(),
          routeInformationParser: _appRouter.defaultRouteParser(),
        ),
      ),
    );
  }
}
