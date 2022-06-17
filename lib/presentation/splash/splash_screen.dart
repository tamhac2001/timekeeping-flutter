import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../routes/app_router.gr.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AutoRouter.of(context).replace(const LoginScreen());
    return Container();
  }
}
