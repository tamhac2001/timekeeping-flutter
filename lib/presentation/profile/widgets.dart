import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timekeeping/presentation/core/app_widgets.dart';

import '../../application/auth/authentication_bloc.dart';
import '../../application/profile/profile_screen_bloc.dart';
import '../routes/app_router.gr.dart';

class EmployeeAddressRow extends StatelessWidget {
  const EmployeeAddressRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileScreenBloc, ProfileScreenState>(
      builder: (context, state) {
        return Row(
          children: [
            Expanded(
                child: Column(
              children: const [
                NormalText('Địa chỉ'),
              ],
            )),
            Expanded(
                child: Column(
              children: [
                NormalText(
                  state.failureOrEmployee!
                      .fold((l) => '', (employee) => employee.address),
                ),
              ],
            )),
          ],
        );
      },
    );
  }
}

class EmployeePhoneNumberRow extends StatelessWidget {
  const EmployeePhoneNumberRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileScreenBloc, ProfileScreenState>(
      builder: (context, state) {
        return Row(
          children: [
            Expanded(
                child: Column(
              children: const [
                NormalText('Số điện thoại'),
              ],
            )),
            Expanded(
                child: Column(
              children: [
                NormalText(
                  state.failureOrEmployee!
                      .fold((l) => '', (employee) => employee.phoneNumber),
                ),
              ],
            )),
          ],
        );
      },
    );
  }
}

class EmployeeGenderRow extends StatelessWidget {
  const EmployeeGenderRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileScreenBloc, ProfileScreenState>(
      builder: (context, state) {
        return Row(
          children: [
            Expanded(
                child: Column(
              children: const [
                NormalText('Ngay sinh'),
              ],
            )),
            Expanded(
                child: Column(
              children: [
                NormalText(
                  state.failureOrEmployee!
                      .fold((l) => '', (employee) => employee.gender.name),
                ),
              ],
            )),
          ],
        );
      },
    );
  }
}

class EmployeeCodeRow extends StatelessWidget {
  const EmployeeCodeRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileScreenBloc, ProfileScreenState>(
      builder: (context, state) {
        return Row(
          children: [
            Expanded(
                child: Column(
              children: const [
                NormalText('Mã nhân viên'),
              ],
            )),
            Expanded(
                child: Column(
              children: [
                NormalText(
                  state.failureOrEmployee!
                      .fold((l) => '', (employee) => employee.code),
                ),
              ],
            )),
          ],
        );
      },
    );
  }
}

class LogoutButton extends StatelessWidget {
  const LogoutButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () async {
          context
              .read<AuthenticationBloc>()
              .add(const AuthenticationEvent.logout());
          AutoRouter.of(context).replaceAll([const SplashScreen()]);
        },
        child: const Text('Đăng xuất'));
  }
}
