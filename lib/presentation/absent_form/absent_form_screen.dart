import 'package:flutter/material.dart';

class AbsentFormScreen extends StatelessWidget {
  const AbsentFormScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Xin nghỉ phép'),
        ),
        // bottomNavigationBar: MyBottomAppBar(initialActiveIndex: 2),
      ),
    );
  }
}
