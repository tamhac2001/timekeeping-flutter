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
  String get qrCodeValue => throw _privateConstructorUsedError;

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
  $Res call({String qrCodeValue});
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
    Object? qrCodeValue = freezed,
  }) {
    return _then(_value.copyWith(
      qrCodeValue: qrCodeValue == freezed
          ? _value.qrCodeValue
          : qrCodeValue // ignore: cast_nullable_to_non_nullable
              as String,
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
  $Res call({String qrCodeValue});
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
    Object? qrCodeValue = freezed,
  }) {
    return _then(_$_TimekeepingDto(
      qrCodeValue: qrCodeValue == freezed
          ? _value.qrCodeValue
          : qrCodeValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_TimekeepingDto
    with DiagnosticableTreeMixin
    implements _TimekeepingDto {
  const _$_TimekeepingDto({required this.qrCodeValue});

  factory _$_TimekeepingDto.fromJson(Map<String, dynamic> json) =>
      _$$_TimekeepingDtoFromJson(json);

  @override
  final String qrCodeValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TimekeepingDto(qrCodeValue: $qrCodeValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TimekeepingDto'))
      ..add(DiagnosticsProperty('qrCodeValue', qrCodeValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TimekeepingDto &&
            const DeepCollectionEquality()
                .equals(other.qrCodeValue, qrCodeValue));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(qrCodeValue));

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
  const factory _TimekeepingDto({required final String qrCodeValue}) =
      _$_TimekeepingDto;

  factory _TimekeepingDto.fromJson(Map<String, dynamic> json) =
      _$_TimekeepingDto.fromJson;

  @override
  String get qrCodeValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_TimekeepingDtoCopyWith<_$_TimekeepingDto> get copyWith =>
      throw _privateConstructorUsedError;
}
