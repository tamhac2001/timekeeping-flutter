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
    required TResult Function() getEmployeeStartDate,
    required TResult Function() getSchedule,
    required TResult Function() getTimekeepingRecords,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? toPreviousMonth,
    TResult Function()? toNextMonth,
    TResult Function()? getEmployeeStartDate,
    TResult Function()? getSchedule,
    TResult Function()? getTimekeepingRecords,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toPreviousMonth,
    TResult Function()? toNextMonth,
    TResult Function()? getEmployeeStartDate,
    TResult Function()? getSchedule,
    TResult Function()? getTimekeepingRecords,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ToPreviousMonth value) toPreviousMonth,
    required TResult Function(_ToNextMonth value) toNextMonth,
    required TResult Function(_GetEmployeeStartDate value) getEmployeeStartDate,
    required TResult Function(_GetSchedule value) getSchedule,
    required TResult Function(_GetTimekeepingRecords value)
        getTimekeepingRecords,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ToPreviousMonth value)? toPreviousMonth,
    TResult Function(_ToNextMonth value)? toNextMonth,
    TResult Function(_GetEmployeeStartDate value)? getEmployeeStartDate,
    TResult Function(_GetSchedule value)? getSchedule,
    TResult Function(_GetTimekeepingRecords value)? getTimekeepingRecords,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToPreviousMonth value)? toPreviousMonth,
    TResult Function(_ToNextMonth value)? toNextMonth,
    TResult Function(_GetEmployeeStartDate value)? getEmployeeStartDate,
    TResult Function(_GetSchedule value)? getSchedule,
    TResult Function(_GetTimekeepingRecords value)? getTimekeepingRecords,
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
abstract class _$$_ToPreviousMonthCopyWith<$Res> {
  factory _$$_ToPreviousMonthCopyWith(
          _$_ToPreviousMonth value, $Res Function(_$_ToPreviousMonth) then) =
      __$$_ToPreviousMonthCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ToPreviousMonthCopyWithImpl<$Res>
    extends _$TimekeepingRecordScreenEventCopyWithImpl<$Res>
    implements _$$_ToPreviousMonthCopyWith<$Res> {
  __$$_ToPreviousMonthCopyWithImpl(
      _$_ToPreviousMonth _value, $Res Function(_$_ToPreviousMonth) _then)
      : super(_value, (v) => _then(v as _$_ToPreviousMonth));

  @override
  _$_ToPreviousMonth get _value => super._value as _$_ToPreviousMonth;
}

/// @nodoc

class _$_ToPreviousMonth
    with DiagnosticableTreeMixin
    implements _ToPreviousMonth {
  const _$_ToPreviousMonth();

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
        (other.runtimeType == runtimeType && other is _$_ToPreviousMonth);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() toPreviousMonth,
    required TResult Function() toNextMonth,
    required TResult Function() getEmployeeStartDate,
    required TResult Function() getSchedule,
    required TResult Function() getTimekeepingRecords,
  }) {
    return toPreviousMonth();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? toPreviousMonth,
    TResult Function()? toNextMonth,
    TResult Function()? getEmployeeStartDate,
    TResult Function()? getSchedule,
    TResult Function()? getTimekeepingRecords,
  }) {
    return toPreviousMonth?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toPreviousMonth,
    TResult Function()? toNextMonth,
    TResult Function()? getEmployeeStartDate,
    TResult Function()? getSchedule,
    TResult Function()? getTimekeepingRecords,
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
    required TResult Function(_ToPreviousMonth value) toPreviousMonth,
    required TResult Function(_ToNextMonth value) toNextMonth,
    required TResult Function(_GetEmployeeStartDate value) getEmployeeStartDate,
    required TResult Function(_GetSchedule value) getSchedule,
    required TResult Function(_GetTimekeepingRecords value)
        getTimekeepingRecords,
  }) {
    return toPreviousMonth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ToPreviousMonth value)? toPreviousMonth,
    TResult Function(_ToNextMonth value)? toNextMonth,
    TResult Function(_GetEmployeeStartDate value)? getEmployeeStartDate,
    TResult Function(_GetSchedule value)? getSchedule,
    TResult Function(_GetTimekeepingRecords value)? getTimekeepingRecords,
  }) {
    return toPreviousMonth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToPreviousMonth value)? toPreviousMonth,
    TResult Function(_ToNextMonth value)? toNextMonth,
    TResult Function(_GetEmployeeStartDate value)? getEmployeeStartDate,
    TResult Function(_GetSchedule value)? getSchedule,
    TResult Function(_GetTimekeepingRecords value)? getTimekeepingRecords,
    required TResult orElse(),
  }) {
    if (toPreviousMonth != null) {
      return toPreviousMonth(this);
    }
    return orElse();
  }
}

