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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? clockTick,
    TResult Function()? updateNextCheckTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clockTick,
    TResult Function()? updateNextCheckTime,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ClockTick value) clockTick,
    required TResult Function(UpdateNextCheckTime value) updateNextCheckTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ClockTick value)? clockTick,
    TResult Function(UpdateNextCheckTime value)? updateNextCheckTime,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClockTick value)? clockTick,
    TResult Function(UpdateNextCheckTime value)? updateNextCheckTime,
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
  }) {
    return clockTick();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? clockTick,
    TResult Function()? updateNextCheckTime,
  }) {
    return clockTick?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clockTick,
    TResult Function()? updateNextCheckTime,
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
  }) {
    return clockTick(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ClockTick value)? clockTick,
    TResult Function(UpdateNextCheckTime value)? updateNextCheckTime,
  }) {
    return clockTick?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClockTick value)? clockTick,
    TResult Function(UpdateNextCheckTime value)? updateNextCheckTime,
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
  }) {
    return updateNextCheckTime();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? clockTick,
    TResult Function()? updateNextCheckTime,
  }) {
    return updateNextCheckTime?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? clockTick,
    TResult Function()? updateNextCheckTime,
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
  }) {
    return updateNextCheckTime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ClockTick value)? clockTick,
    TResult Function(UpdateNextCheckTime value)? updateNextCheckTime,
  }) {
    return updateNextCheckTime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ClockTick value)? clockTick,
    TResult Function(UpdateNextCheckTime value)? updateNextCheckTime,
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
mixin _$CheckinCheckoutScreenState {
  DateTime get currentTime => throw _privateConstructorUsedError;
  TimeOfDay get morningShiftStart => throw _privateConstructorUsedError;
  TimeOfDay get morningShiftEnd => throw _privateConstructorUsedError;
  TimeOfDay get afternoonShiftStart => throw _privateConstructorUsedError;
  TimeOfDay get afternoonShiftEnd => throw _privateConstructorUsedError;
  TimeOfDay get nextCheckTime => throw _privateConstructorUsedError;

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
      TimeOfDay morningShiftStart,
      TimeOfDay morningShiftEnd,
      TimeOfDay afternoonShiftStart,
      TimeOfDay afternoonShiftEnd,
      TimeOfDay nextCheckTime});
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
    Object? morningShiftStart = freezed,
    Object? morningShiftEnd = freezed,
    Object? afternoonShiftStart = freezed,
    Object? afternoonShiftEnd = freezed,
    Object? nextCheckTime = freezed,
  }) {
    return _then(_value.copyWith(
      currentTime: currentTime == freezed
          ? _value.currentTime
          : currentTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      morningShiftStart: morningShiftStart == freezed
          ? _value.morningShiftStart
          : morningShiftStart // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      morningShiftEnd: morningShiftEnd == freezed
          ? _value.morningShiftEnd
          : morningShiftEnd // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      afternoonShiftStart: afternoonShiftStart == freezed
          ? _value.afternoonShiftStart
          : afternoonShiftStart // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      afternoonShiftEnd: afternoonShiftEnd == freezed
          ? _value.afternoonShiftEnd
          : afternoonShiftEnd // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      nextCheckTime: nextCheckTime == freezed
          ? _value.nextCheckTime
          : nextCheckTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
    ));
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
      TimeOfDay morningShiftStart,
      TimeOfDay morningShiftEnd,
      TimeOfDay afternoonShiftStart,
      TimeOfDay afternoonShiftEnd,
      TimeOfDay nextCheckTime});
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
    Object? morningShiftStart = freezed,
    Object? morningShiftEnd = freezed,
    Object? afternoonShiftStart = freezed,
    Object? afternoonShiftEnd = freezed,
    Object? nextCheckTime = freezed,
  }) {
    return _then(_$_CheckinCheckoutScreenState(
      currentTime: currentTime == freezed
          ? _value.currentTime
          : currentTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      morningShiftStart: morningShiftStart == freezed
          ? _value.morningShiftStart
          : morningShiftStart // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      morningShiftEnd: morningShiftEnd == freezed
          ? _value.morningShiftEnd
          : morningShiftEnd // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      afternoonShiftStart: afternoonShiftStart == freezed
          ? _value.afternoonShiftStart
          : afternoonShiftStart // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      afternoonShiftEnd: afternoonShiftEnd == freezed
          ? _value.afternoonShiftEnd
          : afternoonShiftEnd // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      nextCheckTime: nextCheckTime == freezed
          ? _value.nextCheckTime
          : nextCheckTime // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
    ));
  }
}

