// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'checkin_checkout_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CheckinCheckoutScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clockTick,
    required TResult Function() updateNextCheckTime,
    required TResult Function() getSchedule,
    required TResult Function(bool isScanning) qrScanned,
    required TResult Function() getTimekeeping,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? clockTick,
    TResult Function()? updateNextCheckTime,
    TResult Function()? getSchedule,
    TResult Function(bool isScanning)? qrScanned,
    TResult Function()? getTimekeeping,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clockTick,
    TResult Function()? updateNextCheckTime,
    TResult Function()? getSchedule,
    TResult Function(bool isScanning)? qrScanned,
    TResult Function()? getTimekeeping,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClockTick value) clockTick,
    required TResult Function(UpdateNextCheckTime value) updateNextCheckTime,
    required TResult Function(GetSchedule value) getSchedule,
    required TResult Function(QrScanned value) qrScanned,
    required TResult Function(GetTimekeeping value) getTimekeeping,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ClockTick value)? clockTick,
    TResult Function(UpdateNextCheckTime value)? updateNextCheckTime,
    TResult Function(GetSchedule value)? getSchedule,
    TResult Function(QrScanned value)? qrScanned,
    TResult Function(GetTimekeeping value)? getTimekeeping,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClockTick value)? clockTick,
    TResult Function(UpdateNextCheckTime value)? updateNextCheckTime,
    TResult Function(GetSchedule value)? getSchedule,
    TResult Function(QrScanned value)? qrScanned,
    TResult Function(GetTimekeeping value)? getTimekeeping,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckinCheckoutScreenEventCopyWith<$Res> {
  factory $CheckinCheckoutScreenEventCopyWith(CheckinCheckoutScreenEvent value,
          $Res Function(CheckinCheckoutScreenEvent) then) =
      _$CheckinCheckoutScreenEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CheckinCheckoutScreenEventCopyWithImpl<$Res>
    implements $CheckinCheckoutScreenEventCopyWith<$Res> {
  _$CheckinCheckoutScreenEventCopyWithImpl(this._value, this._then);

  final CheckinCheckoutScreenEvent _value;
  // ignore: unused_field
  final $Res Function(CheckinCheckoutScreenEvent) _then;
}

/// @nodoc
abstract class _$$ClockTickCopyWith<$Res> {
  factory _$$ClockTickCopyWith(
          _$ClockTick value, $Res Function(_$ClockTick) then) =
      __$$ClockTickCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClockTickCopyWithImpl<$Res>
    extends _$CheckinCheckoutScreenEventCopyWithImpl<$Res>
    implements _$$ClockTickCopyWith<$Res> {
  __$$ClockTickCopyWithImpl(
      _$ClockTick _value, $Res Function(_$ClockTick) _then)
      : super(_value, (v) => _then(v as _$ClockTick));

  @override
  _$ClockTick get _value => super._value as _$ClockTick;
}

/// @nodoc

class _$ClockTick with DiagnosticableTreeMixin implements ClockTick {
  const _$ClockTick();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CheckinCheckoutScreenEvent.clockTick()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'CheckinCheckoutScreenEvent.clockTick'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClockTick);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clockTick,
    required TResult Function() updateNextCheckTime,
    required TResult Function() getSchedule,
    required TResult Function(bool isScanning) qrScanned,
    required TResult Function() getTimekeeping,
  }) {
    return clockTick();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? clockTick,
    TResult Function()? updateNextCheckTime,
    TResult Function()? getSchedule,
    TResult Function(bool isScanning)? qrScanned,
    TResult Function()? getTimekeeping,
  }) {
    return clockTick?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clockTick,
    TResult Function()? updateNextCheckTime,
    TResult Function()? getSchedule,
    TResult Function(bool isScanning)? qrScanned,
    TResult Function()? getTimekeeping,
    required TResult orElse(),
  }) {
    if (clockTick != null) {
      return clockTick();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClockTick value) clockTick,
    required TResult Function(UpdateNextCheckTime value) updateNextCheckTime,
    required TResult Function(GetSchedule value) getSchedule,
    required TResult Function(QrScanned value) qrScanned,
    required TResult Function(GetTimekeeping value) getTimekeeping,
  }) {
    return clockTick(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ClockTick value)? clockTick,
    TResult Function(UpdateNextCheckTime value)? updateNextCheckTime,
    TResult Function(GetSchedule value)? getSchedule,
    TResult Function(QrScanned value)? qrScanned,
    TResult Function(GetTimekeeping value)? getTimekeeping,
  }) {
    return clockTick?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClockTick value)? clockTick,
    TResult Function(UpdateNextCheckTime value)? updateNextCheckTime,
    TResult Function(GetSchedule value)? getSchedule,
    TResult Function(QrScanned value)? qrScanned,
    TResult Function(GetTimekeeping value)? getTimekeeping,
    required TResult orElse(),
  }) {
    if (clockTick != null) {
      return clockTick(this);
    }
    return orElse();
  }
}