abstract class _ToPreviousMonth implements TimekeepingRecordScreenEvent {
  const factory _ToPreviousMonth() = _$_ToPreviousMonth;
}

/// @nodoc
abstract class _$$_ToNextMonthCopyWith<$Res> {
  factory _$$_ToNextMonthCopyWith(
          _$_ToNextMonth value, $Res Function(_$_ToNextMonth) then) =
      __$$_ToNextMonthCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ToNextMonthCopyWithImpl<$Res>
    extends _$TimekeepingRecordScreenEventCopyWithImpl<$Res>
    implements _$$_ToNextMonthCopyWith<$Res> {
  __$$_ToNextMonthCopyWithImpl(
      _$_ToNextMonth _value, $Res Function(_$_ToNextMonth) _then)
      : super(_value, (v) => _then(v as _$_ToNextMonth));

  @override
  _$_ToNextMonth get _value => super._value as _$_ToNextMonth;
}

/// @nodoc

class _$_ToNextMonth with DiagnosticableTreeMixin implements _ToNextMonth {
  const _$_ToNextMonth();

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
        (other.runtimeType == runtimeType && other is _$_ToNextMonth);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() toPreviousMonth,
    required TResult Function() toNextMonth,
    required TResult Function() getEmployeeStartDate,
    required TResult Function() getSchedule,
    required TResult Function() getTimekeepingRecords,
  }) {
    return toNextMonth();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? toPreviousMonth,
    TResult Function()? toNextMonth,
    TResult Function()? getEmployeeStartDate,
    TResult Function()? getSchedule,
    TResult Function()? getTimekeepingRecords,
  }) {
    return toNextMonth?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toPreviousMonth,
    TResult Function()? toNextMonth,
    TResult Function()? getEmployeeStartDate,
    TResult Function()? getSchedule,
    TResult Function()? getTimekeepingRecords,
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
    required TResult Function(_ToPreviousMonth value) toPreviousMonth,
    required TResult Function(_ToNextMonth value) toNextMonth,
    required TResult Function(_GetEmployeeStartDate value) getEmployeeStartDate,
    required TResult Function(_GetSchedule value) getSchedule,
    required TResult Function(_GetTimekeepingRecords value)
        getTimekeepingRecords,
  }) {
    return toNextMonth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ToPreviousMonth value)? toPreviousMonth,
    TResult Function(_ToNextMonth value)? toNextMonth,
    TResult Function(_GetEmployeeStartDate value)? getEmployeeStartDate,
    TResult Function(_GetSchedule value)? getSchedule,
    TResult Function(_GetTimekeepingRecords value)? getTimekeepingRecords,
  }) {
    return toNextMonth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToPreviousMonth value)? toPreviousMonth,
    TResult Function(_ToNextMonth value)? toNextMonth,
    TResult Function(_GetEmployeeStartDate value)? getEmployeeStartDate,
    TResult Function(_GetSchedule value)? getSchedule,
    TResult Function(_GetTimekeepingRecords value)? getTimekeepingRecords,
    required TResult orElse(),
  }) {
    if (toNextMonth != null) {
      return toNextMonth(this);
    }
    return orElse();
  }
}

