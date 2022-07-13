// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'absent_form_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AbsentFormDto _$AbsentFormDtoFromJson(Map<String, dynamic> json) {
  return _AbsentFormDto.fromJson(json);
}

/// @nodoc
mixin _$AbsentFormDto {
  DateTime get startDate => throw _privateConstructorUsedError;
  DateTime get endDate => throw _privateConstructorUsedError;
  String get reason => throw _privateConstructorUsedError;
  String get note => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  int? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AbsentFormDtoCopyWith<AbsentFormDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AbsentFormDtoCopyWith<$Res> {
  factory $AbsentFormDtoCopyWith(
          AbsentFormDto value, $Res Function(AbsentFormDto) then) =
      _$AbsentFormDtoCopyWithImpl<$Res>;
  $Res call(
      {DateTime startDate,
      DateTime endDate,
      String reason,
      String note,
      @JsonKey(includeIfNull: false) int? status});
}

/// @nodoc
class _$AbsentFormDtoCopyWithImpl<$Res>
    implements $AbsentFormDtoCopyWith<$Res> {
  _$AbsentFormDtoCopyWithImpl(this._value, this._then);

  final AbsentFormDto _value;
  // ignore: unused_field
  final $Res Function(AbsentFormDto) _then;

  @override
  $Res call({
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? reason = freezed,
    Object? note = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      reason: reason == freezed
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_AbsentFormDtoCopyWith<$Res>
    implements $AbsentFormDtoCopyWith<$Res> {
  factory _$$_AbsentFormDtoCopyWith(
          _$_AbsentFormDto value, $Res Function(_$_AbsentFormDto) then) =
      __$$_AbsentFormDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {DateTime startDate,
      DateTime endDate,
      String reason,
      String note,
      @JsonKey(includeIfNull: false) int? status});
}

/// @nodoc
class __$$_AbsentFormDtoCopyWithImpl<$Res>
    extends _$AbsentFormDtoCopyWithImpl<$Res>
    implements _$$_AbsentFormDtoCopyWith<$Res> {
  __$$_AbsentFormDtoCopyWithImpl(
      _$_AbsentFormDto _value, $Res Function(_$_AbsentFormDto) _then)
      : super(_value, (v) => _then(v as _$_AbsentFormDto));

  @override
  _$_AbsentFormDto get _value => super._value as _$_AbsentFormDto;

  @override
  $Res call({
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? reason = freezed,
    Object? note = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_AbsentFormDto(
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      reason: reason == freezed
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_AbsentFormDto with DiagnosticableTreeMixin implements _AbsentFormDto {
  const _$_AbsentFormDto(
      {required this.startDate,
      required this.endDate,
      required this.reason,
      required this.note,
      @JsonKey(includeIfNull: false) required this.status});

  factory _$_AbsentFormDto.fromJson(Map<String, dynamic> json) =>
      _$$_AbsentFormDtoFromJson(json);

  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final String reason;
  @override
  final String note;
  @override
  @JsonKey(includeIfNull: false)
  final int? status;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AbsentFormDto(startDate: $startDate, endDate: $endDate, reason: $reason, note: $note, status: $status)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AbsentFormDto'))
      ..add(DiagnosticsProperty('startDate', startDate))
      ..add(DiagnosticsProperty('endDate', endDate))
      ..add(DiagnosticsProperty('reason', reason))
      ..add(DiagnosticsProperty('note', note))
      ..add(DiagnosticsProperty('status', status));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AbsentFormDto &&
            const DeepCollectionEquality().equals(other.startDate, startDate) &&
            const DeepCollectionEquality().equals(other.endDate, endDate) &&
            const DeepCollectionEquality().equals(other.reason, reason) &&
            const DeepCollectionEquality().equals(other.note, note) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(startDate),
      const DeepCollectionEquality().hash(endDate),
      const DeepCollectionEquality().hash(reason),
      const DeepCollectionEquality().hash(note),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$$_AbsentFormDtoCopyWith<_$_AbsentFormDto> get copyWith =>
      __$$_AbsentFormDtoCopyWithImpl<_$_AbsentFormDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AbsentFormDtoToJson(this);
  }
}

abstract class _AbsentFormDto implements AbsentFormDto {
  const factory _AbsentFormDto(
          {required final DateTime startDate,
          required final DateTime endDate,
          required final String reason,
          required final String note,
          @JsonKey(includeIfNull: false) required final int? status}) =
      _$_AbsentFormDto;

  factory _AbsentFormDto.fromJson(Map<String, dynamic> json) =
      _$_AbsentFormDto.fromJson;

  @override
  DateTime get startDate => throw _privateConstructorUsedError;
  @override
  DateTime get endDate => throw _privateConstructorUsedError;
  @override
  String get reason => throw _privateConstructorUsedError;
  @override
  String get note => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false)
  int? get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AbsentFormDtoCopyWith<_$_AbsentFormDto> get copyWith =>
      throw _privateConstructorUsedError;
}
