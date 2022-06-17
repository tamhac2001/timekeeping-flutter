// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'qr_scan_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QrScanScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String qrCodeValue) qrCodeScanned,
    required TResult Function() screenReset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String qrCodeValue)? qrCodeScanned,
    TResult Function()? screenReset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String qrCodeValue)? qrCodeScanned,
    TResult Function()? screenReset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QrCodeScanned value) qrCodeScanned,
    required TResult Function(ScreenReset value) screenReset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(QrCodeScanned value)? qrCodeScanned,
    TResult Function(ScreenReset value)? screenReset,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QrCodeScanned value)? qrCodeScanned,
    TResult Function(ScreenReset value)? screenReset,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QrScanScreenEventCopyWith<$Res> {
  factory $QrScanScreenEventCopyWith(
          QrScanScreenEvent value, $Res Function(QrScanScreenEvent) then) =
      _$QrScanScreenEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$QrScanScreenEventCopyWithImpl<$Res>
    implements $QrScanScreenEventCopyWith<$Res> {
  _$QrScanScreenEventCopyWithImpl(this._value, this._then);

  final QrScanScreenEvent _value;
  // ignore: unused_field
  final $Res Function(QrScanScreenEvent) _then;
}

/// @nodoc
abstract class _$$QrCodeScannedCopyWith<$Res> {
  factory _$$QrCodeScannedCopyWith(
          _$QrCodeScanned value, $Res Function(_$QrCodeScanned) then) =
      __$$QrCodeScannedCopyWithImpl<$Res>;
  $Res call({String qrCodeValue});
}

/// @nodoc
class __$$QrCodeScannedCopyWithImpl<$Res>
    extends _$QrScanScreenEventCopyWithImpl<$Res>
    implements _$$QrCodeScannedCopyWith<$Res> {
  __$$QrCodeScannedCopyWithImpl(
      _$QrCodeScanned _value, $Res Function(_$QrCodeScanned) _then)
      : super(_value, (v) => _then(v as _$QrCodeScanned));

  @override
  _$QrCodeScanned get _value => super._value as _$QrCodeScanned;

  @override
  $Res call({
    Object? qrCodeValue = freezed,
  }) {
    return _then(_$QrCodeScanned(
      qrCodeValue == freezed
          ? _value.qrCodeValue
          : qrCodeValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$QrCodeScanned implements QrCodeScanned {
  const _$QrCodeScanned(this.qrCodeValue);

  @override
  final String qrCodeValue;

  @override
  String toString() {
    return 'QrScanScreenEvent.qrCodeScanned(qrCodeValue: $qrCodeValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QrCodeScanned &&
            const DeepCollectionEquality()
                .equals(other.qrCodeValue, qrCodeValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(qrCodeValue));

  @JsonKey(ignore: true)
  @override
  _$$QrCodeScannedCopyWith<_$QrCodeScanned> get copyWith =>
      __$$QrCodeScannedCopyWithImpl<_$QrCodeScanned>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String qrCodeValue) qrCodeScanned,
    required TResult Function() screenReset,
  }) {
    return qrCodeScanned(qrCodeValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String qrCodeValue)? qrCodeScanned,
    TResult Function()? screenReset,
  }) {
    return qrCodeScanned?.call(qrCodeValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String qrCodeValue)? qrCodeScanned,
    TResult Function()? screenReset,
    required TResult orElse(),
  }) {
    if (qrCodeScanned != null) {
      return qrCodeScanned(qrCodeValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QrCodeScanned value) qrCodeScanned,
    required TResult Function(ScreenReset value) screenReset,
  }) {
    return qrCodeScanned(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(QrCodeScanned value)? qrCodeScanned,
    TResult Function(ScreenReset value)? screenReset,
  }) {
    return qrCodeScanned?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QrCodeScanned value)? qrCodeScanned,
    TResult Function(ScreenReset value)? screenReset,
    required TResult orElse(),
  }) {
    if (qrCodeScanned != null) {
      return qrCodeScanned(this);
    }
    return orElse();
  }
}

abstract class QrCodeScanned implements QrScanScreenEvent {
  const factory QrCodeScanned(final String qrCodeValue) = _$QrCodeScanned;

  String get qrCodeValue => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$QrCodeScannedCopyWith<_$QrCodeScanned> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ScreenResetCopyWith<$Res> {
  factory _$$ScreenResetCopyWith(
          _$ScreenReset value, $Res Function(_$ScreenReset) then) =
      __$$ScreenResetCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ScreenResetCopyWithImpl<$Res>
    extends _$QrScanScreenEventCopyWithImpl<$Res>
    implements _$$ScreenResetCopyWith<$Res> {
  __$$ScreenResetCopyWithImpl(
      _$ScreenReset _value, $Res Function(_$ScreenReset) _then)
      : super(_value, (v) => _then(v as _$ScreenReset));

  @override
  _$ScreenReset get _value => super._value as _$ScreenReset;
}

/// @nodoc

class _$ScreenReset implements ScreenReset {
  const _$ScreenReset();

  @override
  String toString() {
    return 'QrScanScreenEvent.screenReset()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ScreenReset);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String qrCodeValue) qrCodeScanned,
    required TResult Function() screenReset,
  }) {
    return screenReset();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String qrCodeValue)? qrCodeScanned,
    TResult Function()? screenReset,
  }) {
    return screenReset?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String qrCodeValue)? qrCodeScanned,
    TResult Function()? screenReset,
    required TResult orElse(),
  }) {
    if (screenReset != null) {
      return screenReset();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QrCodeScanned value) qrCodeScanned,
    required TResult Function(ScreenReset value) screenReset,
  }) {
    return screenReset(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(QrCodeScanned value)? qrCodeScanned,
    TResult Function(ScreenReset value)? screenReset,
  }) {
    return screenReset?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QrCodeScanned value)? qrCodeScanned,
    TResult Function(ScreenReset value)? screenReset,
    required TResult orElse(),
  }) {
    if (screenReset != null) {
      return screenReset(this);
    }
    return orElse();
  }
}