abstract class _ToNextMonth implements TimekeepingRecordScreenEvent {
  const factory _ToNextMonth() = _$_ToNextMonth;
}

/// @nodoc
abstract class _$$_GetEmployeeStartDateCopyWith<$Res> {
  factory _$$_GetEmployeeStartDateCopyWith(_$_GetEmployeeStartDate value,
          $Res Function(_$_GetEmployeeStartDate) then) =
      __$$_GetEmployeeStartDateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetEmployeeStartDateCopyWithImpl<$Res>
    extends _$TimekeepingRecordScreenEventCopyWithImpl<$Res>
    implements _$$_GetEmployeeStartDateCopyWith<$Res> {
  __$$_GetEmployeeStartDateCopyWithImpl(_$_GetEmployeeStartDate _value,
      $Res Function(_$_GetEmployeeStartDate) _then)
      : super(_value, (v) => _then(v as _$_GetEmployeeStartDate));

  @override
  _$_GetEmployeeStartDate get _value => super._value as _$_GetEmployeeStartDate;
}

/// @nodoc

class _$_GetEmployeeStartDate
    with DiagnosticableTreeMixin
    implements _GetEmployeeStartDate {
  const _$_GetEmployeeStartDate();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TimekeepingRecordScreenEvent.getEmployeeStartDate()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'TimekeepingRecordScreenEvent.getEmployeeStartDate'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetEmployeeStartDate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() toPreviousMonth,
    required TResult Function() toNextMonth,
    required TResult Function() getEmployeeStartDate,
    required TResult Function() getSchedule,
    required TResult Function() getTimekeepingRecords,
  }) {
    return getEmployeeStartDate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? toPreviousMonth,
    TResult Function()? toNextMonth,
    TResult Function()? getEmployeeStartDate,
    TResult Function()? getSchedule,
    TResult Function()? getTimekeepingRecords,
  }) {
    return getEmployeeStartDate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toPreviousMonth,
    TResult Function()? toNextMonth,
    TResult Function()? getEmployeeStartDate,
    TResult Function()? getSchedule,
    TResult Function()? getTimekeepingRecords,
    required TResult orElse(),
  }) {
    if (getEmployeeStartDate != null) {
      return getEmployeeStartDate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ToPreviousMonth value) toPreviousMonth,
    required TResult Function(_ToNextMonth value) toNextMonth,
    required TResult Function(_GetEmployeeStartDate value) getEmployeeStartDate,
    required TResult Function(_GetSchedule value) getSchedule,
    required TResult Function(_GetTimekeepingRecords value)
        getTimekeepingRecords,
  }) {
    return getEmployeeStartDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ToPreviousMonth value)? toPreviousMonth,
    TResult Function(_ToNextMonth value)? toNextMonth,
    TResult Function(_GetEmployeeStartDate value)? getEmployeeStartDate,
    TResult Function(_GetSchedule value)? getSchedule,
    TResult Function(_GetTimekeepingRecords value)? getTimekeepingRecords,
  }) {
    return getEmployeeStartDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToPreviousMonth value)? toPreviousMonth,
    TResult Function(_ToNextMonth value)? toNextMonth,
    TResult Function(_GetEmployeeStartDate value)? getEmployeeStartDate,
    TResult Function(_GetSchedule value)? getSchedule,
    TResult Function(_GetTimekeepingRecords value)? getTimekeepingRecords,
    required TResult orElse(),
  }) {
    if (getEmployeeStartDate != null) {
      return getEmployeeStartDate(this);
    }
    return orElse();
  }
}

abstract class _GetEmployeeStartDate implements TimekeepingRecordScreenEvent {
  const factory _GetEmployeeStartDate() = _$_GetEmployeeStartDate;
}

