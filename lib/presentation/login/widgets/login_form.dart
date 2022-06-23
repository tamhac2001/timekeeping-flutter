import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timekeeping/application/auth/authentication_bloc.dart';

import '../../../application/auth/login_form/login_form_bloc.dart';
import '../../core/app_widgets.dart';
import 'widgets.dart';

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
                  ), (_) {
            context.read<AuthenticationBloc>().add(const AuthenticationEvent.authRequest());
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
                SizedBox(height: 100, width: 100, child: Image.asset('assets/logos/logo.png')),
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
                const EmailFormField(),
                const SizedBox(
                  height: 32,
                ),
                const PasswordFormField(),
                const SizedBox(
                  height: 32,
                ),
                if (state.isSubmitting) const LinearProgressIndicator(),
                const LoginButton(),
                const SizedBox(
                  height: 32,
                ),
                const ForgotPasswordButton()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
