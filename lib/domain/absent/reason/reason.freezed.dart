// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'reason.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Reason _$ReasonFromJson(Map<String, dynamic> json) {
  return _Reason.fromJson(json);
}

/// @nodoc
mixin _$Reason {
  @JsonKey(name: 'reason')
  String get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReasonCopyWith<Reason> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReasonCopyWith<$Res> {
  factory $ReasonCopyWith(Reason value, $Res Function(Reason) then) =
      _$ReasonCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'reason') String value});
}

/// @nodoc
class _$ReasonCopyWithImpl<$Res> implements $ReasonCopyWith<$Res> {
  _$ReasonCopyWithImpl(this._value, this._then);

  final Reason _value;
  // ignore: unused_field
  final $Res Function(Reason) _then;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ReasonCopyWith<$Res> implements $ReasonCopyWith<$Res> {
  factory _$$_ReasonCopyWith(_$_Reason value, $Res Function(_$_Reason) then) =
      __$$_ReasonCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'reason') String value});
}

/// @nodoc
class __$$_ReasonCopyWithImpl<$Res> extends _$ReasonCopyWithImpl<$Res>
    implements _$$_ReasonCopyWith<$Res> {
  __$$_ReasonCopyWithImpl(_$_Reason _value, $Res Function(_$_Reason) _then)
      : super(_value, (v) => _then(v as _$_Reason));

  @override
  _$_Reason get _value => super._value as _$_Reason;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_Reason(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_Reason with DiagnosticableTreeMixin implements _Reason {
  const _$_Reason({@JsonKey(name: 'reason') required this.value});

  factory _$_Reason.fromJson(Map<String, dynamic> json) =>
      _$$_ReasonFromJson(json);

  @override
  @JsonKey(name: 'reason')
  final String value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Reason(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Reason'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Reason &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_ReasonCopyWith<_$_Reason> get copyWith =>
      __$$_ReasonCopyWithImpl<_$_Reason>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReasonToJson(this);
  }
}

abstract class _Reason implements Reason {
  const factory _Reason(
      {@JsonKey(name: 'reason') required final String value}) = _$_Reason;

  factory _Reason.fromJson(Map<String, dynamic> json) = _$_Reason.fromJson;

  @override
  @JsonKey(name: 'reason')
  String get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ReasonCopyWith<_$_Reason> get copyWith =>
      throw _privateConstructorUsedError;
}
