import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/auth/login_form/login_form_bloc.dart';
import '../../routes/app_router.gr.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginFormBloc, LoginFormState>(
      listener: (context, state) {
        if (state.formSubmittedSuccessOrFail != null &&
            state.formSubmittedSuccessOrFail!) {
          AutoRouter.of(context).replace(const SplashScreenRoute());
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Form(
          child: ListView(
            children: [
              SizedBox(
                  height: 100,
                  width: 100,
                  child: Image.asset('assets/logos/logo.png')),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                height: 100,
                width: 208,
                child: Image.asset('assets/logos/cham_cong.png'),
              ),
              const SizedBox(
                height: 32,
              ),
              BlocBuilder<LoginFormBloc, LoginFormState>(
                buildWhen: (previous, current) =>
                    previous.email != current.email,
                builder: (context, state) {
                  return TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), labelText: 'email'),
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (email) => context
                        .read<LoginFormBloc>()
                        .add(LoginFormEvent.emailChanged(email)),
                  );
                },
              ),
              const SizedBox(
                height: 32,
              ),
              BlocBuilder<LoginFormBloc, LoginFormState>(
                buildWhen: (previous, current) =>
                    previous.password != current.password,
                builder: (context, state) {
                  return TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), labelText: 'password'),
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    onChanged: (password) => context
                        .read<LoginFormBloc>()
                        .add(LoginFormEvent.passwordChanged(password)),
                  );
                },
              ),
              const SizedBox(
                height: 32,
              ),
              SizedBox(
                child: ElevatedButton(
                  onPressed: () {
                    context
                        .read<LoginFormBloc>()
                        .add(const LoginFormEvent.login());
                  },
                  child: const Text('Login >'),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Quên password?',
                  style: TextStyle(
                      color: Colors.blue, decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