/// @nodoc
abstract class _$$_GetScheduleCopyWith<$Res> {
  factory _$$_GetScheduleCopyWith(
          _$_GetSchedule value, $Res Function(_$_GetSchedule) then) =
      __$$_GetScheduleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetScheduleCopyWithImpl<$Res>
    extends _$TimekeepingRecordScreenEventCopyWithImpl<$Res>
    implements _$$_GetScheduleCopyWith<$Res> {
  __$$_GetScheduleCopyWithImpl(
      _$_GetSchedule _value, $Res Function(_$_GetSchedule) _then)
      : super(_value, (v) => _then(v as _$_GetSchedule));

  @override
  _$_GetSchedule get _value => super._value as _$_GetSchedule;
}

/// @nodoc

class _$_GetSchedule with DiagnosticableTreeMixin implements _GetSchedule {
  const _$_GetSchedule();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TimekeepingRecordScreenEvent.getSchedule()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'TimekeepingRecordScreenEvent.getSchedule'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetSchedule);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() toPreviousMonth,
    required TResult Function() toNextMonth,
    required TResult Function() getEmployeeStartDate,
    required TResult Function() getSchedule,
    required TResult Function() getTimekeepingRecords,
  }) {
    return getSchedule();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? toPreviousMonth,
    TResult Function()? toNextMonth,
    TResult Function()? getEmployeeStartDate,
    TResult Function()? getSchedule,
    TResult Function()? getTimekeepingRecords,
  }) {
    return getSchedule?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toPreviousMonth,
    TResult Function()? toNextMonth,
    TResult Function()? getEmployeeStartDate,
    TResult Function()? getSchedule,
    TResult Function()? getTimekeepingRecords,
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
    required TResult Function(_ToPreviousMonth value) toPreviousMonth,
    required TResult Function(_ToNextMonth value) toNextMonth,
    required TResult Function(_GetEmployeeStartDate value) getEmployeeStartDate,
    required TResult Function(_GetSchedule value) getSchedule,
    required TResult Function(_GetTimekeepingRecords value)
        getTimekeepingRecords,
  }) {
    return getSchedule(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ToPreviousMonth value)? toPreviousMonth,
    TResult Function(_ToNextMonth value)? toNextMonth,
    TResult Function(_GetEmployeeStartDate value)? getEmployeeStartDate,
    TResult Function(_GetSchedule value)? getSchedule,
    TResult Function(_GetTimekeepingRecords value)? getTimekeepingRecords,
  }) {
    return getSchedule?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToPreviousMonth value)? toPreviousMonth,
    TResult Function(_ToNextMonth value)? toNextMonth,
    TResult Function(_GetEmployeeStartDate value)? getEmployeeStartDate,
    TResult Function(_GetSchedule value)? getSchedule,
    TResult Function(_GetTimekeepingRecords value)? getTimekeepingRecords,
    required TResult orElse(),
  }) {
    if (getSchedule != null) {
      return getSchedule(this);
    }
    return orElse();
  }
}

abstract class _GetSchedule implements TimekeepingRecordScreenEvent {
  const factory _GetSchedule() = _$_GetSchedule;
}

