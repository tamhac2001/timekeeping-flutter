// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'qr_code_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QrCodeDto _$QrCodeDtoFromJson(Map<String, dynamic> json) {
  return _QrCodeDto.fromJson(json);
}

/// @nodoc
mixin _$QrCodeDto {
  String get qrCodeValue => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QrCodeDtoCopyWith<QrCodeDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QrCodeDtoCopyWith<$Res> {
  factory $QrCodeDtoCopyWith(QrCodeDto value, $Res Function(QrCodeDto) then) =
      _$QrCodeDtoCopyWithImpl<$Res>;
  $Res call({String qrCodeValue});
}

/// @nodoc
class _$QrCodeDtoCopyWithImpl<$Res> implements $QrCodeDtoCopyWith<$Res> {
  _$QrCodeDtoCopyWithImpl(this._value, this._then);

  final QrCodeDto _value;
  // ignore: unused_field
  final $Res Function(QrCodeDto) _then;

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
abstract class _$$_QrCodeDtoCopyWith<$Res> implements $QrCodeDtoCopyWith<$Res> {
  factory _$$_QrCodeDtoCopyWith(
          _$_QrCodeDto value, $Res Function(_$_QrCodeDto) then) =
      __$$_QrCodeDtoCopyWithImpl<$Res>;
  @override
  $Res call({String qrCodeValue});
}

/// @nodoc
class __$$_QrCodeDtoCopyWithImpl<$Res> extends _$QrCodeDtoCopyWithImpl<$Res>
    implements _$$_QrCodeDtoCopyWith<$Res> {
  __$$_QrCodeDtoCopyWithImpl(
      _$_QrCodeDto _value, $Res Function(_$_QrCodeDto) _then)
      : super(_value, (v) => _then(v as _$_QrCodeDto));

  @override
  _$_QrCodeDto get _value => super._value as _$_QrCodeDto;

  @override
  $Res call({
    Object? qrCodeValue = freezed,
  }) {
    return _then(_$_QrCodeDto(
      qrCodeValue: qrCodeValue == freezed
          ? _value.qrCodeValue
          : qrCodeValue // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_QrCodeDto with DiagnosticableTreeMixin implements _QrCodeDto {
  const _$_QrCodeDto({required this.qrCodeValue});

  factory _$_QrCodeDto.fromJson(Map<String, dynamic> json) =>
      _$$_QrCodeDtoFromJson(json);

  @override
  final String qrCodeValue;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'QrCodeDto(qrCodeValue: $qrCodeValue)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'QrCodeDto'))
      ..add(DiagnosticsProperty('qrCodeValue', qrCodeValue));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QrCodeDto &&
            const DeepCollectionEquality()
                .equals(other.qrCodeValue, qrCodeValue));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(qrCodeValue));

  @JsonKey(ignore: true)
  @override
  _$$_QrCodeDtoCopyWith<_$_QrCodeDto> get copyWith =>
      __$$_QrCodeDtoCopyWithImpl<_$_QrCodeDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QrCodeDtoToJson(this);
  }
}

abstract class _QrCodeDto implements QrCodeDto {
  const factory _QrCodeDto({required final String qrCodeValue}) = _$_QrCodeDto;

  factory _QrCodeDto.fromJson(Map<String, dynamic> json) =
      _$_QrCodeDto.fromJson;

  @override
  String get qrCodeValue => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_QrCodeDtoCopyWith<_$_QrCodeDto> get copyWith =>
      throw _privateConstructorUsedError;
}
