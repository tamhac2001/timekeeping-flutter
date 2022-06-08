import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../application/auth/authentication_bloc.dart';
import '../routes/app_router.gr.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthenticationBloc, AuthenticationState>(
      listener: (context, state) {
        state.when(initial: () {
          debugPrint('Initial State');
        }, authenticated: (_, __) {
          debugPrint('Authenticated State');
          AutoRouter.of(context)
              .replace(const AssignWorkScheduleScreenRoute());
        }, unauthenticated: () {
          debugPrint('Unauthenticated State');
          AutoRouter.of(context).replace(const LoginScreenRoute());
        });
      },
      builder: (context, state) {
        context
            .read<AuthenticationBloc>()
            .add(const AuthenticationEvent.authRequest());
        return state.maybeWhen(
            initial: () => const Scaffold(
                  body: Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
            orElse: () => Container());
      },
    );
  }
}