/// @nodoc
abstract class _$$_GetTimekeepingRecordsCopyWith<$Res> {
  factory _$$_GetTimekeepingRecordsCopyWith(_$_GetTimekeepingRecords value,
          $Res Function(_$_GetTimekeepingRecords) then) =
      __$$_GetTimekeepingRecordsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetTimekeepingRecordsCopyWithImpl<$Res>
    extends _$TimekeepingRecordScreenEventCopyWithImpl<$Res>
    implements _$$_GetTimekeepingRecordsCopyWith<$Res> {
  __$$_GetTimekeepingRecordsCopyWithImpl(_$_GetTimekeepingRecords _value,
      $Res Function(_$_GetTimekeepingRecords) _then)
      : super(_value, (v) => _then(v as _$_GetTimekeepingRecords));

  @override
  _$_GetTimekeepingRecords get _value =>
      super._value as _$_GetTimekeepingRecords;
}

/// @nodoc

class _$_GetTimekeepingRecords
    with DiagnosticableTreeMixin
    implements _GetTimekeepingRecords {
  const _$_GetTimekeepingRecords();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TimekeepingRecordScreenEvent.getTimekeepingRecords()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'TimekeepingRecordScreenEvent.getTimekeepingRecords'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetTimekeepingRecords);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() toPreviousMonth,
    required TResult Function() toNextMonth,
    required TResult Function() getEmployeeStartDate,
    required TResult Function() getSchedule,
    required TResult Function() getTimekeepingRecords,
  }) {
    return getTimekeepingRecords();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? toPreviousMonth,
    TResult Function()? toNextMonth,
    TResult Function()? getEmployeeStartDate,
    TResult Function()? getSchedule,
    TResult Function()? getTimekeepingRecords,
  }) {
    return getTimekeepingRecords?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? toPreviousMonth,
    TResult Function()? toNextMonth,
    TResult Function()? getEmployeeStartDate,
    TResult Function()? getSchedule,
    TResult Function()? getTimekeepingRecords,
    required TResult orElse(),
  }) {
    if (getTimekeepingRecords != null) {
      return getTimekeepingRecords();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ToPreviousMonth value) toPreviousMonth,
    required TResult Function(_ToNextMonth value) toNextMonth,
    required TResult Function(_GetEmployeeStartDate value) getEmployeeStartDate,
    required TResult Function(_GetSchedule value) getSchedule,
    required TResult Function(_GetTimekeepingRecords value)
        getTimekeepingRecords,
  }) {
    return getTimekeepingRecords(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ToPreviousMonth value)? toPreviousMonth,
    TResult Function(_ToNextMonth value)? toNextMonth,
    TResult Function(_GetEmployeeStartDate value)? getEmployeeStartDate,
    TResult Function(_GetSchedule value)? getSchedule,
    TResult Function(_GetTimekeepingRecords value)? getTimekeepingRecords,
  }) {
    return getTimekeepingRecords?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ToPreviousMonth value)? toPreviousMonth,
    TResult Function(_ToNextMonth value)? toNextMonth,
    TResult Function(_GetEmployeeStartDate value)? getEmployeeStartDate,
    TResult Function(_GetSchedule value)? getSchedule,
    TResult Function(_GetTimekeepingRecords value)? getTimekeepingRecords,
    required TResult orElse(),
  }) {
    if (getTimekeepingRecords != null) {
      return getTimekeepingRecords(this);
    }
    return orElse();
  }
}

abstract class _GetTimekeepingRecords implements TimekeepingRecordScreenEvent {
  const factory _GetTimekeepingRecords() = _$_GetTimekeepingRecords;
}

