import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timekeeping/application/auth/authentication_bloc.dart';
import 'package:timekeeping/presentation/core/app_widgets.dart';

import '../../../application/auth/login_form/login_form_bloc.dart';
import '../../routes/app_router.gr.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginFormBloc, LoginFormState>(
      listener: (context, state) {
        if (state.authFailureOrSuccess != null) {
          state.authFailureOrSuccess!.fold(
              (failure) => failure.when(
                    serverError: () => showMyDialog(
                      context,
                      title: 'Đăng nhập',
                      text: 'Lỗi khi kết nối đến server',
                    ),
                    invalidEmailAndPassword: () => showMyDialog(
                      context,
                      title: 'Đăng nhập',
                      text: 'Sai email hoặc mật khẩu',
                    ),
                    employeeNotFound: () => showMyDialog(
                      context,
                      title: 'Đăng nhập',
                      text: 'Không tìm thấy nhân viên ứng với tài khoản này',
                    ),
                  ), (success) {
            // context
            //     .read<AuthenticationBloc>()
            //     .add(const AuthenticationEvent.authRequest());
          });
        }
      },
      builder: (context, state) => IgnorePointer(
        ignoring: state.isSubmitting,
        child: Form(
          autovalidateMode: state.showErrorMessages,
          child: Padding(
            padding: const EdgeInsets.all(32.0),
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
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.email),
                        labelText: 'email',
                      ),
                      keyboardType: TextInputType.emailAddress,
                      autocorrect: false,
                      onChanged: (email) => context
                          .read<LoginFormBloc>()
                          .add(LoginFormEvent.emailChanged(email)),
                      validator: (_) => context
                          .read<LoginFormBloc>()
                          .state
                          .email
                          .value
                          .fold(
                              (failure) => failure.maybeWhen(
                                  invalidEmail: (_) => 'Email không hợp lệ',
                                  orElse: () => null),
                              (_) => null),
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
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.lock),
                        labelText: 'password',
                      ),
                      keyboardType: TextInputType.visiblePassword,
                      autocorrect: false,
                      obscureText: true,
                      onChanged: (password) => context
                          .read<LoginFormBloc>()
                          .add(LoginFormEvent.passwordChanged(password)),
                      // not use state.password.value because state is the all state
                      validator: (password) => context
                          .read<LoginFormBloc>()
                          .state
                          .password
                          .value
                          .fold(
                              (failure) => failure.maybeWhen(
                                  invalidPassword: (_) =>
                                      'Password phải có ít nhất 6 ký tự và dưới 40 ký tự',
                                  orElse: () => null),
                              (_) => null),
                    );
                  },
                ),
                const SizedBox(
                  height: 32,
                ),
                if (state.isSubmitting) const LinearProgressIndicator(),
                ElevatedButton(
                  onPressed: () {
                    context
                        .read<LoginFormBloc>()
                        .add(const LoginFormEvent.login());
                  },
                  child: const Text('Login >'),
                ),
                const SizedBox(
                  height: 32,
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Quên password?',
                    style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
