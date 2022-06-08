// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'profile_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) userLoaded,
    required TResult Function(Uint8List profilePicture) profilePictureChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user)? userLoaded,
    TResult Function(Uint8List profilePicture)? profilePictureChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? userLoaded,
    TResult Function(Uint8List profilePicture)? profilePictureChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserLoaded value) userLoaded,
    required TResult Function(ProfilePictureChanged value)
        profilePictureChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserLoaded value)? userLoaded,
    TResult Function(ProfilePictureChanged value)? profilePictureChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserLoaded value)? userLoaded,
    TResult Function(ProfilePictureChanged value)? profilePictureChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileScreenEventCopyWith<$Res> {
  factory $ProfileScreenEventCopyWith(
          ProfileScreenEvent value, $Res Function(ProfileScreenEvent) then) =
      _$ProfileScreenEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProfileScreenEventCopyWithImpl<$Res>
    implements $ProfileScreenEventCopyWith<$Res> {
  _$ProfileScreenEventCopyWithImpl(this._value, this._then);

  final ProfileScreenEvent _value;
  // ignore: unused_field
  final $Res Function(ProfileScreenEvent) _then;
}

/// @nodoc
abstract class _$$UserLoadedCopyWith<$Res> {
  factory _$$UserLoadedCopyWith(
          _$UserLoaded value, $Res Function(_$UserLoaded) then) =
      __$$UserLoadedCopyWithImpl<$Res>;
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$UserLoadedCopyWithImpl<$Res>
    extends _$ProfileScreenEventCopyWithImpl<$Res>
    implements _$$UserLoadedCopyWith<$Res> {
  __$$UserLoadedCopyWithImpl(
      _$UserLoaded _value, $Res Function(_$UserLoaded) _then)
      : super(_value, (v) => _then(v as _$UserLoaded));

  @override
  _$UserLoaded get _value => super._value as _$UserLoaded;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$UserLoaded(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$UserLoaded with DiagnosticableTreeMixin implements UserLoaded {
  const _$UserLoaded(this.user);

  @override
  final User user;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileScreenEvent.userLoaded(user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProfileScreenEvent.userLoaded'))
      ..add(DiagnosticsProperty('user', user));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLoaded &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$UserLoadedCopyWith<_$UserLoaded> get copyWith =>
      __$$UserLoadedCopyWithImpl<_$UserLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) userLoaded,
    required TResult Function(Uint8List profilePicture) profilePictureChanged,
  }) {
    return userLoaded(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user)? userLoaded,
    TResult Function(Uint8List profilePicture)? profilePictureChanged,
  }) {
    return userLoaded?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? userLoaded,
    TResult Function(Uint8List profilePicture)? profilePictureChanged,
    required TResult orElse(),
  }) {
    if (userLoaded != null) {
      return userLoaded(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserLoaded value) userLoaded,
    required TResult Function(ProfilePictureChanged value)
        profilePictureChanged,
  }) {
    return userLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserLoaded value)? userLoaded,
    TResult Function(ProfilePictureChanged value)? profilePictureChanged,
  }) {
    return userLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserLoaded value)? userLoaded,
    TResult Function(ProfilePictureChanged value)? profilePictureChanged,
    required TResult orElse(),
  }) {
    if (userLoaded != null) {
      return userLoaded(this);
    }
    return orElse();
  }
}

abstract class UserLoaded implements ProfileScreenEvent {
  const factory UserLoaded(final User user) = _$UserLoaded;

  User get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$UserLoadedCopyWith<_$UserLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProfilePictureChangedCopyWith<$Res> {
  factory _$$ProfilePictureChangedCopyWith(_$ProfilePictureChanged value,
          $Res Function(_$ProfilePictureChanged) then) =
      __$$ProfilePictureChangedCopyWithImpl<$Res>;
  $Res call({Uint8List profilePicture});
}

/// @nodoc
class __$$ProfilePictureChangedCopyWithImpl<$Res>
    extends _$ProfileScreenEventCopyWithImpl<$Res>
    implements _$$ProfilePictureChangedCopyWith<$Res> {
  __$$ProfilePictureChangedCopyWithImpl(_$ProfilePictureChanged _value,
      $Res Function(_$ProfilePictureChanged) _then)
      : super(_value, (v) => _then(v as _$ProfilePictureChanged));

  @override
  _$ProfilePictureChanged get _value => super._value as _$ProfilePictureChanged;

  @override
  $Res call({
    Object? profilePicture = freezed,
  }) {
    return _then(_$ProfilePictureChanged(
      profilePicture == freezed
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class _$ProfilePictureChanged
    with DiagnosticableTreeMixin
    implements ProfilePictureChanged {
  const _$ProfilePictureChanged(this.profilePicture);

  @override
  final Uint8List profilePicture;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileScreenEvent.profilePictureChanged(profilePicture: $profilePicture)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'ProfileScreenEvent.profilePictureChanged'))
      ..add(DiagnosticsProperty('profilePicture', profilePicture));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfilePictureChanged &&
            const DeepCollectionEquality()
                .equals(other.profilePicture, profilePicture));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(profilePicture));

  @JsonKey(ignore: true)
  @override
  _$$ProfilePictureChangedCopyWith<_$ProfilePictureChanged> get copyWith =>
      __$$ProfilePictureChangedCopyWithImpl<_$ProfilePictureChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(User user) userLoaded,
    required TResult Function(Uint8List profilePicture) profilePictureChanged,
  }) {
    return profilePictureChanged(profilePicture);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(User user)? userLoaded,
    TResult Function(Uint8List profilePicture)? profilePictureChanged,
  }) {
    return profilePictureChanged?.call(profilePicture);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(User user)? userLoaded,
    TResult Function(Uint8List profilePicture)? profilePictureChanged,
    required TResult orElse(),
  }) {
    if (profilePictureChanged != null) {
      return profilePictureChanged(profilePicture);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserLoaded value) userLoaded,
    required TResult Function(ProfilePictureChanged value)
        profilePictureChanged,
  }) {
    return profilePictureChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserLoaded value)? userLoaded,
    TResult Function(ProfilePictureChanged value)? profilePictureChanged,
  }) {
    return profilePictureChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserLoaded value)? userLoaded,
    TResult Function(ProfilePictureChanged value)? profilePictureChanged,
    required TResult orElse(),
  }) {
    if (profilePictureChanged != null) {
      return profilePictureChanged(this);
    }
    return orElse();
  }
}

