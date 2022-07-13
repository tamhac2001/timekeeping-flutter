import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timekeeping/presentation/core/app_widgets.dart';

import '../../application/timekeeping_record/timekeeping_record_screen_bloc.dart';
import 'widgets/widgets.dart';

class TimekeepingRecordScreen extends StatelessWidget {
  const TimekeepingRecordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TimekeepingRecordScreenBloc, TimekeepingRecordScreenState>(
      listenWhen: (previous, current) =>
          previous.failureOrTimekeepingListByMonth != current.failureOrTimekeepingListByMonth,
      listener: (context, state) {
        if (state.failureOrTimekeepingListByMonth != null) {
          state.failureOrTimekeepingListByMonth!.fold(
              (failure) => failure.when(
                    noInternetAccess: () => showNoInternetAccessDialog(context),
                    serverError: () => showServerErrorDialog(context, title: 'Lịch sử điểm danh'),
                    unAuthenticated: () => showTokenExpireDialog(context),
                    qrCodeNotMatch: () {},
                    timekeepingNotFound: () {},
                  ),
              (_) => null);
        }
      },
      buildWhen: (previous, current) =>
          (previous.failureOrTimekeepingListByMonth != current.failureOrTimekeepingListByMonth) ||
          (previous.isLoading != current.isLoading),
      builder: (context, state) {
        if (state.isLoading) return const LoadingScreen(appBarTitle: 'Lịch sử điểm danh');
        if (state.failureOrTimekeepingListByMonth == null) {
          context.read<TimekeepingRecordScreenBloc>().add(const TimekeepingRecordScreenEvent.getTimekeepingRecords());
          return const LoadingScreen(appBarTitle: 'Lịch sử điểm danh');
        }
        return state.failureOrTimekeepingListByMonth!.fold(
            (failure) => FailureScreen(
                appBarTitle: 'Lịch sử điểm danh',
                failureText: failure.toFailureMessage(),
                retryCallback: () {
                  context
                      .read<TimekeepingRecordScreenBloc>()
                      .add(const TimekeepingRecordScreenEvent.getTimekeepingRecords());
                }),
            (_) => Scaffold(
                appBar:
                    AppBar(centerTitle: true, title: const Text('Lịch sử điểm danh'), automaticallyImplyLeading: false),
                body: Column(
                  children: const [
                    MonthNavigator(),
                    TimekeepingRecordsList(),
                  ],
                )));
      },
    );
  }
}
