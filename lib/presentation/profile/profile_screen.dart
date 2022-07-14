import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:timekeeping/presentation/core/app_widgets.dart';

import '../../application/employee/profile_screen_bloc.dart';
import 'widgets.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileScreenBloc, ProfileScreenState>(
      listener: (context, state) {
        if (state.profileChangedSuccessOrFail != null) {
          state.profileChangedSuccessOrFail!.fold(
              (failure) => failure.when(
                  timeOutError: () => showTimeOutDialog(context),
                  serverError: () => showServerErrorDialog(context, title: 'Cập nhật ảnh đại diện'),
                  unAuthenticated: () => showTokenExpireDialog(context),
                  noInternetAccess: () => showNoInternetAccessDialog(context),
                  noEmployeeFound: () => null),
              (_) => null);
        }
      },
      buildWhen: (previous, current) =>
          previous.failureOrEmployee != current.failureOrEmployee ||
          previous.isLoading != current.isLoading ||
          previous.isSubmitting != current.isSubmitting,
      builder: (context, state) {
        if (state.isLoading || state.isSubmitting) return const LoadingScreen();
        if (state.failureOrEmployee == null) {
          context.read<ProfileScreenBloc>().add(const ProfileScreenEvent.initialize());
          return const LoadingScreen();
        }
        return state.failureOrEmployee!.fold(
            (failure) => FailureScreen(
                failureText: failure.toFailureMessage(),
                retryCallback: () {
                  context.read<ProfileScreenBloc>().add(const ProfileScreenEvent.updateEmployee());
                }),
            (employee) => SafeArea(
                  child: Scaffold(
                    body: Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Center(
                              child: Stack(children: [
                                CircleAvatar(
                                  radius: 75,
                                  backgroundImage: (employee.avatar == null) ? null : MemoryImage(employee.avatar!),
                                ),
                                Positioned(
                                    right: -10,
                                    bottom: 0,
                                    child: IconButton(
                                      icon: const Icon(Icons.add_a_photo),
                                      iconSize: 32.0,
                                      onPressed: () async {
                                        final imagePicker = ImagePicker();
                                        await showUpdateAvatarModalPopup(
                                          context,
                                          fromCameraPressed: () async {
                                            await imagePicker
                                                .pickImage(
                                              source: ImageSource.camera,
                                              maxHeight: 360,
                                              maxWidth: 480,
                                            )
                                                .then((imageXFile) async {
                                              if (imageXFile != null) {
                                                context.read<ProfileScreenBloc>().add(
                                                    ProfileScreenEvent.avatarChanged(await imageXFile.readAsBytes()));
                                              }
                                            });
                                          },
                                          fromGalleryPressed: () async {
                                            await imagePicker
                                                .pickImage(source: ImageSource.gallery, maxHeight: 360, maxWidth: 480)
                                                .then((imageXFile) async {
                                              if (imageXFile != null) {
                                                context.read<ProfileScreenBloc>().add(
                                                    ProfileScreenEvent.avatarChanged(await imageXFile.readAsBytes()));
                                              }
                                            });
                                          },
                                        );
                                      },
                                    )),
                              ]),
                            ),
                            const SizedBox(
                              height: 16.0,
                            ),
                            Center(
                              child: Text(
                                employee.name,
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
                            const SizedBox(height: 16.0),
                            const EmployeePhoneNumberRow(),
                            const SizedBox(
                              height: 16.0,
                            ),
                            const EmployeeAddressRow(),
                            const SizedBox(height: 16.0),
                            const EmployeeStartDateRow(),
                            const SizedBox(height: 64.0),
                            const LogoutButton(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ));
      },
    );
  }
}