abstract class ClockTick implements CheckinCheckoutScreenEvent {
  const factory ClockTick() = _$ClockTick;
}

/// @nodoc
abstract class _$$UpdateNextCheckTimeCopyWith<$Res> {
  factory _$$UpdateNextCheckTimeCopyWith(_$UpdateNextCheckTime value,
          $Res Function(_$UpdateNextCheckTime) then) =
      __$$UpdateNextCheckTimeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateNextCheckTimeCopyWithImpl<$Res>
    extends _$CheckinCheckoutScreenEventCopyWithImpl<$Res>
    implements _$$UpdateNextCheckTimeCopyWith<$Res> {
  __$$UpdateNextCheckTimeCopyWithImpl(
      _$UpdateNextCheckTime _value, $Res Function(_$UpdateNextCheckTime) _then)
      : super(_value, (v) => _then(v as _$UpdateNextCheckTime));

  @override
  _$UpdateNextCheckTime get _value => super._value as _$UpdateNextCheckTime;
}

/// @nodoc

class _$UpdateNextCheckTime
    with DiagnosticableTreeMixin
    implements UpdateNextCheckTime {
  const _$UpdateNextCheckTime();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CheckinCheckoutScreenEvent.updateNextCheckTime()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'CheckinCheckoutScreenEvent.updateNextCheckTime'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdateNextCheckTime);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clockTick,
    required TResult Function() updateNextCheckTime,
    required TResult Function() getSchedule,
    required TResult Function(bool isScanning) qrScanned,
    required TResult Function() getTimekeeping,
  }) {
    return updateNextCheckTime();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? clockTick,
    TResult Function()? updateNextCheckTime,
    TResult Function()? getSchedule,
    TResult Function(bool isScanning)? qrScanned,
    TResult Function()? getTimekeeping,
  }) {
    return updateNextCheckTime?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clockTick,
    TResult Function()? updateNextCheckTime,
    TResult Function()? getSchedule,
    TResult Function(bool isScanning)? qrScanned,
    TResult Function()? getTimekeeping,
    required TResult orElse(),
  }) {
    if (updateNextCheckTime != null) {
      return updateNextCheckTime();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClockTick value) clockTick,
    required TResult Function(UpdateNextCheckTime value) updateNextCheckTime,
    required TResult Function(GetSchedule value) getSchedule,
    required TResult Function(QrScanned value) qrScanned,
    required TResult Function(GetTimekeeping value) getTimekeeping,
  }) {
    return updateNextCheckTime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ClockTick value)? clockTick,
    TResult Function(UpdateNextCheckTime value)? updateNextCheckTime,
    TResult Function(GetSchedule value)? getSchedule,
    TResult Function(QrScanned value)? qrScanned,
    TResult Function(GetTimekeeping value)? getTimekeeping,
  }) {
    return updateNextCheckTime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClockTick value)? clockTick,
    TResult Function(UpdateNextCheckTime value)? updateNextCheckTime,
    TResult Function(GetSchedule value)? getSchedule,
    TResult Function(QrScanned value)? qrScanned,
    TResult Function(GetTimekeeping value)? getTimekeeping,
    required TResult orElse(),
  }) {
    if (updateNextCheckTime != null) {
      return updateNextCheckTime(this);
    }
    return orElse();
  }
}

abstract class UpdateNextCheckTime implements CheckinCheckoutScreenEvent {
  const factory UpdateNextCheckTime() = _$UpdateNextCheckTime;
}

