// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'connectivity_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ConnectivityEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(ConnectivityResult connectivityResult)
        networkChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(ConnectivityResult connectivityResult)? networkChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(ConnectivityResult connectivityResult)? networkChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NetworkChanged value) networkChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NetworkChanged value)? networkChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NetworkChanged value)? networkChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectivityEventCopyWith<$Res> {
  factory $ConnectivityEventCopyWith(
          ConnectivityEvent value, $Res Function(ConnectivityEvent) then) =
      _$ConnectivityEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConnectivityEventCopyWithImpl<$Res>
    implements $ConnectivityEventCopyWith<$Res> {
  _$ConnectivityEventCopyWithImpl(this._value, this._then);

  final ConnectivityEvent _value;
  // ignore: unused_field
  final $Res Function(ConnectivityEvent) _then;
}

/// @nodoc
abstract class _$$_InitializedCopyWith<$Res> {
  factory _$$_InitializedCopyWith(
          _$_Initialized value, $Res Function(_$_Initialized) then) =
      __$$_InitializedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitializedCopyWithImpl<$Res>
    extends _$ConnectivityEventCopyWithImpl<$Res>
    implements _$$_InitializedCopyWith<$Res> {
  __$$_InitializedCopyWithImpl(
      _$_Initialized _value, $Res Function(_$_Initialized) _then)
      : super(_value, (v) => _then(v as _$_Initialized));

  @override
  _$_Initialized get _value => super._value as _$_Initialized;
}

/// @nodoc

class _$_Initialized with DiagnosticableTreeMixin implements _Initialized {
  const _$_Initialized();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConnectivityEvent.initialized()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'ConnectivityEvent.initialized'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(ConnectivityResult connectivityResult)
        networkChanged,
  }) {
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(ConnectivityResult connectivityResult)? networkChanged,
  }) {
    return initialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(ConnectivityResult connectivityResult)? networkChanged,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NetworkChanged value) networkChanged,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NetworkChanged value)? networkChanged,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NetworkChanged value)? networkChanged,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements ConnectivityEvent {
  const factory _Initialized() = _$_Initialized;
}

/// @nodoc
abstract class _$$_NetworkChangedCopyWith<$Res> {
  factory _$$_NetworkChangedCopyWith(
          _$_NetworkChanged value, $Res Function(_$_NetworkChanged) then) =
      __$$_NetworkChangedCopyWithImpl<$Res>;
  $Res call({ConnectivityResult connectivityResult});
}

/// @nodoc
class __$$_NetworkChangedCopyWithImpl<$Res>
    extends _$ConnectivityEventCopyWithImpl<$Res>
    implements _$$_NetworkChangedCopyWith<$Res> {
  __$$_NetworkChangedCopyWithImpl(
      _$_NetworkChanged _value, $Res Function(_$_NetworkChanged) _then)
      : super(_value, (v) => _then(v as _$_NetworkChanged));

  @override
  _$_NetworkChanged get _value => super._value as _$_NetworkChanged;

  @override
  $Res call({
    Object? connectivityResult = freezed,
  }) {
    return _then(_$_NetworkChanged(
      connectivityResult == freezed
          ? _value.connectivityResult
          : connectivityResult // ignore: cast_nullable_to_non_nullable
              as ConnectivityResult,
    ));
  }
}

/// @nodoc

class _$_NetworkChanged
    with DiagnosticableTreeMixin
    implements _NetworkChanged {
  const _$_NetworkChanged(this.connectivityResult);

  @override
  final ConnectivityResult connectivityResult;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConnectivityEvent.networkChanged(connectivityResult: $connectivityResult)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ConnectivityEvent.networkChanged'))
      ..add(DiagnosticsProperty('connectivityResult', connectivityResult));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NetworkChanged &&
            const DeepCollectionEquality()
                .equals(other.connectivityResult, connectivityResult));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(connectivityResult));

  @JsonKey(ignore: true)
  @override
  _$$_NetworkChangedCopyWith<_$_NetworkChanged> get copyWith =>
      __$$_NetworkChangedCopyWithImpl<_$_NetworkChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(ConnectivityResult connectivityResult)
        networkChanged,
  }) {
    return networkChanged(connectivityResult);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(ConnectivityResult connectivityResult)? networkChanged,
  }) {
    return networkChanged?.call(connectivityResult);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(ConnectivityResult connectivityResult)? networkChanged,
    required TResult orElse(),
  }) {
    if (networkChanged != null) {
      return networkChanged(connectivityResult);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_NetworkChanged value) networkChanged,
  }) {
    return networkChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NetworkChanged value)? networkChanged,
  }) {
    return networkChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_NetworkChanged value)? networkChanged,
    required TResult orElse(),
  }) {
    if (networkChanged != null) {
      return networkChanged(this);
    }
    return orElse();
  }
}

abstract class _NetworkChanged implements ConnectivityEvent {
  const factory _NetworkChanged(final ConnectivityResult connectivityResult) =
      _$_NetworkChanged;

