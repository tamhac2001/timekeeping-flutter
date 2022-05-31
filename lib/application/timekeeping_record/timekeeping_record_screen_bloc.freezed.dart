// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'timekeeping_record_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TimekeepingRecordScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() toPreviousMonth,
    required TResult Function() toNextMonth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? toPreviousMonth,
    TResult Function()? toNextMonth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toPreviousMonth,
    TResult Function()? toNextMonth,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToPreviousMonth value) toPreviousMonth,
    required TResult Function(ToNextMonth value) toNextMonth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ToPreviousMonth value)? toPreviousMonth,
    TResult Function(ToNextMonth value)? toNextMonth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToPreviousMonth value)? toPreviousMonth,
    TResult Function(ToNextMonth value)? toNextMonth,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimekeepingRecordScreenEventCopyWith<$Res> {
  factory $TimekeepingRecordScreenEventCopyWith(
          TimekeepingRecordScreenEvent value,
          $Res Function(TimekeepingRecordScreenEvent) then) =
      _$TimekeepingRecordScreenEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TimekeepingRecordScreenEventCopyWithImpl<$Res>
    implements $TimekeepingRecordScreenEventCopyWith<$Res> {
  _$TimekeepingRecordScreenEventCopyWithImpl(this._value, this._then);

  final TimekeepingRecordScreenEvent _value;
  // ignore: unused_field
  final $Res Function(TimekeepingRecordScreenEvent) _then;
}

/// @nodoc
abstract class _$$ToPreviousMonthCopyWith<$Res> {
  factory _$$ToPreviousMonthCopyWith(
          _$ToPreviousMonth value, $Res Function(_$ToPreviousMonth) then) =
      __$$ToPreviousMonthCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToPreviousMonthCopyWithImpl<$Res>
    extends _$TimekeepingRecordScreenEventCopyWithImpl<$Res>
    implements _$$ToPreviousMonthCopyWith<$Res> {
  __$$ToPreviousMonthCopyWithImpl(
      _$ToPreviousMonth _value, $Res Function(_$ToPreviousMonth) _then)
      : super(_value, (v) => _then(v as _$ToPreviousMonth));

  @override
  _$ToPreviousMonth get _value => super._value as _$ToPreviousMonth;
}

/// @nodoc

class _$ToPreviousMonth
    with DiagnosticableTreeMixin
    implements ToPreviousMonth {
  const _$ToPreviousMonth();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TimekeepingRecordScreenEvent.toPreviousMonth()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'TimekeepingRecordScreenEvent.toPreviousMonth'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ToPreviousMonth);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() toPreviousMonth,
    required TResult Function() toNextMonth,
  }) {
    return toPreviousMonth();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? toPreviousMonth,
    TResult Function()? toNextMonth,
  }) {
    return toPreviousMonth?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toPreviousMonth,
    TResult Function()? toNextMonth,
    required TResult orElse(),
  }) {
    if (toPreviousMonth != null) {
      return toPreviousMonth();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToPreviousMonth value) toPreviousMonth,
    required TResult Function(ToNextMonth value) toNextMonth,
  }) {
    return toPreviousMonth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ToPreviousMonth value)? toPreviousMonth,
    TResult Function(ToNextMonth value)? toNextMonth,
  }) {
    return toPreviousMonth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToPreviousMonth value)? toPreviousMonth,
    TResult Function(ToNextMonth value)? toNextMonth,
    required TResult orElse(),
  }) {
    if (toPreviousMonth != null) {
      return toPreviousMonth(this);
    }
    return orElse();
  }
}

abstract class ToPreviousMonth implements TimekeepingRecordScreenEvent {
  const factory ToPreviousMonth() = _$ToPreviousMonth;
}

/// @nodoc
abstract class _$$ToNextMonthCopyWith<$Res> {
  factory _$$ToNextMonthCopyWith(
          _$ToNextMonth value, $Res Function(_$ToNextMonth) then) =
      __$$ToNextMonthCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToNextMonthCopyWithImpl<$Res>
    extends _$TimekeepingRecordScreenEventCopyWithImpl<$Res>
    implements _$$ToNextMonthCopyWith<$Res> {
  __$$ToNextMonthCopyWithImpl(
      _$ToNextMonth _value, $Res Function(_$ToNextMonth) _then)
      : super(_value, (v) => _then(v as _$ToNextMonth));

  @override
  _$ToNextMonth get _value => super._value as _$ToNextMonth;
}

/// @nodoc

class _$ToNextMonth with DiagnosticableTreeMixin implements ToNextMonth {
  const _$ToNextMonth();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TimekeepingRecordScreenEvent.toNextMonth()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'TimekeepingRecordScreenEvent.toNextMonth'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ToNextMonth);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() toPreviousMonth,
    required TResult Function() toNextMonth,
  }) {
    return toNextMonth();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? toPreviousMonth,
    TResult Function()? toNextMonth,
  }) {
    return toNextMonth?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toPreviousMonth,
    TResult Function()? toNextMonth,
    required TResult orElse(),
  }) {
    if (toNextMonth != null) {
      return toNextMonth();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ToPreviousMonth value) toPreviousMonth,
    required TResult Function(ToNextMonth value) toNextMonth,
  }) {
    return toNextMonth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ToPreviousMonth value)? toPreviousMonth,
    TResult Function(ToNextMonth value)? toNextMonth,
  }) {
    return toNextMonth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ToPreviousMonth value)? toPreviousMonth,
    TResult Function(ToNextMonth value)? toNextMonth,
    required TResult orElse(),
  }) {
    if (toNextMonth != null) {
      return toNextMonth(this);
    }
    return orElse();
  }
}

