// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i11;

import '../absent_form/absent_form_screen.dart' as _i7;
import '../assign_work_schedule/assign_work_schedule_screen.dart' as _i3;
import '../check_in_check_out/check_in_check_out_screen.dart' as _i9;
import '../check_in_check_out/qr_scanner_screen.dart' as _i10;
import '../home/home_screen.dart' as _i4;
import '../login/login_screen.dart' as _i2;
import '../profile/profile_screen.dart' as _i8;
import '../splash/splash_screen.dart' as _i1;
import '../timekeeping_record_screen/timekeeping_record_screen.dart' as _i6;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i11.GlobalKey<_i11.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashScreen());
    },
    LoginScreenRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.LoginScreen());
    },
    AssignWorkScheduleScreenRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.AssignWorkScheduleScreen());
    },
    HomeScreenRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i5.WrappedRoute(child: const _i4.HomeScreen()));
    },
    EmptyRouterPageRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.EmptyRouterPage());
    },
    TimekeepingRecordScreenRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.TimekeepingRecordScreen());
    },
    AbsentFormScreenRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.AbsentFormScreen());
    },
    ProfileScreenRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.ProfileScreen());
    },
    CheckInCheckOutScreenRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.CheckInCheckOutScreen());
    },
    QrScannerScreenRoute.name: (routeData) {
      final args = routeData.argsAs<QrScannerScreenRouteArgs>(
          orElse: () => const QrScannerScreenRouteArgs());
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: _i10.QrScannerScreen(key: args.key));
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(SplashScreenRoute.name, path: '/'),
        _i5.RouteConfig(LoginScreenRoute.name, path: '/login-screen'),
        _i5.RouteConfig(AssignWorkScheduleScreenRoute.name,
            path: '/assign-work-schedule-screen'),
        _i5.RouteConfig(HomeScreenRoute.name, path: '/', children: [
          _i5.RouteConfig('#redirect',
              path: '',
              parent: HomeScreenRoute.name,
              redirectTo: 'ci_co',
              fullMatch: true),
          _i5.RouteConfig(EmptyRouterPageRoute.name,
              path: 'ci_co',
              parent: HomeScreenRoute.name,
              children: [
                _i5.RouteConfig(CheckInCheckOutScreenRoute.name,
                    path: '', parent: EmptyRouterPageRoute.name),
                _i5.RouteConfig(QrScannerScreenRoute.name,
                    path: 'qr_scan', parent: EmptyRouterPageRoute.name)
              ]),
          _i5.RouteConfig(TimekeepingRecordScreenRoute.name,
              path: 'timekeeping-record-screen', parent: HomeScreenRoute.name),
          _i5.RouteConfig(AbsentFormScreenRoute.name,
              path: 'absent_form', parent: HomeScreenRoute.name),
          _i5.RouteConfig(ProfileScreenRoute.name,
              path: 'profile', parent: HomeScreenRoute.name)
        ])
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreenRoute extends _i5.PageRouteInfo<void> {
  const SplashScreenRoute() : super(SplashScreenRoute.name, path: '/');

  static const String name = 'SplashScreenRoute';
}

/// generated route for
/// [_i2.LoginScreen]
class LoginScreenRoute extends _i5.PageRouteInfo<void> {
  const LoginScreenRoute()
      : super(LoginScreenRoute.name, path: '/login-screen');

  static const String name = 'LoginScreenRoute';
}

/// generated route for
/// [_i3.AssignWorkScheduleScreen]
class AssignWorkScheduleScreenRoute extends _i5.PageRouteInfo<void> {
  const AssignWorkScheduleScreenRoute()
      : super(AssignWorkScheduleScreenRoute.name,
            path: '/assign-work-schedule-screen');

  static const String name = 'AssignWorkScheduleScreenRoute';
}

/// generated route for
/// [_i4.HomeScreen]
class HomeScreenRoute extends _i5.PageRouteInfo<void> {
  const HomeScreenRoute({List<_i5.PageRouteInfo>? children})
      : super(HomeScreenRoute.name, path: '/', initialChildren: children);

  static const String name = 'HomeScreenRoute';
}

/// generated route for
/// [_i5.EmptyRouterPage]
class EmptyRouterPageRoute extends _i5.PageRouteInfo<void> {
  const EmptyRouterPageRoute({List<_i5.PageRouteInfo>? children})
      : super(EmptyRouterPageRoute.name,
            path: 'ci_co', initialChildren: children);

  static const String name = 'EmptyRouterPageRoute';
}

/// generated route for
/// [_i6.TimekeepingRecordScreen]
class TimekeepingRecordScreenRoute extends _i5.PageRouteInfo<void> {
  const TimekeepingRecordScreenRoute()
      : super(TimekeepingRecordScreenRoute.name,
            path: 'timekeeping-record-screen');

  static const String name = 'TimekeepingRecordScreenRoute';
}

/// generated route for
/// [_i7.AbsentFormScreen]
class AbsentFormScreenRoute extends _i5.PageRouteInfo<void> {
  const AbsentFormScreenRoute()
      : super(AbsentFormScreenRoute.name, path: 'absent_form');

  static const String name = 'AbsentFormScreenRoute';
}

/// generated route for
/// [_i8.ProfileScreen]
class ProfileScreenRoute extends _i5.PageRouteInfo<void> {
  const ProfileScreenRoute() : super(ProfileScreenRoute.name, path: 'profile');

  static const String name = 'ProfileScreenRoute';
}

/// generated route for
/// [_i9.CheckInCheckOutScreen]
class CheckInCheckOutScreenRoute extends _i5.PageRouteInfo<void> {
  const CheckInCheckOutScreenRoute()
      : super(CheckInCheckOutScreenRoute.name, path: '');

  static const String name = 'CheckInCheckOutScreenRoute';
}

/// generated route for
/// [_i10.QrScannerScreen]
class QrScannerScreenRoute extends _i5.PageRouteInfo<QrScannerScreenRouteArgs> {
  QrScannerScreenRoute({_i11.Key? key})
      : super(QrScannerScreenRoute.name,
            path: 'qr_scan', args: QrScannerScreenRouteArgs(key: key));

  static const String name = 'QrScannerScreenRoute';
}

class QrScannerScreenRouteArgs {
  const QrScannerScreenRouteArgs({this.key});

  final _i11.Key? key;

  @override
  String toString() {
    return 'QrScannerScreenRouteArgs{key: $key}';
  }
}
