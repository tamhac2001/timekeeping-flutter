import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';


class MyBottomAppBar extends StatelessWidget {
  const MyBottomAppBar(
      {Key? key, required this.initialActiveIndex, required this.onTap})
      : super(key: key);

  final int initialActiveIndex;

  final Function(int index) onTap;

  @override
  Widget build(BuildContext context) {
    return ConvexAppBar(
      backgroundColor: Theme.of(context).colorScheme.primary,
      items: const [
        TabItem(icon: Icons.home, title: 'Home'),
        TabItem(icon: Icons.table_chart, title: 'Lịch sử'),
        TabItem(icon: Icons.history_toggle_off, title: 'Nghỉ phép'),
        TabItem(icon: Icons.person, title: 'Nhân viên'),
      ],
      initialActiveIndex: initialActiveIndex,
      onTap: onTap,
    );
  }
}
