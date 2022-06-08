import 'package:auto_route/auto_route.dart';

import '../absent_form/absent_form_screen.dart';
import '../assign_work_schedule/assign_work_schedule_screen.dart';
import '../check_in_check_out/check_in_check_out_screen.dart';
import '../check_in_check_out/qr_scanner_screen.dart';
import '../home/home_screen.dart';
import '../login/login_screen.dart';
import '../profile/profile_screen.dart';
import '../splash/splash_screen.dart';
import '../timekeeping_record_screen/timekeeping_record_screen.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  AutoRoute(page: SplashScreen, initial: true),
  AutoRoute(page: LoginScreen),
  AutoRoute(page: AssignWorkScheduleScreen),
  AutoRoute(
    path: '/',
    page: HomeScreen,
    children: [
      AutoRoute(
          path: 'ci_co',
          page: EmptyRouterPage,
          initial: true,
          maintainState: true,
          children: [
            AutoRoute(
              path: '',
              page: CheckInCheckOutScreen,
            ),
            AutoRoute(
              path: 'qr_scan',
              page: QrScannerScreen,
              // transitionsBuilder: TransitionsBuilders.fadeIn,
            ),
          ]),
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
])
class $AppRouter {}
