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
    required TResult Function() employeeRequest,
    required TResult Function(Uint8List profilePicture) avatarChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? employeeRequest,
    TResult Function(Uint8List profilePicture)? avatarChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? employeeRequest,
    TResult Function(Uint8List profilePicture)? avatarChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmployeeRequest value) employeeRequest,
    required TResult Function(AvatarChanged value) avatarChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmployeeRequest value)? employeeRequest,
    TResult Function(AvatarChanged value)? avatarChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmployeeRequest value)? employeeRequest,
    TResult Function(AvatarChanged value)? avatarChanged,
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
abstract class _$$EmployeeRequestCopyWith<$Res> {
  factory _$$EmployeeRequestCopyWith(
          _$EmployeeRequest value, $Res Function(_$EmployeeRequest) then) =
      __$$EmployeeRequestCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmployeeRequestCopyWithImpl<$Res>
    extends _$ProfileScreenEventCopyWithImpl<$Res>
    implements _$$EmployeeRequestCopyWith<$Res> {
  __$$EmployeeRequestCopyWithImpl(
      _$EmployeeRequest _value, $Res Function(_$EmployeeRequest) _then)
      : super(_value, (v) => _then(v as _$EmployeeRequest));

  @override
  _$EmployeeRequest get _value => super._value as _$EmployeeRequest;
}

/// @nodoc

class _$EmployeeRequest
    with DiagnosticableTreeMixin
    implements EmployeeRequest {
  const _$EmployeeRequest();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileScreenEvent.employeeRequest()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'ProfileScreenEvent.employeeRequest'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmployeeRequest);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() employeeRequest,
    required TResult Function(Uint8List profilePicture) avatarChanged,
  }) {
    return employeeRequest();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? employeeRequest,
    TResult Function(Uint8List profilePicture)? avatarChanged,
  }) {
    return employeeRequest?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? employeeRequest,
    TResult Function(Uint8List profilePicture)? avatarChanged,
    required TResult orElse(),
  }) {
    if (employeeRequest != null) {
      return employeeRequest();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmployeeRequest value) employeeRequest,
    required TResult Function(AvatarChanged value) avatarChanged,
  }) {
    return employeeRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmployeeRequest value)? employeeRequest,
    TResult Function(AvatarChanged value)? avatarChanged,
  }) {
    return employeeRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmployeeRequest value)? employeeRequest,
    TResult Function(AvatarChanged value)? avatarChanged,
    required TResult orElse(),
  }) {
    if (employeeRequest != null) {
      return employeeRequest(this);
    }
    return orElse();
  }
}

abstract class EmployeeRequest implements ProfileScreenEvent {
  const factory EmployeeRequest() = _$EmployeeRequest;
}

/// @nodoc
abstract class _$$AvatarChangedCopyWith<$Res> {
  factory _$$AvatarChangedCopyWith(
          _$AvatarChanged value, $Res Function(_$AvatarChanged) then) =
      __$$AvatarChangedCopyWithImpl<$Res>;
  $Res call({Uint8List profilePicture});
}

/// @nodoc
class __$$AvatarChangedCopyWithImpl<$Res>
    extends _$ProfileScreenEventCopyWithImpl<$Res>
    implements _$$AvatarChangedCopyWith<$Res> {
  __$$AvatarChangedCopyWithImpl(
      _$AvatarChanged _value, $Res Function(_$AvatarChanged) _then)
      : super(_value, (v) => _then(v as _$AvatarChanged));

  @override
  _$AvatarChanged get _value => super._value as _$AvatarChanged;

  @override
  $Res call({
    Object? profilePicture = freezed,
  }) {
    return _then(_$AvatarChanged(
      profilePicture == freezed
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class _$AvatarChanged with DiagnosticableTreeMixin implements AvatarChanged {
  const _$AvatarChanged(this.profilePicture);

  @override
  final Uint8List profilePicture;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileScreenEvent.avatarChanged(profilePicture: $profilePicture)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProfileScreenEvent.avatarChanged'))
      ..add(DiagnosticsProperty('profilePicture', profilePicture));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvatarChanged &&
            const DeepCollectionEquality()
                .equals(other.profilePicture, profilePicture));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(profilePicture));

  @JsonKey(ignore: true)
  @override
  _$$AvatarChangedCopyWith<_$AvatarChanged> get copyWith =>
      __$$AvatarChangedCopyWithImpl<_$AvatarChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() employeeRequest,
    required TResult Function(Uint8List profilePicture) avatarChanged,
  }) {
    return avatarChanged(profilePicture);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? employeeRequest,
    TResult Function(Uint8List profilePicture)? avatarChanged,
  }) {
    return avatarChanged?.call(profilePicture);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? employeeRequest,
    TResult Function(Uint8List profilePicture)? avatarChanged,
    required TResult orElse(),
  }) {
    if (avatarChanged != null) {
      return avatarChanged(profilePicture);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmployeeRequest value) employeeRequest,
    required TResult Function(AvatarChanged value) avatarChanged,
  }) {
    return avatarChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmployeeRequest value)? employeeRequest,
    TResult Function(AvatarChanged value)? avatarChanged,
  }) {
    return avatarChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmployeeRequest value)? employeeRequest,
    TResult Function(AvatarChanged value)? avatarChanged,
    required TResult orElse(),
  }) {
    if (avatarChanged != null) {
      return avatarChanged(this);
    }
    return orElse();
  }
}

