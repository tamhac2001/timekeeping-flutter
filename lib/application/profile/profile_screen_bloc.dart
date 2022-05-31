import 'dart:async';
import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/user/user.dart';
import '../../infrastructure/user/user_repository.dart';

part 'profile_screen_event.dart';

part 'profile_screen_state.dart';

part 'profile_screen_bloc.freezed.dart';

class ProfileScreenBloc extends Bloc<ProfileScreenEvent, ProfileScreenState> {
  final UserRepository userRepository;

  ProfileScreenBloc({required this.userRepository})
      : super(ProfileScreenState.initial()) {
    on<ProfileScreenEvent>((event, emit) async {
      await event.map(
          userLoaded: (event) {
            emit(state.copyWith(user: event.user));
          },
          profilePictureChanged: (event) async {
            emit(state.copyWith(isSubmitting: true));
            final profilePicture = event.profilePicture;
            await userRepository.updateProfilePicture(profilePicture);
            emit(state.copyWith(isSubmitting: false));
          },
          profilePictureChangedCancelled: (event) {});
    });
  }
}
