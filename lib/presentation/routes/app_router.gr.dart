// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i11;
import 'package:flutter/material.dart' as _i12;

import '../absent_form/absent_form_screen.dart' as _i7;
import '../assign_work_schedule/assign_schedule_screen.dart' as _i3;
import '../check_in_check_out/check_in_check_out_router.dart' as _i5;
import '../check_in_check_out/check_in_check_out_screen.dart' as _i9;
import '../check_in_check_out/qr_scanner_screen.dart' as _i10;
import '../home/home_screen.dart' as _i4;
import '../login/login_screen.dart' as _i2;
import '../profile/profile_screen.dart' as _i8;
import '../splash/splash_screen.dart' as _i1;
import '../timekeeping_record_screen/timekeeping_record_screen.dart' as _i6;

class AppRouter extends _i11.RootStackRouter {
  AppRouter([_i12.GlobalKey<_i12.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    SplashScreen.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashScreen());
    },
    LoginScreen.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.LoginScreen());
    },
    AssignWorkScheduleScreen.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.AssignScheduleScreen());
    },
    HomeScreen.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.HomeScreen());
    },
    CheckInCheckOutRouter.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.CheckInCheckOutRouter());
    },
    TimekeepingRecordScreen.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.TimekeepingRecordScreen());
    },
    AbsentFormScreen.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.AbsentFormScreen());
    },
    ProfileScreen.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.ProfileScreen());
    },
    CheckInCheckOutScreen.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.CheckInCheckOutScreen());
    },
    QrScannerScreen.name: (routeData) {
      final args = routeData.argsAs<QrScannerScreenArgs>(
          orElse: () => const QrScannerScreenArgs());
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: _i10.QrScannerScreen(key: args.key));
    }
  };

  @override
  List<_i11.RouteConfig> get routes => [
        _i11.RouteConfig(SplashScreen.name, path: '/'),
        _i11.RouteConfig(LoginScreen.name, path: 'login'),
        _i11.RouteConfig(AssignWorkScheduleScreen.name, path: 'schedule'),
        _i11.RouteConfig(HomeScreen.name, path: '/', children: [
          _i11.RouteConfig(CheckInCheckOutRouter.name,
              path: '',
              parent: HomeScreen.name,
              children: [
                _i11.RouteConfig(CheckInCheckOutScreen.name,
                    path: '', parent: CheckInCheckOutRouter.name),
                _i11.RouteConfig(QrScannerScreen.name,
                    path: 'qr_scan', parent: CheckInCheckOutRouter.name)
              ]),
          _i11.RouteConfig(TimekeepingRecordScreen.name,
              path: 'timekeeping-record-screen', parent: HomeScreen.name),
          _i11.RouteConfig(AbsentFormScreen.name,
              path: 'absent_form', parent: HomeScreen.name),
          _i11.RouteConfig(ProfileScreen.name,
              path: 'profile', parent: HomeScreen.name)
        ])
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreen extends _i11.PageRouteInfo<void> {
  const SplashScreen() : super(SplashScreen.name, path: '/');

  static const String name = 'SplashScreen';
}

/// generated route for
/// [_i2.LoginScreen]
class LoginScreen extends _i11.PageRouteInfo<void> {
  const LoginScreen() : super(LoginScreen.name, path: 'login');

  static const String name = 'LoginScreen';
}

/// generated route for
/// [_i3.AssignScheduleScreen]
class AssignWorkScheduleScreen extends _i11.PageRouteInfo<void> {
  const AssignWorkScheduleScreen()
      : super(AssignWorkScheduleScreen.name, path: 'schedule');

  static const String name = 'AssignWorkScheduleScreen';
}

/// generated route for
/// [_i4.HomeScreen]
class HomeScreen extends _i11.PageRouteInfo<void> {
  const HomeScreen({List<_i11.PageRouteInfo>? children})
      : super(HomeScreen.name, path: '/', initialChildren: children);

  static const String name = 'HomeScreen';
}

/// generated route for
/// [_i5.CheckInCheckOutRouter]
class CheckInCheckOutRouter extends _i11.PageRouteInfo<void> {
  const CheckInCheckOutRouter({List<_i11.PageRouteInfo>? children})
      : super(CheckInCheckOutRouter.name, path: '', initialChildren: children);

  static const String name = 'CheckInCheckOutRouter';
}

/// generated route for
/// [_i6.TimekeepingRecordScreen]
class TimekeepingRecordScreen extends _i11.PageRouteInfo<void> {
  const TimekeepingRecordScreen()
      : super(TimekeepingRecordScreen.name, path: 'timekeeping-record-screen');

  static const String name = 'TimekeepingRecordScreen';
}

/// generated route for
/// [_i7.AbsentFormScreen]
class AbsentFormScreen extends _i11.PageRouteInfo<void> {
  const AbsentFormScreen() : super(AbsentFormScreen.name, path: 'absent_form');

  static const String name = 'AbsentFormScreen';
}

/// generated route for
/// [_i8.ProfileScreen]
class ProfileScreen extends _i11.PageRouteInfo<void> {
  const ProfileScreen() : super(ProfileScreen.name, path: 'profile');

  static const String name = 'ProfileScreen';
}

/// generated route for
/// [_i9.CheckInCheckOutScreen]
class CheckInCheckOutScreen extends _i11.PageRouteInfo<void> {
  const CheckInCheckOutScreen() : super(CheckInCheckOutScreen.name, path: '');

  static const String name = 'CheckInCheckOutScreen';
}

/// generated route for
/// [_i10.QrScannerScreen]
class QrScannerScreen extends _i11.PageRouteInfo<QrScannerScreenArgs> {
  QrScannerScreen({_i12.Key? key})
      : super(QrScannerScreen.name,
            path: 'qr_scan', args: QrScannerScreenArgs(key: key));

  static const String name = 'QrScannerScreen';
}

class QrScannerScreenArgs {
  const QrScannerScreenArgs({this.key});

  final _i12.Key? key;

  @override
  String toString() {
    return 'QrScannerScreenArgs{key: $key}';
  }
}
