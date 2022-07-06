// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'schedule_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ScheduleEvent {
  Schedule get schedule => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Schedule schedule) initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Schedule schedule)? initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Schedule schedule)? initialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScheduleEventCopyWith<ScheduleEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleEventCopyWith<$Res> {
  factory $ScheduleEventCopyWith(
          ScheduleEvent value, $Res Function(ScheduleEvent) then) =
      _$ScheduleEventCopyWithImpl<$Res>;
  $Res call({Schedule schedule});

  $ScheduleCopyWith<$Res> get schedule;
}

/// @nodoc
class _$ScheduleEventCopyWithImpl<$Res>
    implements $ScheduleEventCopyWith<$Res> {
  _$ScheduleEventCopyWithImpl(this._value, this._then);

  final ScheduleEvent _value;
  // ignore: unused_field
  final $Res Function(ScheduleEvent) _then;

  @override
  $Res call({
    Object? schedule = freezed,
  }) {
    return _then(_value.copyWith(
      schedule: schedule == freezed
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as Schedule,
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
abstract class _$$_InitializedCopyWith<$Res>
    implements $ScheduleEventCopyWith<$Res> {
  factory _$$_InitializedCopyWith(
          _$_Initialized value, $Res Function(_$_Initialized) then) =
      __$$_InitializedCopyWithImpl<$Res>;
  @override
  $Res call({Schedule schedule});

  @override
  $ScheduleCopyWith<$Res> get schedule;
}

/// @nodoc
class __$$_InitializedCopyWithImpl<$Res>
    extends _$ScheduleEventCopyWithImpl<$Res>
    implements _$$_InitializedCopyWith<$Res> {
  __$$_InitializedCopyWithImpl(
      _$_Initialized _value, $Res Function(_$_Initialized) _then)
      : super(_value, (v) => _then(v as _$_Initialized));

  @override
  _$_Initialized get _value => super._value as _$_Initialized;

  @override
  $Res call({
    Object? schedule = freezed,
  }) {
    return _then(_$_Initialized(
      schedule == freezed
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as Schedule,
    ));
  }
}

/// @nodoc

class _$_Initialized with DiagnosticableTreeMixin implements _Initialized {
  const _$_Initialized(this.schedule);

  @override
  final Schedule schedule;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ScheduleEvent.initialized(schedule: $schedule)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ScheduleEvent.initialized'))
      ..add(DiagnosticsProperty('schedule', schedule));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initialized &&
            const DeepCollectionEquality().equals(other.schedule, schedule));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(schedule));

  @JsonKey(ignore: true)
  @override
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      __$$_InitializedCopyWithImpl<_$_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Schedule schedule) initialized,
  }) {
    return initialized(schedule);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Schedule schedule)? initialized,
  }) {
    return initialized?.call(schedule);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Schedule schedule)? initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(schedule);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements ScheduleEvent {
  const factory _Initialized(final Schedule schedule) = _$_Initialized;

  @override
  Schedule get schedule => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ScheduleState {
  Schedule get schedule => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScheduleStateCopyWith<ScheduleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleStateCopyWith<$Res> {
  factory $ScheduleStateCopyWith(
          ScheduleState value, $Res Function(ScheduleState) then) =
      _$ScheduleStateCopyWithImpl<$Res>;
  $Res call({Schedule schedule});

  $ScheduleCopyWith<$Res> get schedule;
}

/// @nodoc
class _$ScheduleStateCopyWithImpl<$Res>
    implements $ScheduleStateCopyWith<$Res> {
  _$ScheduleStateCopyWithImpl(this._value, this._then);

  final ScheduleState _value;
  // ignore: unused_field
  final $Res Function(ScheduleState) _then;

  @override
  $Res call({
    Object? schedule = freezed,
  }) {
    return _then(_value.copyWith(
      schedule: schedule == freezed
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as Schedule,
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
abstract class _$$_ScheduleStateCopyWith<$Res>
    implements $ScheduleStateCopyWith<$Res> {
  factory _$$_ScheduleStateCopyWith(
          _$_ScheduleState value, $Res Function(_$_ScheduleState) then) =
      __$$_ScheduleStateCopyWithImpl<$Res>;
  @override
  $Res call({Schedule schedule});

  @override
  $ScheduleCopyWith<$Res> get schedule;
}

/// @nodoc
class __$$_ScheduleStateCopyWithImpl<$Res>
    extends _$ScheduleStateCopyWithImpl<$Res>
    implements _$$_ScheduleStateCopyWith<$Res> {
  __$$_ScheduleStateCopyWithImpl(
      _$_ScheduleState _value, $Res Function(_$_ScheduleState) _then)
      : super(_value, (v) => _then(v as _$_ScheduleState));

  @override
  _$_ScheduleState get _value => super._value as _$_ScheduleState;

  @override
  $Res call({
    Object? schedule = freezed,
  }) {
    return _then(_$_ScheduleState(
      schedule: schedule == freezed
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as Schedule,
    ));
  }
}

/// @nodoc

class _$_ScheduleState with DiagnosticableTreeMixin implements _ScheduleState {
  const _$_ScheduleState({required this.schedule});

  @override
  final Schedule schedule;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ScheduleState(schedule: $schedule)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ScheduleState'))
      ..add(DiagnosticsProperty('schedule', schedule));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScheduleState &&
            const DeepCollectionEquality().equals(other.schedule, schedule));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(schedule));

  @JsonKey(ignore: true)
  @override
  _$$_ScheduleStateCopyWith<_$_ScheduleState> get copyWith =>
      __$$_ScheduleStateCopyWithImpl<_$_ScheduleState>(this, _$identity);
}

abstract class _ScheduleState implements ScheduleState {
  const factory _ScheduleState({required final Schedule schedule}) =
      _$_ScheduleState;

  @override
  Schedule get schedule => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ScheduleStateCopyWith<_$_ScheduleState> get copyWith =>
      throw _privateConstructorUsedError;
}
