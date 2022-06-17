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
  switch (json['runtimeType']) {
    case 'ill':
      return Ill.fromJson(json);
    case 'personal':
      return Personal.fromJson(json);
    case 'others':
      return Others.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'Reason',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$Reason {
  String get value => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) ill,
    required TResult Function(String value) personal,
    required TResult Function(String value) others,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? ill,
    TResult Function(String value)? personal,
    TResult Function(String value)? others,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? ill,
    TResult Function(String value)? personal,
    TResult Function(String value)? others,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ill value) ill,
    required TResult Function(Personal value) personal,
    required TResult Function(Others value) others,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Ill value)? ill,
    TResult Function(Personal value)? personal,
    TResult Function(Others value)? others,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ill value)? ill,
    TResult Function(Personal value)? personal,
    TResult Function(Others value)? others,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReasonCopyWith<Reason> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReasonCopyWith<$Res> {
  factory $ReasonCopyWith(Reason value, $Res Function(Reason) then) =
      _$ReasonCopyWithImpl<$Res>;
  $Res call({String value});
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
abstract class _$$IllCopyWith<$Res> implements $ReasonCopyWith<$Res> {
  factory _$$IllCopyWith(_$Ill value, $Res Function(_$Ill) then) =
      __$$IllCopyWithImpl<$Res>;
  @override
  $Res call({String value});
}

/// @nodoc
class __$$IllCopyWithImpl<$Res> extends _$ReasonCopyWithImpl<$Res>
    implements _$$IllCopyWith<$Res> {
  __$$IllCopyWithImpl(_$Ill _value, $Res Function(_$Ill) _then)
      : super(_value, (v) => _then(v as _$Ill));

  @override
  _$Ill get _value => super._value as _$Ill;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$Ill(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$Ill with DiagnosticableTreeMixin implements Ill {
  const _$Ill({this.value = 'bệnh', final String? $type})
      : $type = $type ?? 'ill';

  factory _$Ill.fromJson(Map<String, dynamic> json) => _$$IllFromJson(json);

  @override
  @JsonKey()
  final String value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Reason.ill(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Reason.ill'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Ill &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$IllCopyWith<_$Ill> get copyWith =>
      __$$IllCopyWithImpl<_$Ill>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) ill,
    required TResult Function(String value) personal,
    required TResult Function(String value) others,
  }) {
    return ill(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? ill,
    TResult Function(String value)? personal,
    TResult Function(String value)? others,
  }) {
    return ill?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? ill,
    TResult Function(String value)? personal,
    TResult Function(String value)? others,
    required TResult orElse(),
  }) {
    if (ill != null) {
      return ill(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ill value) ill,
    required TResult Function(Personal value) personal,
    required TResult Function(Others value) others,
  }) {
    return ill(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Ill value)? ill,
    TResult Function(Personal value)? personal,
    TResult Function(Others value)? others,
  }) {
    return ill?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ill value)? ill,
    TResult Function(Personal value)? personal,
    TResult Function(Others value)? others,
    required TResult orElse(),
  }) {
    if (ill != null) {
      return ill(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$IllToJson(this);
  }
}

abstract class Ill implements Reason {
  const factory Ill({final String value}) = _$Ill;

  factory Ill.fromJson(Map<String, dynamic> json) = _$Ill.fromJson;

  @override
  String get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$IllCopyWith<_$Ill> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PersonalCopyWith<$Res> implements $ReasonCopyWith<$Res> {
  factory _$$PersonalCopyWith(
          _$Personal value, $Res Function(_$Personal) then) =
      __$$PersonalCopyWithImpl<$Res>;
  @override
  $Res call({String value});
}

/// @nodoc
class __$$PersonalCopyWithImpl<$Res> extends _$ReasonCopyWithImpl<$Res>
    implements _$$PersonalCopyWith<$Res> {
  __$$PersonalCopyWithImpl(_$Personal _value, $Res Function(_$Personal) _then)
      : super(_value, (v) => _then(v as _$Personal));

  @override
  _$Personal get _value => super._value as _$Personal;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$Personal(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Personal with DiagnosticableTreeMixin implements Personal {
  const _$Personal({this.value = 'cá nhân', final String? $type})
      : $type = $type ?? 'personal';

  factory _$Personal.fromJson(Map<String, dynamic> json) =>
      _$$PersonalFromJson(json);

  @override
  @JsonKey()
  final String value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Reason.personal(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Reason.personal'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Personal &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$PersonalCopyWith<_$Personal> get copyWith =>
      __$$PersonalCopyWithImpl<_$Personal>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) ill,
    required TResult Function(String value) personal,
    required TResult Function(String value) others,
  }) {
    return personal(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? ill,
    TResult Function(String value)? personal,
    TResult Function(String value)? others,
  }) {
    return personal?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? ill,
    TResult Function(String value)? personal,
    TResult Function(String value)? others,
    required TResult orElse(),
  }) {
    if (personal != null) {
      return personal(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ill value) ill,
    required TResult Function(Personal value) personal,
    required TResult Function(Others value) others,
  }) {
    return personal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Ill value)? ill,
    TResult Function(Personal value)? personal,
    TResult Function(Others value)? others,
  }) {
    return personal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ill value)? ill,
    TResult Function(Personal value)? personal,
    TResult Function(Others value)? others,
    required TResult orElse(),
  }) {
    if (personal != null) {
      return personal(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PersonalToJson(this);
  }
}

abstract class Personal implements Reason {
  const factory Personal({final String value}) = _$Personal;

  factory Personal.fromJson(Map<String, dynamic> json) = _$Personal.fromJson;

  @override
  String get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$PersonalCopyWith<_$Personal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OthersCopyWith<$Res> implements $ReasonCopyWith<$Res> {
  factory _$$OthersCopyWith(_$Others value, $Res Function(_$Others) then) =
      __$$OthersCopyWithImpl<$Res>;
  @override
  $Res call({String value});
}

/// @nodoc
class __$$OthersCopyWithImpl<$Res> extends _$ReasonCopyWithImpl<$Res>
    implements _$$OthersCopyWith<$Res> {
  __$$OthersCopyWithImpl(_$Others _value, $Res Function(_$Others) _then)
      : super(_value, (v) => _then(v as _$Others));

  @override
  _$Others get _value => super._value as _$Others;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$Others(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Others with DiagnosticableTreeMixin implements Others {
  const _$Others({this.value = 'khác', final String? $type})
      : $type = $type ?? 'others';

  factory _$Others.fromJson(Map<String, dynamic> json) =>
      _$$OthersFromJson(json);

  @override
  @JsonKey()
  final String value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Reason.others(value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Reason.others'))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Others &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$OthersCopyWith<_$Others> get copyWith =>
      __$$OthersCopyWithImpl<_$Others>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String value) ill,
    required TResult Function(String value) personal,
    required TResult Function(String value) others,
  }) {
    return others(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String value)? ill,
    TResult Function(String value)? personal,
    TResult Function(String value)? others,
  }) {
    return others?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String value)? ill,
    TResult Function(String value)? personal,
    TResult Function(String value)? others,
    required TResult orElse(),
  }) {
    if (others != null) {
      return others(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Ill value) ill,
    required TResult Function(Personal value) personal,
    required TResult Function(Others value) others,
  }) {
    return others(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Ill value)? ill,
    TResult Function(Personal value)? personal,
    TResult Function(Others value)? others,
  }) {
    return others?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Ill value)? ill,
    TResult Function(Personal value)? personal,
    TResult Function(Others value)? others,
    required TResult orElse(),
  }) {
    if (others != null) {
      return others(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OthersToJson(this);
  }
}

abstract class Others implements Reason {
  const factory Others({final String value}) = _$Others;

  factory Others.fromJson(Map<String, dynamic> json) = _$Others.fromJson;

  @override
  String get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$OthersCopyWith<_$Others> get copyWith =>
      throw _privateConstructorUsedError;
}
