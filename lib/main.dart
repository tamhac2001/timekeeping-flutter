import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'application/auth/authentication_bloc.dart';
import 'application/notification/notification_bloc.dart';
import 'infrastructure/absent/absent_repository.dart';
import 'infrastructure/absent/api/absent_api_client.dart';
import 'infrastructure/auth/authentication_api_client.dart';
import 'infrastructure/auth/authentication_repository.dart';
import 'infrastructure/employee/employee_api_client.dart';
import 'infrastructure/employee/employee_repository.dart';
import 'infrastructure/schedule/schedule_api_client.dart';
import 'infrastructure/schedule/schedule_repository.dart';
import 'infrastructure/secure_storage/secure_storage_repository.dart';

import 'infrastructure/timekeeping/timekeeping_api_client.dart';
import 'infrastructure/timekeeping/timekeeping_repository.dart';
import 'presentation/routes/app_router.gr.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
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
          BlocProvider(
            create: (context) => AuthenticationBloc(
                authenticationRepository: RepositoryProvider.of<AuthenticationRepository>(context),
                employeeRepository: RepositoryProvider.of<EmployeeRepository>(context)),
          ),
          BlocProvider<NotificationBloc>(
              create: (context) => NotificationBloc(storage: RepositoryProvider.of<SecureStorageRepository>(context))),
        ],
        child: MaterialApp.router(
          title: 'Flutter Demo',
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
              primarySwatch: Colors.green,
              primaryColor: Colors.green,
              textTheme: ThemeData.light().textTheme.copyWith()),
          routerDelegate: _appRouter.delegate(),
          routeInformationParser: _appRouter.defaultRouteParser(),
        ),
      ),
    );
  }
}
