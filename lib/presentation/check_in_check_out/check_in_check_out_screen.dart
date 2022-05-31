import 'package:flutter/material.dart';

class CheckInCheckOutScreen extends StatelessWidget {
  const CheckInCheckOutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Check in Check out'),
        automaticallyImplyLeading: false,
      ),
    );
  }
}