/// @nodoc
abstract class _$$GetScheduleCopyWith<$Res> {
  factory _$$GetScheduleCopyWith(
          _$GetSchedule value, $Res Function(_$GetSchedule) then) =
      __$$GetScheduleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetScheduleCopyWithImpl<$Res>
    extends _$CheckinCheckoutScreenEventCopyWithImpl<$Res>
    implements _$$GetScheduleCopyWith<$Res> {
  __$$GetScheduleCopyWithImpl(
      _$GetSchedule _value, $Res Function(_$GetSchedule) _then)
      : super(_value, (v) => _then(v as _$GetSchedule));

  @override
  _$GetSchedule get _value => super._value as _$GetSchedule;
}

/// @nodoc

class _$GetSchedule with DiagnosticableTreeMixin implements GetSchedule {
  const _$GetSchedule();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CheckinCheckoutScreenEvent.getSchedule()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        DiagnosticsProperty('type', 'CheckinCheckoutScreenEvent.getSchedule'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetSchedule);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clockTick,
    required TResult Function() updateNextCheckTime,
    required TResult Function() getSchedule,
    required TResult Function(bool isScanning) qrScanned,
    required TResult Function() getTimekeeping,
  }) {
    return getSchedule();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? clockTick,
    TResult Function()? updateNextCheckTime,
    TResult Function()? getSchedule,
    TResult Function(bool isScanning)? qrScanned,
    TResult Function()? getTimekeeping,
  }) {
    return getSchedule?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clockTick,
    TResult Function()? updateNextCheckTime,
    TResult Function()? getSchedule,
    TResult Function(bool isScanning)? qrScanned,
    TResult Function()? getTimekeeping,
    required TResult orElse(),
  }) {
    if (getSchedule != null) {
      return getSchedule();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClockTick value) clockTick,
    required TResult Function(UpdateNextCheckTime value) updateNextCheckTime,
    required TResult Function(GetSchedule value) getSchedule,
    required TResult Function(QrScanned value) qrScanned,
    required TResult Function(GetTimekeeping value) getTimekeeping,
  }) {
    return getSchedule(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ClockTick value)? clockTick,
    TResult Function(UpdateNextCheckTime value)? updateNextCheckTime,
    TResult Function(GetSchedule value)? getSchedule,
    TResult Function(QrScanned value)? qrScanned,
    TResult Function(GetTimekeeping value)? getTimekeeping,
  }) {
    return getSchedule?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClockTick value)? clockTick,
    TResult Function(UpdateNextCheckTime value)? updateNextCheckTime,
    TResult Function(GetSchedule value)? getSchedule,
    TResult Function(QrScanned value)? qrScanned,
    TResult Function(GetTimekeeping value)? getTimekeeping,
    required TResult orElse(),
  }) {
    if (getSchedule != null) {
      return getSchedule(this);
    }
    return orElse();
  }
}

abstract class GetSchedule implements CheckinCheckoutScreenEvent {
  const factory GetSchedule() = _$GetSchedule;
}

/// @nodoc
abstract class _$$QrScannedCopyWith<$Res> {
  factory _$$QrScannedCopyWith(
          _$QrScanned value, $Res Function(_$QrScanned) then) =
      __$$QrScannedCopyWithImpl<$Res>;
  $Res call({bool isScanning});
}

