import 'package:auto_route/auto_route.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

class MyBottomAppBar extends StatelessWidget {
  const MyBottomAppBar({Key? key, required this.initialActiveIndex, required this.onTap}) : super(key: key);

  final int initialActiveIndex;

  final void Function(int index) onTap;

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

class TitleText extends StatelessWidget {
  const TitleText(this.data, {Key? key}) : super(key: key);

  final String data;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: Theme.of(context).textTheme.titleLarge,
    );
  }
}

class NormalText extends StatelessWidget {
  const NormalText(this.data, {Key? key}) : super(key: key);

  final String data;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: Theme.of(context).textTheme.subtitle1,
    );
  }
}

SnackBar mySnackBar(String content) {
  return SnackBar(content: Text(content));
}

Future<void> showMyDialog(
  BuildContext context, {
  required String title,
  required String text,
  bool barrierDismissible = true,
  List<Widget>? action,
}) async {
  return showDialog<void>(
      context: context,
      barrierDismissible: barrierDismissible, // user must tap button!
      builder: (BuildContext context) => AlertDialog(
            title: Text(title),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text(text),
                ],
              ),
            ),
            actions: action ??
                [
                  TextButton(
                      onPressed: () {
                        context.router.pop();
                      },
                      child: const Text('OK'))
                ],
          ));
}
