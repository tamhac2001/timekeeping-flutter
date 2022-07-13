import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timekeeping/presentation/core/app_widgets.dart';

import '../../application/auth/authentication_bloc.dart';
import '../../application/auth/login_form/login_form_bloc.dart';
import '../../infrastructure/auth/authentication_repository.dart';
import '../routes/app_router.gr.dart';
import 'widgets/login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          LoginFormBloc(authenticationRepository: RepositoryProvider.of<AuthenticationRepository>(context)),
      child: BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, state) {
          context.read<AuthenticationBloc>().add(const AuthenticationEvent.authRequest());
          return state.when(
            initial: () => const LoadingScreen(appBarTitle: null),
            authenticated: () {
              // !! IF NO EMPLOYEE LINK WITH THE ACCOUNT IT WILL NOT WORK
              context.router.replace(const AssignScheduleScreen());
              return const LoadingScreen(appBarTitle: null);
            },
            unauthenticated: () => const LoginForm(),
          );
        },
      ),
    );
  }
}