/// @nodoc
class __$$QrScannedCopyWithImpl<$Res>
    extends _$CheckinCheckoutScreenEventCopyWithImpl<$Res>
    implements _$$QrScannedCopyWith<$Res> {
  __$$QrScannedCopyWithImpl(
      _$QrScanned _value, $Res Function(_$QrScanned) _then)
      : super(_value, (v) => _then(v as _$QrScanned));

  @override
  _$QrScanned get _value => super._value as _$QrScanned;

  @override
  $Res call({
    Object? isScanning = freezed,
  }) {
    return _then(_$QrScanned(
      isScanning == freezed
          ? _value.isScanning
          : isScanning // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$QrScanned with DiagnosticableTreeMixin implements QrScanned {
  const _$QrScanned(this.isScanning);

  @override
  final bool isScanning;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CheckinCheckoutScreenEvent.qrScanned(isScanning: $isScanning)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CheckinCheckoutScreenEvent.qrScanned'))
      ..add(DiagnosticsProperty('isScanning', isScanning));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QrScanned &&
            const DeepCollectionEquality()
                .equals(other.isScanning, isScanning));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(isScanning));

  @JsonKey(ignore: true)
  @override
  _$$QrScannedCopyWith<_$QrScanned> get copyWith =>
      __$$QrScannedCopyWithImpl<_$QrScanned>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clockTick,
    required TResult Function() updateNextCheckTime,
    required TResult Function() getSchedule,
    required TResult Function(bool isScanning) qrScanned,
    required TResult Function() getTimekeeping,
  }) {
    return qrScanned(isScanning);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? clockTick,
    TResult Function()? updateNextCheckTime,
    TResult Function()? getSchedule,
    TResult Function(bool isScanning)? qrScanned,
    TResult Function()? getTimekeeping,
  }) {
    return qrScanned?.call(isScanning);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clockTick,
    TResult Function()? updateNextCheckTime,
    TResult Function()? getSchedule,
    TResult Function(bool isScanning)? qrScanned,
    TResult Function()? getTimekeeping,
    required TResult orElse(),
  }) {
    if (qrScanned != null) {
      return qrScanned(isScanning);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClockTick value) clockTick,
    required TResult Function(UpdateNextCheckTime value) updateNextCheckTime,
    required TResult Function(GetSchedule value) getSchedule,
    required TResult Function(QrScanned value) qrScanned,
    required TResult Function(GetTimekeeping value) getTimekeeping,
  }) {
    return qrScanned(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ClockTick value)? clockTick,
    TResult Function(UpdateNextCheckTime value)? updateNextCheckTime,
    TResult Function(GetSchedule value)? getSchedule,
    TResult Function(QrScanned value)? qrScanned,
    TResult Function(GetTimekeeping value)? getTimekeeping,
  }) {
    return qrScanned?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClockTick value)? clockTick,
    TResult Function(UpdateNextCheckTime value)? updateNextCheckTime,
    TResult Function(GetSchedule value)? getSchedule,
    TResult Function(QrScanned value)? qrScanned,
    TResult Function(GetTimekeeping value)? getTimekeeping,
    required TResult orElse(),
  }) {
    if (qrScanned != null) {
      return qrScanned(this);
    }
    return orElse();
  }
}

abstract class QrScanned implements CheckinCheckoutScreenEvent {
  const factory QrScanned(final bool isScanning) = _$QrScanned;

  bool get isScanning => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$QrScannedCopyWith<_$QrScanned> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetTimekeepingCopyWith<$Res> {
  factory _$$GetTimekeepingCopyWith(
          _$GetTimekeeping value, $Res Function(_$GetTimekeeping) then) =
      __$$GetTimekeepingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetTimekeepingCopyWithImpl<$Res>
    extends _$CheckinCheckoutScreenEventCopyWithImpl<$Res>
    implements _$$GetTimekeepingCopyWith<$Res> {
  __$$GetTimekeepingCopyWithImpl(
      _$GetTimekeeping _value, $Res Function(_$GetTimekeeping) _then)
      : super(_value, (v) => _then(v as _$GetTimekeeping));

  @override
  _$GetTimekeeping get _value => super._value as _$GetTimekeeping;
}

/// @nodoc

class _$GetTimekeeping with DiagnosticableTreeMixin implements GetTimekeeping {
  const _$GetTimekeeping();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CheckinCheckoutScreenEvent.getTimekeeping()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'CheckinCheckoutScreenEvent.getTimekeeping'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetTimekeeping);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() clockTick,
    required TResult Function() updateNextCheckTime,
    required TResult Function() getSchedule,
    required TResult Function(bool isScanning) qrScanned,
    required TResult Function() getTimekeeping,
  }) {
    return getTimekeeping();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? clockTick,
    TResult Function()? updateNextCheckTime,
    TResult Function()? getSchedule,
    TResult Function(bool isScanning)? qrScanned,
    TResult Function()? getTimekeeping,
  }) {
    return getTimekeeping?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clockTick,
    TResult Function()? updateNextCheckTime,
    TResult Function()? getSchedule,
    TResult Function(bool isScanning)? qrScanned,
    TResult Function()? getTimekeeping,
    required TResult orElse(),
  }) {
    if (getTimekeeping != null) {
      return getTimekeeping();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClockTick value) clockTick,
    required TResult Function(UpdateNextCheckTime value) updateNextCheckTime,
    required TResult Function(GetSchedule value) getSchedule,
    required TResult Function(QrScanned value) qrScanned,
    required TResult Function(GetTimekeeping value) getTimekeeping,
  }) {
    return getTimekeeping(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ClockTick value)? clockTick,
    TResult Function(UpdateNextCheckTime value)? updateNextCheckTime,
    TResult Function(GetSchedule value)? getSchedule,
    TResult Function(QrScanned value)? qrScanned,
    TResult Function(GetTimekeeping value)? getTimekeeping,
  }) {
    return getTimekeeping?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClockTick value)? clockTick,
    TResult Function(UpdateNextCheckTime value)? updateNextCheckTime,
    TResult Function(GetSchedule value)? getSchedule,
    TResult Function(QrScanned value)? qrScanned,
    TResult Function(GetTimekeeping value)? getTimekeeping,
    required TResult orElse(),
  }) {
    if (getTimekeeping != null) {
      return getTimekeeping(this);
    }
    return orElse();
  }
}