  ConnectivityResult get connectivityResult =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_NetworkChangedCopyWith<_$_NetworkChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ConnectivityState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() internetAccess,
    required TResult Function() noInternetAccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? internetAccess,
    TResult Function()? noInternetAccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? internetAccess,
    TResult Function()? noInternetAccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InternetAccess value) internetAccess,
    required TResult Function(_NoInternetAccess value) noInternetAccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InternetAccess value)? internetAccess,
    TResult Function(_NoInternetAccess value)? noInternetAccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InternetAccess value)? internetAccess,
    TResult Function(_NoInternetAccess value)? noInternetAccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectivityStateCopyWith<$Res> {
  factory $ConnectivityStateCopyWith(
          ConnectivityState value, $Res Function(ConnectivityState) then) =
      _$ConnectivityStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConnectivityStateCopyWithImpl<$Res>
    implements $ConnectivityStateCopyWith<$Res> {
  _$ConnectivityStateCopyWithImpl(this._value, this._then);

  final ConnectivityState _value;
  // ignore: unused_field
  final $Res Function(ConnectivityState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$ConnectivityStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial with DiagnosticableTreeMixin implements _Initial {
  const _$_Initial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConnectivityState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ConnectivityState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() internetAccess,
    required TResult Function() noInternetAccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? internetAccess,
    TResult Function()? noInternetAccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? internetAccess,
    TResult Function()? noInternetAccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InternetAccess value) internetAccess,
    required TResult Function(_NoInternetAccess value) noInternetAccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InternetAccess value)? internetAccess,
    TResult Function(_NoInternetAccess value)? noInternetAccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InternetAccess value)? internetAccess,
    TResult Function(_NoInternetAccess value)? noInternetAccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ConnectivityState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_InternetAccessCopyWith<$Res> {
  factory _$$_InternetAccessCopyWith(
          _$_InternetAccess value, $Res Function(_$_InternetAccess) then) =
      __$$_InternetAccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InternetAccessCopyWithImpl<$Res>
    extends _$ConnectivityStateCopyWithImpl<$Res>
    implements _$$_InternetAccessCopyWith<$Res> {
  __$$_InternetAccessCopyWithImpl(
      _$_InternetAccess _value, $Res Function(_$_InternetAccess) _then)
      : super(_value, (v) => _then(v as _$_InternetAccess));

  @override
  _$_InternetAccess get _value => super._value as _$_InternetAccess;
}

/// @nodoc

class _$_InternetAccess
    with DiagnosticableTreeMixin
    implements _InternetAccess {
  const _$_InternetAccess();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConnectivityState.internetAccess()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'ConnectivityState.internetAccess'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InternetAccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() internetAccess,
    required TResult Function() noInternetAccess,
  }) {
    return internetAccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? internetAccess,
    TResult Function()? noInternetAccess,
  }) {
    return internetAccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? internetAccess,
    TResult Function()? noInternetAccess,
    required TResult orElse(),
  }) {
    if (internetAccess != null) {
      return internetAccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InternetAccess value) internetAccess,
    required TResult Function(_NoInternetAccess value) noInternetAccess,
  }) {
    return internetAccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InternetAccess value)? internetAccess,
    TResult Function(_NoInternetAccess value)? noInternetAccess,
  }) {
    return internetAccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InternetAccess value)? internetAccess,
    TResult Function(_NoInternetAccess value)? noInternetAccess,
    required TResult orElse(),
  }) {
    if (internetAccess != null) {
      return internetAccess(this);
    }
    return orElse();
  }
}

abstract class _InternetAccess implements ConnectivityState {
  const factory _InternetAccess() = _$_InternetAccess;
}

/// @nodoc
abstract class _$$_NoInternetAccessCopyWith<$Res> {
  factory _$$_NoInternetAccessCopyWith(
          _$_NoInternetAccess value, $Res Function(_$_NoInternetAccess) then) =
      __$$_NoInternetAccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NoInternetAccessCopyWithImpl<$Res>
    extends _$ConnectivityStateCopyWithImpl<$Res>
    implements _$$_NoInternetAccessCopyWith<$Res> {
  __$$_NoInternetAccessCopyWithImpl(
      _$_NoInternetAccess _value, $Res Function(_$_NoInternetAccess) _then)
      : super(_value, (v) => _then(v as _$_NoInternetAccess));

  @override
  _$_NoInternetAccess get _value => super._value as _$_NoInternetAccess;
}

/// @nodoc

class _$_NoInternetAccess
    with DiagnosticableTreeMixin
    implements _NoInternetAccess {
  const _$_NoInternetAccess();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ConnectivityState.noInternetAccess()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'ConnectivityState.noInternetAccess'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NoInternetAccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() internetAccess,
    required TResult Function() noInternetAccess,
  }) {
    return noInternetAccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? internetAccess,
    TResult Function()? noInternetAccess,
  }) {
    return noInternetAccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? internetAccess,
    TResult Function()? noInternetAccess,
    required TResult orElse(),
  }) {
    if (noInternetAccess != null) {
      return noInternetAccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_InternetAccess value) internetAccess,
    required TResult Function(_NoInternetAccess value) noInternetAccess,
  }) {
    return noInternetAccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InternetAccess value)? internetAccess,
    TResult Function(_NoInternetAccess value)? noInternetAccess,
  }) {
    return noInternetAccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_InternetAccess value)? internetAccess,
    TResult Function(_NoInternetAccess value)? noInternetAccess,
    required TResult orElse(),
  }) {
    if (noInternetAccess != null) {
      return noInternetAccess(this);
    }
    return orElse();
  }
}

abstract class _NoInternetAccess implements ConnectivityState {
  const factory _NoInternetAccess() = _$_NoInternetAccess;
}
