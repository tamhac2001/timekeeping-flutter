import 'package:flutter/material.dart';
import 'package:timekeeping/presentation/core/app_widgets.dart';

class DayOffScreen extends StatelessWidget {
  const DayOffScreen({Key? key, required this.isAbsentLegit}) : super(key: key);

  final bool isAbsentLegit;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(centerTitle: true, title: const Text('Check In Check Out')),
          body: (isAbsentLegit)
              ? const Center(child: TitleText('Hôm nay là ngày nghỉ'))
              : const Center(
                  child: TitleText('Hôm nay bạn vắng do điểm danh trễ quá 2h'),
                )),
    );
  }
}
