import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timekeeping/presentation/login/widgets/login_form.dart';

import '../../application/auth/authentication_bloc.dart';
import '../../application/auth/login_form/login_form_bloc.dart';
import '../../infrastructure/auth/authentication_repository.dart';
import '../routes/app_router.gr.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => LoginFormBloc(
            authenticationRepository:
                RepositoryProvider.of<AuthenticationRepository>(context)),
        child: BlocConsumer<AuthenticationBloc, AuthenticationState>(
            listener: (context, state) {
          state.when(
            initial: () {
              debugPrint('Initial State');
            },
            authenticated: (accessToken, employee) async {
              debugPrint('Authenticated State');
              // !! IF NO EMPLOYEE LINK WITH THAT ACCOUNT IT WILL NOT WORK
              AutoRouter.of(context).replace(const AssignWorkScheduleScreen());
            },
            unauthenticated: () {
              debugPrint('Unauthenticated State');
            },
          );
        }, builder: (context, state) {
          if (state.maybeWhen(initial: () => true, orElse: () => false)) {
            context
                .read<AuthenticationBloc>()
                .add(const AuthenticationEvent.authRequest());
          }
          return state.when(
            initial: () => const Center(
              child: CircularProgressIndicator(),
            ),
            authenticated: (_, __) => Container(),
            unauthenticated: () => const LoginForm(),
          );
        }),
      ),
    );
  }
}
