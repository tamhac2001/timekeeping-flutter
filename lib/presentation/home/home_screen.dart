import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timekeeping/application/absent_form/absent_form_bloc.dart';
import 'package:timekeeping/application/checkin_checkout/checkin_checkout_screen_bloc.dart';

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
                apiClient: FakeUserApiClient(),
                accessToken: BlocProvider.of<AuthenticationBloc>(context)
                    .state
                    .maybeWhen(
                        authenticated: (accessToken, expireDate) => accessToken,
                        orElse: () => '')),
          )
        ],
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => CheckinCheckoutScreenBloc(),
            ),
            BlocProvider(
              create: (context) => TimekeepingRecordScreenBloc(),
            ),
            BlocProvider(
              create: (context) => AbsentFormBloc(),
            )
          ],
          child: this,
        ));
  }

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        EmptyRouterPageRoute(
          children: [CheckInCheckOutScreenRoute()],
        ),
        TimekeepingRecordScreenRoute(),
        AbsentFormScreenRoute(),
        ProfileScreenRoute(),
      ],
      builder: (context, child, _) {
        return child;
      },
      bottomNavigationBuilder: (context, tabsRouter) => MyBottomAppBar(
        initialActiveIndex: tabsRouter.activeIndex,
        onTap: tabsRouter.setActiveIndex,
      ),
      // builder: (context,widget,animation){
      //   return const AutoRouter();
      // },
      // homeIndex: 1,
    );
  }
}
