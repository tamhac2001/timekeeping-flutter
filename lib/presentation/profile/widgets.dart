import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timekeeping/application/absent_form/absent_form_bloc.dart';
import 'package:timekeeping/application/cubits/absent_list_cubit.dart';
import 'package:timekeeping/application/cubits/employee_cubit.dart';
import 'package:timekeeping/application/cubits/schedule/schedule_cubit.dart';
import 'package:timekeeping/application/cubits/timekeeping_cubit.dart';
import 'package:timekeeping/application/notification/notification_bloc.dart';
import 'package:timekeeping/presentation/core/app_widgets.dart';
import 'package:timekeeping/utils/extensions.dart';

import '../../application/auth/authentication_bloc.dart';
import '../../application/employee/profile_screen_bloc.dart';
import '../routes/app_router.gr.dart';

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                NormalText('Mã nhân viên'),
              ],
            )),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                NormalText(
                  state.failureOrEmployee!.fold((l) => '', (employee) => employee.code),
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                NormalText('Giới tính'),
              ],
            )),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                NormalText(
                  state.failureOrEmployee!.fold((l) => '', (employee) => employee.gender.name),
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                NormalText('Số điện thoại'),
              ],
            )),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                NormalText(
                  state.failureOrEmployee!.fold((l) => '', (employee) => employee.phoneNumber),
                ),
              ],
            )),
          ],
        );
      },
    );
  }
}

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                NormalText('Địa chỉ'),
              ],
            )),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                NormalText(
                  state.failureOrEmployee!.fold((l) => '', (employee) => employee.address),
                ),
              ],
            )),
          ],
        );
      },
    );
  }
}

class EmployeeStartDateRow extends StatelessWidget {
  const EmployeeStartDateRow({
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                NormalText('Ngày bắt đầu làm'),
              ],
            )),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                NormalText(
                  state.failureOrEmployee!
                      .fold((l) => '', (employee) => employee.startDate.toLocal().toDisplayedDate()),
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
        onPressed: () {
          Future.delayed(const Duration(seconds: 3));
          context.read<AuthenticationBloc>().add(const AuthenticationEvent.logout());
          context.read<AbsentFormBloc>().add(const AbsentFormEvent.resetState());
          // context.read<CheckinCheckoutScreenBloc>().add(const CheckinCheckoutScreenEvent.resetState());
          context.read<ScheduleCubit>().resetState();
          context.read<AbsentListCubit>().resetState();
          context.read<EmployeeCubit>().resetState();
          context.read<TimekeepingCubit>().resetState();
          context.read<NotificationBloc>().add(const NotificationEvent.resetState());
          // context.read<AssignScheduleFormBloc>().add(const AssignScheduleFormEvent.resetState());
          // context.read<TimekeepingRecordScreenBloc>().add(const TimekeepingRecordScreenEvent.resetState());
          AutoRouter.of(context).replace(const LoginScreen());
        },
        child: const Text('Đăng xuất'));
  }
}
