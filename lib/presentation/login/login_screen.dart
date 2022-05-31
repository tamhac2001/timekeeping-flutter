import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timekeeping/presentation/login/widgets/login_form.dart';

import '../../application/auth/login_form/login_form_bloc.dart';
import '../../infrastructure/auth/authentication_repository.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => LoginFormBloc(
            authenticationRepository:
                RepositoryProvider.of<AuthenticationRepository>(context)),
        child: const LoginForm(),
      ),
    );
  }
}
