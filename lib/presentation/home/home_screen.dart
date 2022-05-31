import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/auth/authentication_bloc.dart';
import '../../application/timekeeping_record/timekeeping_record_screen_bloc.dart';
import '../../infrastructure/user/fake_user_api_client.dart';
import '../../infrastructure/user/user_repository.dart';
import '../core/app_widgets.dart';
import '../routes/app_router.gr.dart';

class HomeScreen extends StatelessWidget implements AutoRouteWrapper {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return MultiRepositoryProvider(
        providers: [
          RepositoryProvider(
            create: (context) => UserRepository(
                FakeUserApiClient(),
                BlocProvider.of<AuthenticationBloc>(context).state.maybeWhen(
                    authenticated: (accessToken, expireDate) => accessToken,
                    orElse: () => '')),
          )
        ],
        child: BlocProvider(
          create: (context) => TimekeepingRecordScreenBloc(),
          child: this,
        ));
  }

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        CheckInCheckOutScreenRoute(),
        TimekeepingRecordScreenRoute(),
        AbsentFormScreenRoute(),
        ProfileScreenRoute(),
      ],
      bottomNavigationBuilder: (context, tabsRouter) => MyBottomAppBar(
        initialActiveIndex: tabsRouter.activeIndex,
        onTap: (index) => tabsRouter.setActiveIndex(index),
      ),
    );
  }
}
