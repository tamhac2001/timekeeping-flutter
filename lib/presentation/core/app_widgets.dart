import 'package:auto_route/auto_route.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timekeeping/presentation/routes/app_router.gr.dart';

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
  const TitleText(this.data, {Key? key, this.color}) : super(key: key);

  final String data;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: Theme.of(context).textTheme.titleLarge?.copyWith(color: color),
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
  bool barrierDismissible = false,
  List<Widget>? action,
  void Function()? okButtonPressed,
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
                        okButtonPressed;
                        context.router.pop();
                      },
                      child: const Text('OK'))
                ],
          ));
}

Future<void> showNoInternetAccessDialog(BuildContext context) async {
  return showMyDialog(
    context,
    title: 'Kết nối mạng',
    text: 'Không có kết nối Internet! Vui lòng kiểm tra lại',
    okButtonPressed: () {
      context.router.pop();
    },
  );
}

Future<void> showServerErrorDialog(BuildContext context, {required String title}) async {
  return showMyDialog(
    context,
    title: title,
    text: 'Lỗi server! Vui lòng thử lại sau',
    okButtonPressed: () {
      context.router.pop();
    },
  );
}

Future<void> showTokenExpireDialog(BuildContext context) async {
  return showMyDialog(
    context,
    title: 'Tài khoản',
    text: 'Phiên đăng nhập hết hạn! Vui lòng đăng nhập lại',
    barrierDismissible: false,
    okButtonPressed: () {
      context.router.pop();
      context.router.replace(const LoginScreen());
    },
  );
}

Future<void> showUpdateAvatarModalPopup(
  BuildContext context, {
  required void Function() fromCameraPressed,
  required void Function() fromGalleryPressed,
}) async {
  return showCupertinoModalPopup<void>(
    context: context,
    builder: (BuildContext context) => CupertinoActionSheet(
      title: const Text('Cập nhật ảnh đại diện'),
      message: const Text('Chọn ảnh'),
      actions: <CupertinoActionSheetAction>[
        CupertinoActionSheetAction(
          onPressed: () {
            Navigator.pop(context);
            fromCameraPressed();
          },
          child: const Text('Từ Camera'),
        ),
        CupertinoActionSheetAction(
          onPressed: () {
            Navigator.pop(context);
            fromGalleryPressed();
          },
          child: const Text('Từ thư viện ảnh'),
        ),
      ],
    ),
  );
}

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({
    Key? key,
    this.appBarTitle,
  }) : super(key: key);

  final String? appBarTitle;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: (appBarTitle == null)
          ? null
          : AppBar(
              centerTitle: true,
              automaticallyImplyLeading: false,
              title: Text(appBarTitle!),
            ),
      body: const LoadingBody(),
    ));
  }
}

class LoadingBody extends StatelessWidget {
  const LoadingBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}

class FailureScreen extends StatelessWidget {
  const FailureScreen({
    Key? key,
    this.appBarTitle,
    required this.failureText,
    required this.retryCallback,
  }) : super(key: key);

  final String? appBarTitle;
  final String failureText;
  final void Function() retryCallback;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: (appBarTitle == null)
          ? null
          : AppBar(
              centerTitle: true,
              automaticallyImplyLeading: false,
              title: Text(appBarTitle!),
            ),
      body: FailureBody(failureText: failureText, retryCallback: retryCallback),
    ));
  }
}

class FailureBody extends StatelessWidget {
  const FailureBody({Key? key, required this.failureText, required this.retryCallback}) : super(key: key);

  final String failureText;
  final void Function() retryCallback;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 32.0),
        child: SingleChildScrollView(
            child: Column(
          children: [
            Center(
              child: TitleText(failureText),
            ),
            const SizedBox(height: 32.0),
            ElevatedButton(onPressed: retryCallback, child: const Text('Thử lại')),
          ],
        )));
  }
}