abstract class ProfilePictureChanged implements ProfileScreenEvent {
  const factory ProfilePictureChanged(final Uint8List profilePicture) =
      _$ProfilePictureChanged;

  Uint8List get profilePicture => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$ProfilePictureChangedCopyWith<_$ProfilePictureChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProfileScreenState {
  User? get user => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool? get profileChangedSuccessOrFail => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileScreenStateCopyWith<ProfileScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileScreenStateCopyWith<$Res> {
  factory $ProfileScreenStateCopyWith(
          ProfileScreenState value, $Res Function(ProfileScreenState) then) =
      _$ProfileScreenStateCopyWithImpl<$Res>;
  $Res call({User? user, bool isSubmitting, bool? profileChangedSuccessOrFail});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$ProfileScreenStateCopyWithImpl<$Res>
    implements $ProfileScreenStateCopyWith<$Res> {
  _$ProfileScreenStateCopyWithImpl(this._value, this._then);

  final ProfileScreenState _value;
  // ignore: unused_field
  final $Res Function(ProfileScreenState) _then;

  @override
  $Res call({
    Object? user = freezed,
    Object? isSubmitting = freezed,
    Object? profileChangedSuccessOrFail = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      profileChangedSuccessOrFail: profileChangedSuccessOrFail == freezed
          ? _value.profileChangedSuccessOrFail
          : profileChangedSuccessOrFail // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }

  @override
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$$_ProfileScreenStateCopyWith<$Res>
    implements $ProfileScreenStateCopyWith<$Res> {
  factory _$$_ProfileScreenStateCopyWith(_$_ProfileScreenState value,
          $Res Function(_$_ProfileScreenState) then) =
      __$$_ProfileScreenStateCopyWithImpl<$Res>;
  @override
  $Res call({User? user, bool isSubmitting, bool? profileChangedSuccessOrFail});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_ProfileScreenStateCopyWithImpl<$Res>
    extends _$ProfileScreenStateCopyWithImpl<$Res>
    implements _$$_ProfileScreenStateCopyWith<$Res> {
  __$$_ProfileScreenStateCopyWithImpl(
      _$_ProfileScreenState _value, $Res Function(_$_ProfileScreenState) _then)
      : super(_value, (v) => _then(v as _$_ProfileScreenState));

  @override
  _$_ProfileScreenState get _value => super._value as _$_ProfileScreenState;

  @override
  $Res call({
    Object? user = freezed,
    Object? isSubmitting = freezed,
    Object? profileChangedSuccessOrFail = freezed,
  }) {
    return _then(_$_ProfileScreenState(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      profileChangedSuccessOrFail: profileChangedSuccessOrFail == freezed
          ? _value.profileChangedSuccessOrFail
          : profileChangedSuccessOrFail // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_ProfileScreenState
    with DiagnosticableTreeMixin
    implements _ProfileScreenState {
  const _$_ProfileScreenState(
      {required this.user,
      required this.isSubmitting,
      required this.profileChangedSuccessOrFail});

  @override
  final User? user;
  @override
  final bool isSubmitting;
  @override
  final bool? profileChangedSuccessOrFail;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileScreenState(user: $user, isSubmitting: $isSubmitting, profileChangedSuccessOrFail: $profileChangedSuccessOrFail)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProfileScreenState'))
      ..add(DiagnosticsProperty('user', user))
      ..add(DiagnosticsProperty('isSubmitting', isSubmitting))
      ..add(DiagnosticsProperty(
          'profileChangedSuccessOrFail', profileChangedSuccessOrFail));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileScreenState &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality()
                .equals(other.isSubmitting, isSubmitting) &&
            const DeepCollectionEquality().equals(
                other.profileChangedSuccessOrFail,
                profileChangedSuccessOrFail));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(isSubmitting),
      const DeepCollectionEquality().hash(profileChangedSuccessOrFail));

  @JsonKey(ignore: true)
  @override
  _$$_ProfileScreenStateCopyWith<_$_ProfileScreenState> get copyWith =>
      __$$_ProfileScreenStateCopyWithImpl<_$_ProfileScreenState>(
          this, _$identity);
}

abstract class _ProfileScreenState implements ProfileScreenState {
  const factory _ProfileScreenState(
          {required final User? user,
          required final bool isSubmitting,
          required final bool? profileChangedSuccessOrFail}) =
      _$_ProfileScreenState;

  @override
  User? get user => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  bool? get profileChangedSuccessOrFail => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileScreenStateCopyWith<_$_ProfileScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
