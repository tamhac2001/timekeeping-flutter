// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'schedule.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Schedule {
  TimeOfDay get morningShiftStart => throw _privateConstructorUsedError;
  TimeOfDay get morningShiftEnd => throw _privateConstructorUsedError;
  TimeOfDay get afternoonShiftStart => throw _privateConstructorUsedError;
  TimeOfDay get afternoonShiftEnd => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ScheduleCopyWith<Schedule> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleCopyWith<$Res> {
  factory $ScheduleCopyWith(Schedule value, $Res Function(Schedule) then) =
      _$ScheduleCopyWithImpl<$Res>;
  $Res call(
      {TimeOfDay morningShiftStart,
      TimeOfDay morningShiftEnd,
      TimeOfDay afternoonShiftStart,
      TimeOfDay afternoonShiftEnd});
}

/// @nodoc
class _$ScheduleCopyWithImpl<$Res> implements $ScheduleCopyWith<$Res> {
  _$ScheduleCopyWithImpl(this._value, this._then);

  final Schedule _value;
  // ignore: unused_field
  final $Res Function(Schedule) _then;

  @override
  $Res call({
    Object? morningShiftStart = freezed,
    Object? morningShiftEnd = freezed,
    Object? afternoonShiftStart = freezed,
    Object? afternoonShiftEnd = freezed,
  }) {
    return _then(_value.copyWith(
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
    ));
  }
}

/// @nodoc
abstract class _$$_ScheduleCopyWith<$Res> implements $ScheduleCopyWith<$Res> {
  factory _$$_ScheduleCopyWith(
          _$_Schedule value, $Res Function(_$_Schedule) then) =
      __$$_ScheduleCopyWithImpl<$Res>;
  @override
  $Res call(
      {TimeOfDay morningShiftStart,
      TimeOfDay morningShiftEnd,
      TimeOfDay afternoonShiftStart,
      TimeOfDay afternoonShiftEnd});
}

/// @nodoc
class __$$_ScheduleCopyWithImpl<$Res> extends _$ScheduleCopyWithImpl<$Res>
    implements _$$_ScheduleCopyWith<$Res> {
  __$$_ScheduleCopyWithImpl(
      _$_Schedule _value, $Res Function(_$_Schedule) _then)
      : super(_value, (v) => _then(v as _$_Schedule));

  @override
  _$_Schedule get _value => super._value as _$_Schedule;

  @override
  $Res call({
    Object? morningShiftStart = freezed,
    Object? morningShiftEnd = freezed,
    Object? afternoonShiftStart = freezed,
    Object? afternoonShiftEnd = freezed,
  }) {
    return _then(_$_Schedule(
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
    ));
  }
}

/// @nodoc

class _$_Schedule with DiagnosticableTreeMixin implements _Schedule {
  const _$_Schedule(
      {required this.morningShiftStart,
      required this.morningShiftEnd,
      required this.afternoonShiftStart,
      required this.afternoonShiftEnd});

  @override
  final TimeOfDay morningShiftStart;
  @override
  final TimeOfDay morningShiftEnd;
  @override
  final TimeOfDay afternoonShiftStart;
  @override
  final TimeOfDay afternoonShiftEnd;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Schedule(morningShiftStart: $morningShiftStart, morningShiftEnd: $morningShiftEnd, afternoonShiftStart: $afternoonShiftStart, afternoonShiftEnd: $afternoonShiftEnd)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Schedule'))
      ..add(DiagnosticsProperty('morningShiftStart', morningShiftStart))
      ..add(DiagnosticsProperty('morningShiftEnd', morningShiftEnd))
      ..add(DiagnosticsProperty('afternoonShiftStart', afternoonShiftStart))
      ..add(DiagnosticsProperty('afternoonShiftEnd', afternoonShiftEnd));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Schedule &&
            const DeepCollectionEquality()
                .equals(other.morningShiftStart, morningShiftStart) &&
            const DeepCollectionEquality()
                .equals(other.morningShiftEnd, morningShiftEnd) &&
            const DeepCollectionEquality()
                .equals(other.afternoonShiftStart, afternoonShiftStart) &&
            const DeepCollectionEquality()
                .equals(other.afternoonShiftEnd, afternoonShiftEnd));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(morningShiftStart),
      const DeepCollectionEquality().hash(morningShiftEnd),
      const DeepCollectionEquality().hash(afternoonShiftStart),
      const DeepCollectionEquality().hash(afternoonShiftEnd));

  @JsonKey(ignore: true)
  @override
  _$$_ScheduleCopyWith<_$_Schedule> get copyWith =>
      __$$_ScheduleCopyWithImpl<_$_Schedule>(this, _$identity);
}

abstract class _Schedule implements Schedule {
  const factory _Schedule(
      {required final TimeOfDay morningShiftStart,
      required final TimeOfDay morningShiftEnd,
      required final TimeOfDay afternoonShiftStart,
      required final TimeOfDay afternoonShiftEnd}) = _$_Schedule;

  @override
  TimeOfDay get morningShiftStart => throw _privateConstructorUsedError;
  @override
  TimeOfDay get morningShiftEnd => throw _privateConstructorUsedError;
  @override
  TimeOfDay get afternoonShiftStart => throw _privateConstructorUsedError;
  @override
  TimeOfDay get afternoonShiftEnd => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ScheduleCopyWith<_$_Schedule> get copyWith =>
      throw _privateConstructorUsedError;
}
