import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   automaticallyImplyLeading: false,
        //   title: const Text('Nhân viên'),
        // ),
        // bottomNavigationBar: const MyBottomAppBar(
        //   initialActiveIndex: 3,
        // ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              children: [
                Center(
                  child: Stack(children: [
                    const CircleAvatar(
                      radius: 75,

                      // backgroundImage: ,
                    ),
                    Positioned(
                        right: -10,
                        bottom: 0,
                        child: IconButton(
                          icon: const Icon(Icons.add_a_photo),
                          onPressed: () {},
                        )),
                  ]),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                Center(
                  child: Text(
                    'Nguyen Van A',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ),
                const SizedBox(
                  height: 32.0,
                ),
                Row(
                  children: [
                    Expanded(
                        child: Column(
                      children: const [
                        Text('Ngay sinh'),
                      ],
                    )),
                    Expanded(
                        child: Column(
                      children: const [
                        Text('01/01/1990'),
                      ],
                    )),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