abstract class GetTimekeeping implements CheckinCheckoutScreenEvent {
  const factory GetTimekeeping() = _$GetTimekeeping;
}

/// @nodoc
mixin _$CheckinCheckoutScreenState {
  DateTime get currentTime => throw _privateConstructorUsedError;
  TimeOfDay get nextCheckTime => throw _privateConstructorUsedError;
  Schedule get schedule => throw _privateConstructorUsedError;
  Either<TimekeepingFailure, Timekeeping>? get failureOrTimekeeping =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get isChecking => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CheckinCheckoutScreenStateCopyWith<CheckinCheckoutScreenState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckinCheckoutScreenStateCopyWith<$Res> {
  factory $CheckinCheckoutScreenStateCopyWith(CheckinCheckoutScreenState value,
          $Res Function(CheckinCheckoutScreenState) then) =
      _$CheckinCheckoutScreenStateCopyWithImpl<$Res>;
  $Res call(
      {DateTime currentTime,
      TimeOfDay nextCheckTime,
      Schedule schedule,
      Either<TimekeepingFailure, Timekeeping>? failureOrTimekeeping,
      bool isLoading,
      bool isChecking});

  $ScheduleCopyWith<$Res> get schedule;
}

/// @nodoc
class _$CheckinCheckoutScreenStateCopyWithImpl<$Res>
    implements $CheckinCheckoutScreenStateCopyWith<$Res> {
  _$CheckinCheckoutScreenStateCopyWithImpl(this._value, this._then);

  final CheckinCheckoutScreenState _value;
  // ignore: unused_field
  final $Res Function(CheckinCheckoutScreenState) _then;

  @override
  $Res call({
    Object? currentTime = freezed,
    Object? nextCheckTime = freezed,
    Object? schedule = freezed,
    Object? failureOrTimekeeping = freezed,
    Object? isLoading = freezed,
    Object? isChecking = freezed,
  }) {
    return _then(_value.copyWith(
      currentTime: currentTime == freezed
          ? _value.currentTime
          : currentTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      nextCheckTime: nextCheckTime == freezed
          ? _value.nextCheckTime
          : nextCheckTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      schedule: schedule == freezed
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as Schedule,
      failureOrTimekeeping: failureOrTimekeeping == freezed
          ? _value.failureOrTimekeeping
          : failureOrTimekeeping // ignore: cast_nullable_to_non_nullable
              as Either<TimekeepingFailure, Timekeeping>?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isChecking: isChecking == freezed
          ? _value.isChecking
          : isChecking // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $ScheduleCopyWith<$Res> get schedule {
    return $ScheduleCopyWith<$Res>(_value.schedule, (value) {
      return _then(_value.copyWith(schedule: value));
    });
  }
}

/// @nodoc
abstract class _$$_CheckinCheckoutScreenStateCopyWith<$Res>
    implements $CheckinCheckoutScreenStateCopyWith<$Res> {
  factory _$$_CheckinCheckoutScreenStateCopyWith(
          _$_CheckinCheckoutScreenState value,
          $Res Function(_$_CheckinCheckoutScreenState) then) =
      __$$_CheckinCheckoutScreenStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {DateTime currentTime,
      TimeOfDay nextCheckTime,
      Schedule schedule,
      Either<TimekeepingFailure, Timekeeping>? failureOrTimekeeping,
      bool isLoading,
      bool isChecking});

  @override
  $ScheduleCopyWith<$Res> get schedule;
}

/// @nodoc
class __$$_CheckinCheckoutScreenStateCopyWithImpl<$Res>
    extends _$CheckinCheckoutScreenStateCopyWithImpl<$Res>
    implements _$$_CheckinCheckoutScreenStateCopyWith<$Res> {
  __$$_CheckinCheckoutScreenStateCopyWithImpl(
      _$_CheckinCheckoutScreenState _value,
      $Res Function(_$_CheckinCheckoutScreenState) _then)
      : super(_value, (v) => _then(v as _$_CheckinCheckoutScreenState));

  @override
  _$_CheckinCheckoutScreenState get _value =>
      super._value as _$_CheckinCheckoutScreenState;

  @override
  $Res call({
    Object? currentTime = freezed,
    Object? nextCheckTime = freezed,
    Object? schedule = freezed,
    Object? failureOrTimekeeping = freezed,
    Object? isLoading = freezed,
    Object? isChecking = freezed,
  }) {
    return _then(_$_CheckinCheckoutScreenState(
      currentTime: currentTime == freezed
          ? _value.currentTime
          : currentTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      nextCheckTime: nextCheckTime == freezed
          ? _value.nextCheckTime
          : nextCheckTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      schedule: schedule == freezed
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as Schedule,
      failureOrTimekeeping: failureOrTimekeeping == freezed
          ? _value.failureOrTimekeeping
          : failureOrTimekeeping // ignore: cast_nullable_to_non_nullable
              as Either<TimekeepingFailure, Timekeeping>?,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isChecking: isChecking == freezed
          ? _value.isChecking
          : isChecking // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_CheckinCheckoutScreenState
    with DiagnosticableTreeMixin
    implements _CheckinCheckoutScreenState {
  const _$_CheckinCheckoutScreenState(
      {required this.currentTime,
      required this.nextCheckTime,
      required this.schedule,
      required this.failureOrTimekeeping,
      required this.isLoading,
      required this.isChecking});

  @override
  final DateTime currentTime;
  @override
  final TimeOfDay nextCheckTime;
  @override
  final Schedule schedule;
  @override
  final Either<TimekeepingFailure, Timekeeping>? failureOrTimekeeping;
  @override
  final bool isLoading;
  @override
  final bool isChecking;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CheckinCheckoutScreenState(currentTime: $currentTime, nextCheckTime: $nextCheckTime, schedule: $schedule, failureOrTimekeeping: $failureOrTimekeeping, isLoading: $isLoading, isChecking: $isChecking)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CheckinCheckoutScreenState'))
      ..add(DiagnosticsProperty('currentTime', currentTime))
      ..add(DiagnosticsProperty('nextCheckTime', nextCheckTime))
      ..add(DiagnosticsProperty('schedule', schedule))
      ..add(DiagnosticsProperty('failureOrTimekeeping', failureOrTimekeeping))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('isChecking', isChecking));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CheckinCheckoutScreenState &&
            const DeepCollectionEquality()
                .equals(other.currentTime, currentTime) &&
            const DeepCollectionEquality()
                .equals(other.nextCheckTime, nextCheckTime) &&
            const DeepCollectionEquality().equals(other.schedule, schedule) &&
            const DeepCollectionEquality()
                .equals(other.failureOrTimekeeping, failureOrTimekeeping) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.isChecking, isChecking));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currentTime),
      const DeepCollectionEquality().hash(nextCheckTime),
      const DeepCollectionEquality().hash(schedule),
      const DeepCollectionEquality().hash(failureOrTimekeeping),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isChecking));

  @JsonKey(ignore: true)
  @override
  _$$_CheckinCheckoutScreenStateCopyWith<_$_CheckinCheckoutScreenState>
      get copyWith => __$$_CheckinCheckoutScreenStateCopyWithImpl<
          _$_CheckinCheckoutScreenState>(this, _$identity);
}

abstract class _CheckinCheckoutScreenState
    implements CheckinCheckoutScreenState {
  const factory _CheckinCheckoutScreenState(
      {required final DateTime currentTime,
      required final TimeOfDay nextCheckTime,
      required final Schedule schedule,
      required final Either<TimekeepingFailure, Timekeeping>?
          failureOrTimekeeping,
      required final bool isLoading,
      required final bool isChecking}) = _$_CheckinCheckoutScreenState;

  @override
  DateTime get currentTime => throw _privateConstructorUsedError;
  @override
  TimeOfDay get nextCheckTime => throw _privateConstructorUsedError;
  @override
  Schedule get schedule => throw _privateConstructorUsedError;
  @override
  Either<TimekeepingFailure, Timekeeping>? get failureOrTimekeeping =>
      throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  bool get isChecking => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CheckinCheckoutScreenStateCopyWith<_$_CheckinCheckoutScreenState>
      get copyWith => throw _privateConstructorUsedError;
}
