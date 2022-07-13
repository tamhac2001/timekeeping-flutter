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
    required TResult Function(_Ill value) ill,
    required TResult Function(_Personal value) personal,
    required TResult Function(_Others value) others,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Ill value)? ill,
    TResult Function(_Personal value)? personal,
    TResult Function(_Others value)? others,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Ill value)? ill,
    TResult Function(_Personal value)? personal,
    TResult Function(_Others value)? others,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

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
abstract class _$$_IllCopyWith<$Res> implements $ReasonCopyWith<$Res> {
  factory _$$_IllCopyWith(_$_Ill value, $Res Function(_$_Ill) then) =
      __$$_IllCopyWithImpl<$Res>;
  @override
  $Res call({String value});
}

/// @nodoc
class __$$_IllCopyWithImpl<$Res> extends _$ReasonCopyWithImpl<$Res>
    implements _$$_IllCopyWith<$Res> {
  __$$_IllCopyWithImpl(_$_Ill _value, $Res Function(_$_Ill) _then)
      : super(_value, (v) => _then(v as _$_Ill));

  @override
  _$_Ill get _value => super._value as _$_Ill;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_Ill(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Ill with DiagnosticableTreeMixin implements _Ill {
  const _$_Ill({this.value = 'bệnh'});

  @override
  @JsonKey()
  final String value;

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
            other is _$_Ill &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_IllCopyWith<_$_Ill> get copyWith =>
      __$$_IllCopyWithImpl<_$_Ill>(this, _$identity);

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
    required TResult Function(_Ill value) ill,
    required TResult Function(_Personal value) personal,
    required TResult Function(_Others value) others,
  }) {
    return ill(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Ill value)? ill,
    TResult Function(_Personal value)? personal,
    TResult Function(_Others value)? others,
  }) {
    return ill?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Ill value)? ill,
    TResult Function(_Personal value)? personal,
    TResult Function(_Others value)? others,
    required TResult orElse(),
  }) {
    if (ill != null) {
      return ill(this);
    }
    return orElse();
  }
}

abstract class _Ill implements Reason {
  const factory _Ill({final String value}) = _$_Ill;

  @override
  String get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_IllCopyWith<_$_Ill> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PersonalCopyWith<$Res> implements $ReasonCopyWith<$Res> {
  factory _$$_PersonalCopyWith(
          _$_Personal value, $Res Function(_$_Personal) then) =
      __$$_PersonalCopyWithImpl<$Res>;
  @override
  $Res call({String value});
}

/// @nodoc
class __$$_PersonalCopyWithImpl<$Res> extends _$ReasonCopyWithImpl<$Res>
    implements _$$_PersonalCopyWith<$Res> {
  __$$_PersonalCopyWithImpl(
      _$_Personal _value, $Res Function(_$_Personal) _then)
      : super(_value, (v) => _then(v as _$_Personal));

  @override
  _$_Personal get _value => super._value as _$_Personal;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_Personal(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Personal with DiagnosticableTreeMixin implements _Personal {
  const _$_Personal({this.value = 'cá nhân'});

  @override
  @JsonKey()
  final String value;

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
            other is _$_Personal &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_PersonalCopyWith<_$_Personal> get copyWith =>
      __$$_PersonalCopyWithImpl<_$_Personal>(this, _$identity);

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
    required TResult Function(_Ill value) ill,
    required TResult Function(_Personal value) personal,
    required TResult Function(_Others value) others,
  }) {
    return personal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Ill value)? ill,
    TResult Function(_Personal value)? personal,
    TResult Function(_Others value)? others,
  }) {
    return personal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Ill value)? ill,
    TResult Function(_Personal value)? personal,
    TResult Function(_Others value)? others,
    required TResult orElse(),
  }) {
    if (personal != null) {
      return personal(this);
    }
    return orElse();
  }
}

abstract class _Personal implements Reason {
  const factory _Personal({final String value}) = _$_Personal;

  @override
  String get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_PersonalCopyWith<_$_Personal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OthersCopyWith<$Res> implements $ReasonCopyWith<$Res> {
  factory _$$_OthersCopyWith(_$_Others value, $Res Function(_$_Others) then) =
      __$$_OthersCopyWithImpl<$Res>;
  @override
  $Res call({String value});
}

/// @nodoc
class __$$_OthersCopyWithImpl<$Res> extends _$ReasonCopyWithImpl<$Res>
    implements _$$_OthersCopyWith<$Res> {
  __$$_OthersCopyWithImpl(_$_Others _value, $Res Function(_$_Others) _then)
      : super(_value, (v) => _then(v as _$_Others));

  @override
  _$_Others get _value => super._value as _$_Others;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_Others(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Others with DiagnosticableTreeMixin implements _Others {
  const _$_Others({this.value = 'khác'});

  @override
  @JsonKey()
  final String value;

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
            other is _$_Others &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$$_OthersCopyWith<_$_Others> get copyWith =>
      __$$_OthersCopyWithImpl<_$_Others>(this, _$identity);

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
    required TResult Function(_Ill value) ill,
    required TResult Function(_Personal value) personal,
    required TResult Function(_Others value) others,
  }) {
    return others(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Ill value)? ill,
    TResult Function(_Personal value)? personal,
    TResult Function(_Others value)? others,
  }) {
    return others?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Ill value)? ill,
    TResult Function(_Personal value)? personal,
    TResult Function(_Others value)? others,
    required TResult orElse(),
  }) {
    if (others != null) {
      return others(this);
    }
    return orElse();
  }
}

abstract class _Others implements Reason {
  const factory _Others({final String value}) = _$_Others;

  @override
  String get value => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_OthersCopyWith<_$_Others> get copyWith =>
      throw _privateConstructorUsedError;
}