abstract class AvatarChanged implements ProfileScreenEvent {
  const factory AvatarChanged(final Uint8List profilePicture) = _$AvatarChanged;

  Uint8List get profilePicture => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$AvatarChangedCopyWith<_$AvatarChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProfileScreenState {
  Either<EmployeeFailure, Employee>? get failureOrEmployee =>
      throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Either<ProfileChangedFailure, Unit>? get profileChangedSuccessOrFail =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileScreenStateCopyWith<ProfileScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileScreenStateCopyWith<$Res> {
  factory $ProfileScreenStateCopyWith(
          ProfileScreenState value, $Res Function(ProfileScreenState) then) =
      _$ProfileScreenStateCopyWithImpl<$Res>;
  $Res call(
      {Either<EmployeeFailure, Employee>? failureOrEmployee,
      bool isSubmitting,
      bool isLoading,
      Either<ProfileChangedFailure, Unit>? profileChangedSuccessOrFail});
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
    Object? failureOrEmployee = freezed,
    Object? isSubmitting = freezed,
    Object? isLoading = freezed,
    Object? profileChangedSuccessOrFail = freezed,
  }) {
    return _then(_value.copyWith(
      failureOrEmployee: failureOrEmployee == freezed
          ? _value.failureOrEmployee
          : failureOrEmployee // ignore: cast_nullable_to_non_nullable
              as Either<EmployeeFailure, Employee>?,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      profileChangedSuccessOrFail: profileChangedSuccessOrFail == freezed
          ? _value.profileChangedSuccessOrFail
          : profileChangedSuccessOrFail // ignore: cast_nullable_to_non_nullable
              as Either<ProfileChangedFailure, Unit>?,
    ));
  }
}

/// @nodoc
abstract class _$$_ProfileScreenStateCopyWith<$Res>
    implements $ProfileScreenStateCopyWith<$Res> {
  factory _$$_ProfileScreenStateCopyWith(_$_ProfileScreenState value,
          $Res Function(_$_ProfileScreenState) then) =
      __$$_ProfileScreenStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Either<EmployeeFailure, Employee>? failureOrEmployee,
      bool isSubmitting,
      bool isLoading,
      Either<ProfileChangedFailure, Unit>? profileChangedSuccessOrFail});
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
    Object? failureOrEmployee = freezed,
    Object? isSubmitting = freezed,
    Object? isLoading = freezed,
    Object? profileChangedSuccessOrFail = freezed,
  }) {
    return _then(_$_ProfileScreenState(
      failureOrEmployee: failureOrEmployee == freezed
          ? _value.failureOrEmployee
          : failureOrEmployee // ignore: cast_nullable_to_non_nullable
              as Either<EmployeeFailure, Employee>?,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      profileChangedSuccessOrFail: profileChangedSuccessOrFail == freezed
          ? _value.profileChangedSuccessOrFail
          : profileChangedSuccessOrFail // ignore: cast_nullable_to_non_nullable
              as Either<ProfileChangedFailure, Unit>?,
    ));
  }
}

/// @nodoc

class _$_ProfileScreenState
    with DiagnosticableTreeMixin
    implements _ProfileScreenState {
  const _$_ProfileScreenState(
      {required this.failureOrEmployee,
      required this.isSubmitting,
      required this.isLoading,
      required this.profileChangedSuccessOrFail});

  @override
  final Either<EmployeeFailure, Employee>? failureOrEmployee;
  @override
  final bool isSubmitting;
  @override
  final bool isLoading;
  @override
  final Either<ProfileChangedFailure, Unit>? profileChangedSuccessOrFail;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProfileScreenState(failureOrEmployee: $failureOrEmployee, isSubmitting: $isSubmitting, isLoading: $isLoading, profileChangedSuccessOrFail: $profileChangedSuccessOrFail)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProfileScreenState'))
      ..add(DiagnosticsProperty('failureOrEmployee', failureOrEmployee))
      ..add(DiagnosticsProperty('isSubmitting', isSubmitting))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty(
          'profileChangedSuccessOrFail', profileChangedSuccessOrFail));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileScreenState &&
            const DeepCollectionEquality()
                .equals(other.failureOrEmployee, failureOrEmployee) &&
            const DeepCollectionEquality()
                .equals(other.isSubmitting, isSubmitting) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(
                other.profileChangedSuccessOrFail,
                profileChangedSuccessOrFail));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(failureOrEmployee),
      const DeepCollectionEquality().hash(isSubmitting),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(profileChangedSuccessOrFail));

  @JsonKey(ignore: true)
  @override
  _$$_ProfileScreenStateCopyWith<_$_ProfileScreenState> get copyWith =>
      __$$_ProfileScreenStateCopyWithImpl<_$_ProfileScreenState>(
          this, _$identity);
}

abstract class _ProfileScreenState implements ProfileScreenState {
  const factory _ProfileScreenState(
      {required final Either<EmployeeFailure, Employee>? failureOrEmployee,
      required final bool isSubmitting,
      required final bool isLoading,
      required final Either<ProfileChangedFailure, Unit>?
          profileChangedSuccessOrFail}) = _$_ProfileScreenState;

  @override
  Either<EmployeeFailure, Employee>? get failureOrEmployee =>
      throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  Either<ProfileChangedFailure, Unit>? get profileChangedSuccessOrFail =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileScreenStateCopyWith<_$_ProfileScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
