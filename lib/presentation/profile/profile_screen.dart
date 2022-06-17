import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:timekeeping/application/profile/profile_screen_bloc.dart';

import 'widgets.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
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
                        onPressed: () async {
                          final imagePicker = ImagePicker();
                          final imageXFile = await imagePicker.pickImage(
                              source: ImageSource.gallery);
                          if (imageXFile != null) {
                            context.read<ProfileScreenBloc>().add(
                                ProfileScreenEvent.avatarChanged(
                                    await imageXFile.readAsBytes()));
                          }
                        },
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
              const EmployeeCodeRow(),
              const SizedBox(
                height: 16.0,
              ),
              const EmployeeGenderRow(),
              const SizedBox(
                height: 16.0,
              ),
              const EmployeePhoneNumberRow(),
              const SizedBox(
                height: 16.0,
              ),
              const EmployeeAddressRow(),
              const SizedBox(
                height: 16.0,
              ),
              const Expanded(child: SizedBox()),
              const SizedBox(
                height: 16.0,
              ),
              const LogoutButton(),
            ],
          ),
        ),
      ),
    );
  }
}