abstract class ToNextMonth implements TimekeepingRecordScreenEvent {
  const factory ToNextMonth() = _$ToNextMonth;
}

/// @nodoc
mixin _$TimekeepingRecordScreenState {
  DateTime get currentDisplayedTime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TimekeepingRecordScreenStateCopyWith<TimekeepingRecordScreenState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimekeepingRecordScreenStateCopyWith<$Res> {
  factory $TimekeepingRecordScreenStateCopyWith(
          TimekeepingRecordScreenState value,
          $Res Function(TimekeepingRecordScreenState) then) =
      _$TimekeepingRecordScreenStateCopyWithImpl<$Res>;
  $Res call({DateTime currentDisplayedTime});
}

/// @nodoc
class _$TimekeepingRecordScreenStateCopyWithImpl<$Res>
    implements $TimekeepingRecordScreenStateCopyWith<$Res> {
  _$TimekeepingRecordScreenStateCopyWithImpl(this._value, this._then);

  final TimekeepingRecordScreenState _value;
  // ignore: unused_field
  final $Res Function(TimekeepingRecordScreenState) _then;

  @override
  $Res call({
    Object? currentDisplayedTime = freezed,
  }) {
    return _then(_value.copyWith(
      currentDisplayedTime: currentDisplayedTime == freezed
          ? _value.currentDisplayedTime
          : currentDisplayedTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$$_TimekeepingRecordScreenStateCopyWith<$Res>
    implements $TimekeepingRecordScreenStateCopyWith<$Res> {
  factory _$$_TimekeepingRecordScreenStateCopyWith(
          _$_TimekeepingRecordScreenState value,
          $Res Function(_$_TimekeepingRecordScreenState) then) =
      __$$_TimekeepingRecordScreenStateCopyWithImpl<$Res>;
  @override
  $Res call({DateTime currentDisplayedTime});
}

/// @nodoc
class __$$_TimekeepingRecordScreenStateCopyWithImpl<$Res>
    extends _$TimekeepingRecordScreenStateCopyWithImpl<$Res>
    implements _$$_TimekeepingRecordScreenStateCopyWith<$Res> {
  __$$_TimekeepingRecordScreenStateCopyWithImpl(
      _$_TimekeepingRecordScreenState _value,
      $Res Function(_$_TimekeepingRecordScreenState) _then)
      : super(_value, (v) => _then(v as _$_TimekeepingRecordScreenState));

  @override
  _$_TimekeepingRecordScreenState get _value =>
      super._value as _$_TimekeepingRecordScreenState;

  @override
  $Res call({
    Object? currentDisplayedTime = freezed,
  }) {
    return _then(_$_TimekeepingRecordScreenState(
      currentDisplayedTime: currentDisplayedTime == freezed
          ? _value.currentDisplayedTime
          : currentDisplayedTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_TimekeepingRecordScreenState
    with DiagnosticableTreeMixin
    implements _TimekeepingRecordScreenState {
  const _$_TimekeepingRecordScreenState({required this.currentDisplayedTime});

  @override
  final DateTime currentDisplayedTime;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TimekeepingRecordScreenState(currentDisplayedTime: $currentDisplayedTime)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TimekeepingRecordScreenState'))
      ..add(DiagnosticsProperty('currentDisplayedTime', currentDisplayedTime));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TimekeepingRecordScreenState &&
            const DeepCollectionEquality()
                .equals(other.currentDisplayedTime, currentDisplayedTime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(currentDisplayedTime));

  @JsonKey(ignore: true)
  @override
  _$$_TimekeepingRecordScreenStateCopyWith<_$_TimekeepingRecordScreenState>
      get copyWith => __$$_TimekeepingRecordScreenStateCopyWithImpl<
          _$_TimekeepingRecordScreenState>(this, _$identity);
}

abstract class _TimekeepingRecordScreenState
    implements TimekeepingRecordScreenState {
  const factory _TimekeepingRecordScreenState(
          {required final DateTime currentDisplayedTime}) =
      _$_TimekeepingRecordScreenState;

  @override
  DateTime get currentDisplayedTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TimekeepingRecordScreenStateCopyWith<_$_TimekeepingRecordScreenState>
      get copyWith => throw _privateConstructorUsedError;
}