/// @nodoc

class _$_CheckinCheckoutScreenState
    with DiagnosticableTreeMixin
    implements _CheckinCheckoutScreenState {
  const _$_CheckinCheckoutScreenState(
      {required this.currentTime,
      required this.morningShiftStart,
      required this.morningShiftEnd,
      required this.afternoonShiftStart,
      required this.afternoonShiftEnd,
      required this.nextCheckTime});

  @override
  final DateTime currentTime;
  @override
  final TimeOfDay morningShiftStart;
  @override
  final TimeOfDay morningShiftEnd;
  @override
  final TimeOfDay afternoonShiftStart;
  @override
  final TimeOfDay afternoonShiftEnd;
  @override
  final TimeOfDay nextCheckTime;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CheckinCheckoutScreenState(currentTime: $currentTime, morningShiftStart: $morningShiftStart, morningShiftEnd: $morningShiftEnd, afternoonShiftStart: $afternoonShiftStart, afternoonShiftEnd: $afternoonShiftEnd, nextCheckTime: $nextCheckTime)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CheckinCheckoutScreenState'))
      ..add(DiagnosticsProperty('currentTime', currentTime))
      ..add(DiagnosticsProperty('morningShiftStart', morningShiftStart))
      ..add(DiagnosticsProperty('morningShiftEnd', morningShiftEnd))
      ..add(DiagnosticsProperty('afternoonShiftStart', afternoonShiftStart))
      ..add(DiagnosticsProperty('afternoonShiftEnd', afternoonShiftEnd))
      ..add(DiagnosticsProperty('nextCheckTime', nextCheckTime));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CheckinCheckoutScreenState &&
            const DeepCollectionEquality()
                .equals(other.currentTime, currentTime) &&
            const DeepCollectionEquality()
                .equals(other.morningShiftStart, morningShiftStart) &&
            const DeepCollectionEquality()
                .equals(other.morningShiftEnd, morningShiftEnd) &&
            const DeepCollectionEquality()
                .equals(other.afternoonShiftStart, afternoonShiftStart) &&
            const DeepCollectionEquality()
                .equals(other.afternoonShiftEnd, afternoonShiftEnd) &&
            const DeepCollectionEquality()
                .equals(other.nextCheckTime, nextCheckTime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(currentTime),
      const DeepCollectionEquality().hash(morningShiftStart),
      const DeepCollectionEquality().hash(morningShiftEnd),
      const DeepCollectionEquality().hash(afternoonShiftStart),
      const DeepCollectionEquality().hash(afternoonShiftEnd),
      const DeepCollectionEquality().hash(nextCheckTime));

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
      required final TimeOfDay morningShiftStart,
      required final TimeOfDay morningShiftEnd,
      required final TimeOfDay afternoonShiftStart,
      required final TimeOfDay afternoonShiftEnd,
      required final TimeOfDay nextCheckTime}) = _$_CheckinCheckoutScreenState;

  @override
  DateTime get currentTime => throw _privateConstructorUsedError;
  @override
  TimeOfDay get morningShiftStart => throw _privateConstructorUsedError;
  @override
  TimeOfDay get morningShiftEnd => throw _privateConstructorUsedError;
  @override
  TimeOfDay get afternoonShiftStart => throw _privateConstructorUsedError;
  @override
  TimeOfDay get afternoonShiftEnd => throw _privateConstructorUsedError;
  @override
  TimeOfDay get nextCheckTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_CheckinCheckoutScreenStateCopyWith<_$_CheckinCheckoutScreenState>
      get copyWith => throw _privateConstructorUsedError;
}