abstract class ScreenReset implements QrScanScreenEvent {
  const factory ScreenReset() = _$ScreenReset;
}

/// @nodoc
mixin _$QrScanScreenState {
  bool get isSubmitting => throw _privateConstructorUsedError;
  Either<TimekeepingFailure, Unit>? get failureOrUnit =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QrScanScreenStateCopyWith<QrScanScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QrScanScreenStateCopyWith<$Res> {
  factory $QrScanScreenStateCopyWith(
          QrScanScreenState value, $Res Function(QrScanScreenState) then) =
      _$QrScanScreenStateCopyWithImpl<$Res>;
  $Res call(
      {bool isSubmitting, Either<TimekeepingFailure, Unit>? failureOrUnit});
}

/// @nodoc
class _$QrScanScreenStateCopyWithImpl<$Res>
    implements $QrScanScreenStateCopyWith<$Res> {
  _$QrScanScreenStateCopyWithImpl(this._value, this._then);

  final QrScanScreenState _value;
  // ignore: unused_field
  final $Res Function(QrScanScreenState) _then;

  @override
  $Res call({
    Object? isSubmitting = freezed,
    Object? failureOrUnit = freezed,
  }) {
    return _then(_value.copyWith(
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrUnit: failureOrUnit == freezed
          ? _value.failureOrUnit
          : failureOrUnit // ignore: cast_nullable_to_non_nullable
              as Either<TimekeepingFailure, Unit>?,
    ));
  }
}

/// @nodoc
abstract class _$$_QrScanScreenStateCopyWith<$Res>
    implements $QrScanScreenStateCopyWith<$Res> {
  factory _$$_QrScanScreenStateCopyWith(_$_QrScanScreenState value,
          $Res Function(_$_QrScanScreenState) then) =
      __$$_QrScanScreenStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isSubmitting, Either<TimekeepingFailure, Unit>? failureOrUnit});
}

/// @nodoc
class __$$_QrScanScreenStateCopyWithImpl<$Res>
    extends _$QrScanScreenStateCopyWithImpl<$Res>
    implements _$$_QrScanScreenStateCopyWith<$Res> {
  __$$_QrScanScreenStateCopyWithImpl(
      _$_QrScanScreenState _value, $Res Function(_$_QrScanScreenState) _then)
      : super(_value, (v) => _then(v as _$_QrScanScreenState));

  @override
  _$_QrScanScreenState get _value => super._value as _$_QrScanScreenState;

  @override
  $Res call({
    Object? isSubmitting = freezed,
    Object? failureOrUnit = freezed,
  }) {
    return _then(_$_QrScanScreenState(
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrUnit: failureOrUnit == freezed
          ? _value.failureOrUnit
          : failureOrUnit // ignore: cast_nullable_to_non_nullable
              as Either<TimekeepingFailure, Unit>?,
    ));
  }
}

/// @nodoc

class _$_QrScanScreenState implements _QrScanScreenState {
  const _$_QrScanScreenState(
      {required this.isSubmitting, required this.failureOrUnit});

  @override
  final bool isSubmitting;
  @override
  final Either<TimekeepingFailure, Unit>? failureOrUnit;

  @override
  String toString() {
    return 'QrScanScreenState(isSubmitting: $isSubmitting, failureOrUnit: $failureOrUnit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QrScanScreenState &&
            const DeepCollectionEquality()
                .equals(other.isSubmitting, isSubmitting) &&
            const DeepCollectionEquality()
                .equals(other.failureOrUnit, failureOrUnit));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isSubmitting),
      const DeepCollectionEquality().hash(failureOrUnit));

  @JsonKey(ignore: true)
  @override
  _$$_QrScanScreenStateCopyWith<_$_QrScanScreenState> get copyWith =>
      __$$_QrScanScreenStateCopyWithImpl<_$_QrScanScreenState>(
          this, _$identity);
}

abstract class _QrScanScreenState implements QrScanScreenState {
  const factory _QrScanScreenState(
          {required final bool isSubmitting,
          required final Either<TimekeepingFailure, Unit>? failureOrUnit}) =
      _$_QrScanScreenState;

  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  Either<TimekeepingFailure, Unit>? get failureOrUnit =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_QrScanScreenStateCopyWith<_$_QrScanScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
