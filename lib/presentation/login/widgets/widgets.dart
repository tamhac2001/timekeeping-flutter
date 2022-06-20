import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/auth/login_form/login_form_bloc.dart';

class EmailFormField extends StatelessWidget {
  const EmailFormField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginFormBloc, LoginFormState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return TextFormField(
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.email),
            labelText: 'email',
          ),
          keyboardType: TextInputType.emailAddress,
          autocorrect: false,
          onChanged: (email) => context.read<LoginFormBloc>().add(LoginFormEvent.emailChanged(email)),
          validator: (_) => context.read<LoginFormBloc>().state.email.value.fold(
              (failure) => failure.maybeWhen(invalidEmail: (_) => 'Email không hợp lệ', orElse: () => null),
              (_) => null),
        );
      },
    );
  }
}

class PasswordFormField extends StatelessWidget {
  const PasswordFormField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginFormBloc, LoginFormState>(
      buildWhen: (previous, current) => previous.password != current.password,
      builder: (context, state) {
        return TextFormField(
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.lock),
            labelText: 'password',
          ),
          keyboardType: TextInputType.visiblePassword,
          autocorrect: false,
          obscureText: true,
          onChanged: (password) => context.read<LoginFormBloc>().add(LoginFormEvent.passwordChanged(password)),
          // not use state.password.value because state is the all state
          validator: (password) => context.read<LoginFormBloc>().state.password.value.fold(
              (failure) => failure.maybeWhen(
                  invalidPassword: (_) => 'Password phải có ít nhất 6 ký tự và dưới 40 ký tự', orElse: () => null),
              (_) => null),
        );
      },
    );
  }
}

class LoginButton extends StatelessWidget {
  const LoginButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        context.read<LoginFormBloc>().add(const LoginFormEvent.login());
      },
      child: const Text('Login >'),
    );
  }
}

class ForgotPasswordButton extends StatelessWidget {
  const ForgotPasswordButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: const Text(
        'Quên password?',
        style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline),
      ),
    );
  }
}
