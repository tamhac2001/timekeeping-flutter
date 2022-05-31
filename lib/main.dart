import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import 'application/auth/authentication_bloc.dart';
import 'application/work_schedule/assign_work_schedule_form_bloc.dart';
import 'infrastructure/auth/secure_storage_repository.dart';
import 'infrastructure/auth/authentication_repository.dart';
import 'infrastructure/auth/fake_authentiacation_api_client.dart';
import 'infrastructure/auth/i_authentication_api_client.dart';
import 'presentation/routes/app_router.gr.dart';

void main() {
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
        RepositoryProvider(
          create: (context) => SecureStorageRepository(),
        ),
        RepositoryProvider(
          create: (context) => AuthenticationRepository(
              secureStorageRepository:
                  RepositoryProvider.of<SecureStorageRepository>(context),
              authenticationApiClient: FakeAuthenticationApiClient()),
        )
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => AuthenticationBloc(
                RepositoryProvider.of<AuthenticationRepository>(context)),
          ),
          BlocProvider(
            create: (context) => AssignWorkScheduleFormBloc(),
          ),
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
