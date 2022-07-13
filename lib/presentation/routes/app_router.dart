import 'package:auto_route/auto_route.dart';

import '../absent_form/absent_form_screen.dart';
import '../assign_schedule/assign_schedule_screen.dart';
import '../check_in_check_out/check_in_check_out_router.dart';
import '../check_in_check_out/check_in_check_out_screen.dart';
import '../check_in_check_out/qr_scanner_screen.dart';
import '../home/home_screen.dart';
import '../login/login_screen.dart';
import '../profile/profile_screen.dart';
import '../splash/splash_screen.dart';
import '../timekeeping_record_screen/timekeeping_record_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashScreen, initial: true),
    AutoRoute(page: LoginScreen, path: 'login'),
    AutoRoute(page: AssignScheduleScreen, path: 'schedule'),
    AutoRoute(
      path: '/',
      page: HomeScreen,
      children: [
        AutoRoute(
          path: '',
          page: CheckInCheckOutRouter,
          children: [
            AutoRoute(
              path: '',
              page: CheckInCheckOutScreen,
            ),
            AutoRoute<bool>(
              path: 'qr_scan',
              page: QrScannerScreen,
              // transitionsBuilder: TransitionsBuilders.fadeIn,
            ),
          ],
        ),
        AutoRoute(
          page: TimekeepingRecordScreen,
        ),
        AutoRoute(
          path: 'absent_form',
          page: AbsentFormScreen,
          // transitionsBuilder: TransitionsBuilders.fadeIn,
        ),
        AutoRoute(
          path: 'profile',
          page: ProfileScreen,
          // transitionsBuilder: TransitionsBuilders.fadeIn,
        ),
      ],
    ),
  ],
)
class $AppRouter {}
