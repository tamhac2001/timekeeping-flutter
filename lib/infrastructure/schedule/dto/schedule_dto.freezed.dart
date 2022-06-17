// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'schedule_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ScheduleDto _$ScheduleDtoFromJson(Map<String, dynamic> json) {
  return _ScheduleDto.fromJson(json);
}

/// @nodoc
mixin _$ScheduleDto {
  DateTime get morningShiftStart => throw _privateConstructorUsedError;
  DateTime get morningShiftEnd => throw _privateConstructorUsedError;
  DateTime get afternoonShiftStart => throw _privateConstructorUsedError;
  DateTime get afternoonShiftEnd => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScheduleDtoCopyWith<ScheduleDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleDtoCopyWith<$Res> {
  factory $ScheduleDtoCopyWith(
          ScheduleDto value, $Res Function(ScheduleDto) then) =
      _$ScheduleDtoCopyWithImpl<$Res>;
  $Res call(
      {DateTime morningShiftStart,
      DateTime morningShiftEnd,
      DateTime afternoonShiftStart,
      DateTime afternoonShiftEnd});
}

/// @nodoc
class _$ScheduleDtoCopyWithImpl<$Res> implements $ScheduleDtoCopyWith<$Res> {
  _$ScheduleDtoCopyWithImpl(this._value, this._then);

  final ScheduleDto _value;
  // ignore: unused_field
  final $Res Function(ScheduleDto) _then;

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
              as DateTime,
      morningShiftEnd: morningShiftEnd == freezed
          ? _value.morningShiftEnd
          : morningShiftEnd // ignore: cast_nullable_to_non_nullable
              as DateTime,
      afternoonShiftStart: afternoonShiftStart == freezed
          ? _value.afternoonShiftStart
          : afternoonShiftStart // ignore: cast_nullable_to_non_nullable
              as DateTime,
      afternoonShiftEnd: afternoonShiftEnd == freezed
          ? _value.afternoonShiftEnd
          : afternoonShiftEnd // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$$_ScheduleDtoCopyWith<$Res>
    implements $ScheduleDtoCopyWith<$Res> {
  factory _$$_ScheduleDtoCopyWith(
          _$_ScheduleDto value, $Res Function(_$_ScheduleDto) then) =
      __$$_ScheduleDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {DateTime morningShiftStart,
      DateTime morningShiftEnd,
      DateTime afternoonShiftStart,
      DateTime afternoonShiftEnd});
}

/// @nodoc
class __$$_ScheduleDtoCopyWithImpl<$Res> extends _$ScheduleDtoCopyWithImpl<$Res>
    implements _$$_ScheduleDtoCopyWith<$Res> {
  __$$_ScheduleDtoCopyWithImpl(
      _$_ScheduleDto _value, $Res Function(_$_ScheduleDto) _then)
      : super(_value, (v) => _then(v as _$_ScheduleDto));

  @override
  _$_ScheduleDto get _value => super._value as _$_ScheduleDto;

  @override
  $Res call({
    Object? morningShiftStart = freezed,
    Object? morningShiftEnd = freezed,
    Object? afternoonShiftStart = freezed,
    Object? afternoonShiftEnd = freezed,
  }) {
    return _then(_$_ScheduleDto(
      morningShiftStart: morningShiftStart == freezed
          ? _value.morningShiftStart
          : morningShiftStart // ignore: cast_nullable_to_non_nullable
              as DateTime,
      morningShiftEnd: morningShiftEnd == freezed
          ? _value.morningShiftEnd
          : morningShiftEnd // ignore: cast_nullable_to_non_nullable
              as DateTime,
      afternoonShiftStart: afternoonShiftStart == freezed
          ? _value.afternoonShiftStart
          : afternoonShiftStart // ignore: cast_nullable_to_non_nullable
              as DateTime,
      afternoonShiftEnd: afternoonShiftEnd == freezed
          ? _value.afternoonShiftEnd
          : afternoonShiftEnd // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_ScheduleDto with DiagnosticableTreeMixin implements _ScheduleDto {
  const _$_ScheduleDto(
      {required this.morningShiftStart,
      required this.morningShiftEnd,
      required this.afternoonShiftStart,
      required this.afternoonShiftEnd});

  factory _$_ScheduleDto.fromJson(Map<String, dynamic> json) =>
      _$$_ScheduleDtoFromJson(json);

  @override
  final DateTime morningShiftStart;
  @override
  final DateTime morningShiftEnd;
  @override
  final DateTime afternoonShiftStart;
  @override
  final DateTime afternoonShiftEnd;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ScheduleDto(morningShiftStart: $morningShiftStart, morningShiftEnd: $morningShiftEnd, afternoonShiftStart: $afternoonShiftStart, afternoonShiftEnd: $afternoonShiftEnd)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ScheduleDto'))
      ..add(DiagnosticsProperty('morningShiftStart', morningShiftStart))
      ..add(DiagnosticsProperty('morningShiftEnd', morningShiftEnd))
      ..add(DiagnosticsProperty('afternoonShiftStart', afternoonShiftStart))
      ..add(DiagnosticsProperty('afternoonShiftEnd', afternoonShiftEnd));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScheduleDto &&
            const DeepCollectionEquality()
                .equals(other.morningShiftStart, morningShiftStart) &&
            const DeepCollectionEquality()
                .equals(other.morningShiftEnd, morningShiftEnd) &&
            const DeepCollectionEquality()
                .equals(other.afternoonShiftStart, afternoonShiftStart) &&
            const DeepCollectionEquality()
                .equals(other.afternoonShiftEnd, afternoonShiftEnd));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(morningShiftStart),
      const DeepCollectionEquality().hash(morningShiftEnd),
      const DeepCollectionEquality().hash(afternoonShiftStart),
      const DeepCollectionEquality().hash(afternoonShiftEnd));

  @JsonKey(ignore: true)
  @override
  _$$_ScheduleDtoCopyWith<_$_ScheduleDto> get copyWith =>
      __$$_ScheduleDtoCopyWithImpl<_$_ScheduleDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ScheduleDtoToJson(this);
  }
}

abstract class _ScheduleDto implements ScheduleDto {
  const factory _ScheduleDto(
      {required final DateTime morningShiftStart,
      required final DateTime morningShiftEnd,
      required final DateTime afternoonShiftStart,
      required final DateTime afternoonShiftEnd}) = _$_ScheduleDto;

  factory _ScheduleDto.fromJson(Map<String, dynamic> json) =
      _$_ScheduleDto.fromJson;

  @override
  DateTime get morningShiftStart => throw _privateConstructorUsedError;
  @override
  DateTime get morningShiftEnd => throw _privateConstructorUsedError;
  @override
  DateTime get afternoonShiftStart => throw _privateConstructorUsedError;
  @override
  DateTime get afternoonShiftEnd => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ScheduleDtoCopyWith<_$_ScheduleDto> get copyWith =>
      throw _privateConstructorUsedError;
}
