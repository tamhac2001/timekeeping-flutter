import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timekeeping/application/notification/notification_bloc.dart';

import '../../application/auth/authentication_bloc.dart';
import '../routes/app_router.gr.dart';

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
          context.router.replace(const SplashScreenRoute());
        },
        child: const Text('Đăng xuất'));
  }
}
