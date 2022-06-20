// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'timekeeping_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TimekeepingDto _$TimekeepingDtoFromJson(Map<String, dynamic> json) {
  return _TimekeepingDto.fromJson(json);
}

/// @nodoc
mixin _$TimekeepingDto {
  DateTime get date => throw _privateConstructorUsedError;
  @JsonKey(nullable: true, includeIfNull: false)
  DateTime? get morningShiftStart => throw _privateConstructorUsedError;
  @JsonKey(nullable: true, includeIfNull: false)
  DateTime? get morningShiftEnd => throw _privateConstructorUsedError;
  @JsonKey(nullable: true, includeIfNull: false)
  DateTime? get afternoonShiftStart => throw _privateConstructorUsedError;
  @JsonKey(nullable: true, includeIfNull: false)
  DateTime? get afternoonShiftEnd => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimekeepingDtoCopyWith<TimekeepingDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimekeepingDtoCopyWith<$Res> {
  factory $TimekeepingDtoCopyWith(
          TimekeepingDto value, $Res Function(TimekeepingDto) then) =
      _$TimekeepingDtoCopyWithImpl<$Res>;
  $Res call(
      {DateTime date,
      @JsonKey(nullable: true, includeIfNull: false)
          DateTime? morningShiftStart,
      @JsonKey(nullable: true, includeIfNull: false)
          DateTime? morningShiftEnd,
      @JsonKey(nullable: true, includeIfNull: false)
          DateTime? afternoonShiftStart,
      @JsonKey(nullable: true, includeIfNull: false)
          DateTime? afternoonShiftEnd});
}

/// @nodoc
class _$TimekeepingDtoCopyWithImpl<$Res>
    implements $TimekeepingDtoCopyWith<$Res> {
  _$TimekeepingDtoCopyWithImpl(this._value, this._then);

  final TimekeepingDto _value;
  // ignore: unused_field
  final $Res Function(TimekeepingDto) _then;

  @override
  $Res call({
    Object? date = freezed,
    Object? morningShiftStart = freezed,
    Object? morningShiftEnd = freezed,
    Object? afternoonShiftStart = freezed,
    Object? afternoonShiftEnd = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      morningShiftStart: morningShiftStart == freezed
          ? _value.morningShiftStart
          : morningShiftStart // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      morningShiftEnd: morningShiftEnd == freezed
          ? _value.morningShiftEnd
          : morningShiftEnd // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      afternoonShiftStart: afternoonShiftStart == freezed
          ? _value.afternoonShiftStart
          : afternoonShiftStart // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      afternoonShiftEnd: afternoonShiftEnd == freezed
          ? _value.afternoonShiftEnd
          : afternoonShiftEnd // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$$_TimekeepingDtoCopyWith<$Res>
    implements $TimekeepingDtoCopyWith<$Res> {
  factory _$$_TimekeepingDtoCopyWith(
          _$_TimekeepingDto value, $Res Function(_$_TimekeepingDto) then) =
      __$$_TimekeepingDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {DateTime date,
      @JsonKey(nullable: true, includeIfNull: false)
          DateTime? morningShiftStart,
      @JsonKey(nullable: true, includeIfNull: false)
          DateTime? morningShiftEnd,
      @JsonKey(nullable: true, includeIfNull: false)
          DateTime? afternoonShiftStart,
      @JsonKey(nullable: true, includeIfNull: false)
          DateTime? afternoonShiftEnd});
}

/// @nodoc
class __$$_TimekeepingDtoCopyWithImpl<$Res>
    extends _$TimekeepingDtoCopyWithImpl<$Res>
    implements _$$_TimekeepingDtoCopyWith<$Res> {
  __$$_TimekeepingDtoCopyWithImpl(
      _$_TimekeepingDto _value, $Res Function(_$_TimekeepingDto) _then)
      : super(_value, (v) => _then(v as _$_TimekeepingDto));

  @override
  _$_TimekeepingDto get _value => super._value as _$_TimekeepingDto;

  @override
  $Res call({
    Object? date = freezed,
    Object? morningShiftStart = freezed,
    Object? morningShiftEnd = freezed,
    Object? afternoonShiftStart = freezed,
    Object? afternoonShiftEnd = freezed,
  }) {
    return _then(_$_TimekeepingDto(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      morningShiftStart: morningShiftStart == freezed
          ? _value.morningShiftStart
          : morningShiftStart // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      morningShiftEnd: morningShiftEnd == freezed
          ? _value.morningShiftEnd
          : morningShiftEnd // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      afternoonShiftStart: afternoonShiftStart == freezed
          ? _value.afternoonShiftStart
          : afternoonShiftStart // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      afternoonShiftEnd: afternoonShiftEnd == freezed
          ? _value.afternoonShiftEnd
          : afternoonShiftEnd // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_TimekeepingDto
    with DiagnosticableTreeMixin
    implements _TimekeepingDto {
  const _$_TimekeepingDto(
      {required this.date,
      @JsonKey(nullable: true, includeIfNull: false)
          required this.morningShiftStart,
      @JsonKey(nullable: true, includeIfNull: false)
          required this.morningShiftEnd,
      @JsonKey(nullable: true, includeIfNull: false)
          required this.afternoonShiftStart,
      @JsonKey(nullable: true, includeIfNull: false)
          required this.afternoonShiftEnd});

  factory _$_TimekeepingDto.fromJson(Map<String, dynamic> json) =>
      _$$_TimekeepingDtoFromJson(json);

  @override
  final DateTime date;
  @override
  @JsonKey(nullable: true, includeIfNull: false)
  final DateTime? morningShiftStart;
  @override
  @JsonKey(nullable: true, includeIfNull: false)
  final DateTime? morningShiftEnd;
  @override
  @JsonKey(nullable: true, includeIfNull: false)
  final DateTime? afternoonShiftStart;
  @override
  @JsonKey(nullable: true, includeIfNull: false)
  final DateTime? afternoonShiftEnd;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TimekeepingDto._(date: $date, morningShiftStart: $morningShiftStart, morningShiftEnd: $morningShiftEnd, afternoonShiftStart: $afternoonShiftStart, afternoonShiftEnd: $afternoonShiftEnd)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TimekeepingDto._'))
      ..add(DiagnosticsProperty('date', date))
      ..add(DiagnosticsProperty('morningShiftStart', morningShiftStart))
      ..add(DiagnosticsProperty('morningShiftEnd', morningShiftEnd))
      ..add(DiagnosticsProperty('afternoonShiftStart', afternoonShiftStart))
      ..add(DiagnosticsProperty('afternoonShiftEnd', afternoonShiftEnd));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TimekeepingDto &&
            const DeepCollectionEquality().equals(other.date, date) &&
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
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(morningShiftStart),
      const DeepCollectionEquality().hash(morningShiftEnd),
      const DeepCollectionEquality().hash(afternoonShiftStart),
      const DeepCollectionEquality().hash(afternoonShiftEnd));

  @JsonKey(ignore: true)
  @override
  _$$_TimekeepingDtoCopyWith<_$_TimekeepingDto> get copyWith =>
      __$$_TimekeepingDtoCopyWithImpl<_$_TimekeepingDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TimekeepingDtoToJson(this);
  }
}

abstract class _TimekeepingDto implements TimekeepingDto {
  const factory _TimekeepingDto(
      {required final DateTime date,
      @JsonKey(nullable: true, includeIfNull: false)
          required final DateTime? morningShiftStart,
      @JsonKey(nullable: true, includeIfNull: false)
          required final DateTime? morningShiftEnd,
      @JsonKey(nullable: true, includeIfNull: false)
          required final DateTime? afternoonShiftStart,
      @JsonKey(nullable: true, includeIfNull: false)
          required final DateTime? afternoonShiftEnd}) = _$_TimekeepingDto;

  factory _TimekeepingDto.fromJson(Map<String, dynamic> json) =
      _$_TimekeepingDto.fromJson;

  @override
  DateTime get date => throw _privateConstructorUsedError;
  @override
  @JsonKey(nullable: true, includeIfNull: false)
  DateTime? get morningShiftStart => throw _privateConstructorUsedError;
  @override
  @JsonKey(nullable: true, includeIfNull: false)
  DateTime? get morningShiftEnd => throw _privateConstructorUsedError;
  @override
  @JsonKey(nullable: true, includeIfNull: false)
  DateTime? get afternoonShiftStart => throw _privateConstructorUsedError;
  @override
  @JsonKey(nullable: true, includeIfNull: false)
  DateTime? get afternoonShiftEnd => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TimekeepingDtoCopyWith<_$_TimekeepingDto> get copyWith =>
      throw _privateConstructorUsedError;
}