/// @nodoc
mixin _$TimekeepingRecordScreenState {
  DateTime get thisMonth => throw _privateConstructorUsedError;
  DateTime get employeeStartDate => throw _privateConstructorUsedError;
  Schedule get schedule => throw _privateConstructorUsedError;
  DateTime get timePicked => throw _privateConstructorUsedError;
  Either<TimekeepingFailure, List<Timekeeping>>?
      get failureOrTimekeepingListByMonth => throw _privateConstructorUsedError;
  List<Timekeeping> get displayedTimekeepingRecords =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

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
  $Res call(
      {DateTime thisMonth,
      DateTime employeeStartDate,
      Schedule schedule,
      DateTime timePicked,
      Either<TimekeepingFailure, List<Timekeeping>>?
          failureOrTimekeepingListByMonth,
      List<Timekeeping> displayedTimekeepingRecords,
      bool isLoading});

  $ScheduleCopyWith<$Res> get schedule;
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
    Object? thisMonth = freezed,
    Object? employeeStartDate = freezed,
    Object? schedule = freezed,
    Object? timePicked = freezed,
    Object? failureOrTimekeepingListByMonth = freezed,
    Object? displayedTimekeepingRecords = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      thisMonth: thisMonth == freezed
          ? _value.thisMonth
          : thisMonth // ignore: cast_nullable_to_non_nullable
              as DateTime,
      employeeStartDate: employeeStartDate == freezed
          ? _value.employeeStartDate
          : employeeStartDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      schedule: schedule == freezed
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as Schedule,
      timePicked: timePicked == freezed
          ? _value.timePicked
          : timePicked // ignore: cast_nullable_to_non_nullable
              as DateTime,
      failureOrTimekeepingListByMonth: failureOrTimekeepingListByMonth ==
              freezed
          ? _value.failureOrTimekeepingListByMonth
          : failureOrTimekeepingListByMonth // ignore: cast_nullable_to_non_nullable
              as Either<TimekeepingFailure, List<Timekeeping>>?,
      displayedTimekeepingRecords: displayedTimekeepingRecords == freezed
          ? _value.displayedTimekeepingRecords
          : displayedTimekeepingRecords // ignore: cast_nullable_to_non_nullable
              as List<Timekeeping>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_TimekeepingRecordScreenStateCopyWith<$Res>
    implements $TimekeepingRecordScreenStateCopyWith<$Res> {
  factory _$$_TimekeepingRecordScreenStateCopyWith(
          _$_TimekeepingRecordScreenState value,
          $Res Function(_$_TimekeepingRecordScreenState) then) =
      __$$_TimekeepingRecordScreenStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {DateTime thisMonth,
      DateTime employeeStartDate,
      Schedule schedule,
      DateTime timePicked,
      Either<TimekeepingFailure, List<Timekeeping>>?
          failureOrTimekeepingListByMonth,
      List<Timekeeping> displayedTimekeepingRecords,
      bool isLoading});

  @override
  $ScheduleCopyWith<$Res> get schedule;
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
    Object? thisMonth = freezed,
    Object? employeeStartDate = freezed,
    Object? schedule = freezed,
    Object? timePicked = freezed,
    Object? failureOrTimekeepingListByMonth = freezed,
    Object? displayedTimekeepingRecords = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_$_TimekeepingRecordScreenState(
      thisMonth: thisMonth == freezed
          ? _value.thisMonth
          : thisMonth // ignore: cast_nullable_to_non_nullable
              as DateTime,
      employeeStartDate: employeeStartDate == freezed
          ? _value.employeeStartDate
          : employeeStartDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      schedule: schedule == freezed
          ? _value.schedule
          : schedule // ignore: cast_nullable_to_non_nullable
              as Schedule,
      timePicked: timePicked == freezed
          ? _value.timePicked
          : timePicked // ignore: cast_nullable_to_non_nullable
              as DateTime,
      failureOrTimekeepingListByMonth: failureOrTimekeepingListByMonth ==
              freezed
          ? _value.failureOrTimekeepingListByMonth
          : failureOrTimekeepingListByMonth // ignore: cast_nullable_to_non_nullable
              as Either<TimekeepingFailure, List<Timekeeping>>?,
      displayedTimekeepingRecords: displayedTimekeepingRecords == freezed
          ? _value._displayedTimekeepingRecords
          : displayedTimekeepingRecords // ignore: cast_nullable_to_non_nullable
              as List<Timekeeping>,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_TimekeepingRecordScreenState
    with DiagnosticableTreeMixin
    implements _TimekeepingRecordScreenState {
  const _$_TimekeepingRecordScreenState(
      {required this.thisMonth,
      required this.employeeStartDate,
      required this.schedule,
      required this.timePicked,
      required this.failureOrTimekeepingListByMonth,
      required final List<Timekeeping> displayedTimekeepingRecords,
      required this.isLoading})
      : _displayedTimekeepingRecords = displayedTimekeepingRecords;

  @override
  final DateTime thisMonth;
  @override
  final DateTime employeeStartDate;
  @override
  final Schedule schedule;
  @override
  final DateTime timePicked;
  @override
  final Either<TimekeepingFailure, List<Timekeeping>>?
      failureOrTimekeepingListByMonth;
  final List<Timekeeping> _displayedTimekeepingRecords;
  @override
  List<Timekeeping> get displayedTimekeepingRecords {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_displayedTimekeepingRecords);
  }

  @override
  final bool isLoading;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TimekeepingRecordScreenState(thisMonth: $thisMonth, employeeStartDate: $employeeStartDate, schedule: $schedule, timePicked: $timePicked, failureOrTimekeepingListByMonth: $failureOrTimekeepingListByMonth, displayedTimekeepingRecords: $displayedTimekeepingRecords, isLoading: $isLoading)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TimekeepingRecordScreenState'))
      ..add(DiagnosticsProperty('thisMonth', thisMonth))
      ..add(DiagnosticsProperty('employeeStartDate', employeeStartDate))
      ..add(DiagnosticsProperty('schedule', schedule))
      ..add(DiagnosticsProperty('timePicked', timePicked))
      ..add(DiagnosticsProperty(
          'failureOrTimekeepingListByMonth', failureOrTimekeepingListByMonth))
      ..add(DiagnosticsProperty(
          'displayedTimekeepingRecords', displayedTimekeepingRecords))
      ..add(DiagnosticsProperty('isLoading', isLoading));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TimekeepingRecordScreenState &&
            const DeepCollectionEquality().equals(other.thisMonth, thisMonth) &&
            const DeepCollectionEquality()
                .equals(other.employeeStartDate, employeeStartDate) &&
            const DeepCollectionEquality().equals(other.schedule, schedule) &&
            const DeepCollectionEquality()
                .equals(other.timePicked, timePicked) &&
            const DeepCollectionEquality().equals(
                other.failureOrTimekeepingListByMonth,
                failureOrTimekeepingListByMonth) &&
            const DeepCollectionEquality().equals(
                other._displayedTimekeepingRecords,
                _displayedTimekeepingRecords) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(thisMonth),
      const DeepCollectionEquality().hash(employeeStartDate),
      const DeepCollectionEquality().hash(schedule),
      const DeepCollectionEquality().hash(timePicked),
      const DeepCollectionEquality().hash(failureOrTimekeepingListByMonth),
      const DeepCollectionEquality().hash(_displayedTimekeepingRecords),
      const DeepCollectionEquality().hash(isLoading));

  @JsonKey(ignore: true)
  @override
  _$$_TimekeepingRecordScreenStateCopyWith<_$_TimekeepingRecordScreenState>
      get copyWith => __$$_TimekeepingRecordScreenStateCopyWithImpl<
          _$_TimekeepingRecordScreenState>(this, _$identity);
}

abstract class _TimekeepingRecordScreenState
    implements TimekeepingRecordScreenState {
  const factory _TimekeepingRecordScreenState(
      {required final DateTime thisMonth,
      required final DateTime employeeStartDate,
      required final Schedule schedule,
      required final DateTime timePicked,
      required final Either<TimekeepingFailure, List<Timekeeping>>?
          failureOrTimekeepingListByMonth,
      required final List<Timekeeping> displayedTimekeepingRecords,
      required final bool isLoading}) = _$_TimekeepingRecordScreenState;

  @override
  DateTime get thisMonth => throw _privateConstructorUsedError;
  @override
  DateTime get employeeStartDate => throw _privateConstructorUsedError;
  @override
  Schedule get schedule => throw _privateConstructorUsedError;
  @override
  DateTime get timePicked => throw _privateConstructorUsedError;
  @override
  Either<TimekeepingFailure, List<Timekeeping>>?
      get failureOrTimekeepingListByMonth => throw _privateConstructorUsedError;
  @override
  List<Timekeeping> get displayedTimekeepingRecords =>
      throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TimekeepingRecordScreenStateCopyWith<_$_TimekeepingRecordScreenState>
      get copyWith => throw _privateConstructorUsedError;
}
