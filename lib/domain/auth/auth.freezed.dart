// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Auth {
  String get accessToken => throw _privateConstructorUsedError;
  DateTime get expireDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthCopyWith<Auth> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthCopyWith<$Res> {
  factory $AuthCopyWith(Auth value, $Res Function(Auth) then) =
      _$AuthCopyWithImpl<$Res>;
  $Res call({String accessToken, DateTime expireDate});
}

/// @nodoc
class _$AuthCopyWithImpl<$Res> implements $AuthCopyWith<$Res> {
  _$AuthCopyWithImpl(this._value, this._then);

  final Auth _value;
  // ignore: unused_field
  final $Res Function(Auth) _then;

  @override
  $Res call({
    Object? accessToken = freezed,
    Object? expireDate = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      expireDate: expireDate == freezed
          ? _value.expireDate
          : expireDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$$_AuthCopyWith<$Res> implements $AuthCopyWith<$Res> {
  factory _$$_AuthCopyWith(_$_Auth value, $Res Function(_$_Auth) then) =
      __$$_AuthCopyWithImpl<$Res>;
  @override
  $Res call({String accessToken, DateTime expireDate});
}

/// @nodoc
class __$$_AuthCopyWithImpl<$Res> extends _$AuthCopyWithImpl<$Res>
    implements _$$_AuthCopyWith<$Res> {
  __$$_AuthCopyWithImpl(_$_Auth _value, $Res Function(_$_Auth) _then)
      : super(_value, (v) => _then(v as _$_Auth));

  @override
  _$_Auth get _value => super._value as _$_Auth;

  @override
  $Res call({
    Object? accessToken = freezed,
    Object? expireDate = freezed,
  }) {
    return _then(_$_Auth(
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      expireDate: expireDate == freezed
          ? _value.expireDate
          : expireDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_Auth with DiagnosticableTreeMixin implements _Auth {
  const _$_Auth({required this.accessToken, required this.expireDate});

  @override
  final String accessToken;
  @override
  final DateTime expireDate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Auth(accessToken: $accessToken, expireDate: $expireDate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Auth'))
      ..add(DiagnosticsProperty('accessToken', accessToken))
      ..add(DiagnosticsProperty('expireDate', expireDate));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Auth &&
            const DeepCollectionEquality()
                .equals(other.accessToken, accessToken) &&
            const DeepCollectionEquality()
                .equals(other.expireDate, expireDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(accessToken),
      const DeepCollectionEquality().hash(expireDate));

  @JsonKey(ignore: true)
  @override
  _$$_AuthCopyWith<_$_Auth> get copyWith =>
      __$$_AuthCopyWithImpl<_$_Auth>(this, _$identity);
}

abstract class _Auth implements Auth {
  const factory _Auth(
      {required final String accessToken,
      required final DateTime expireDate}) = _$_Auth;

  @override
  String get accessToken => throw _privateConstructorUsedError;
  @override
  DateTime get expireDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AuthCopyWith<_$_Auth> get copyWith => throw _privateConstructorUsedError;
}
