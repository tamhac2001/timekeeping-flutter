// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthDTO _$AuthDTOFromJson(Map<String, dynamic> json) {
  return _AuthDTO.fromJson(json);
}

/// @nodoc
mixin _$AuthDTO {
  @JsonKey(includeIfNull: false)
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get password => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get accessToken => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  DateTime? get expireDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthDTOCopyWith<AuthDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthDTOCopyWith<$Res> {
  factory $AuthDTOCopyWith(AuthDTO value, $Res Function(AuthDTO) then) =
      _$AuthDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(includeIfNull: false) String? email,
      @JsonKey(includeIfNull: false) String? password,
      @JsonKey(includeIfNull: false) String? accessToken,
      @JsonKey(includeIfNull: false) DateTime? expireDate});
}

/// @nodoc
class _$AuthDTOCopyWithImpl<$Res> implements $AuthDTOCopyWith<$Res> {
  _$AuthDTOCopyWithImpl(this._value, this._then);

  final AuthDTO _value;
  // ignore: unused_field
  final $Res Function(AuthDTO) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? accessToken = freezed,
    Object? expireDate = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      expireDate: expireDate == freezed
          ? _value.expireDate
          : expireDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$$_AuthDTOCopyWith<$Res> implements $AuthDTOCopyWith<$Res> {
  factory _$$_AuthDTOCopyWith(
          _$_AuthDTO value, $Res Function(_$_AuthDTO) then) =
      __$$_AuthDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(includeIfNull: false) String? email,
      @JsonKey(includeIfNull: false) String? password,
      @JsonKey(includeIfNull: false) String? accessToken,
      @JsonKey(includeIfNull: false) DateTime? expireDate});
}

/// @nodoc
class __$$_AuthDTOCopyWithImpl<$Res> extends _$AuthDTOCopyWithImpl<$Res>
    implements _$$_AuthDTOCopyWith<$Res> {
  __$$_AuthDTOCopyWithImpl(_$_AuthDTO _value, $Res Function(_$_AuthDTO) _then)
      : super(_value, (v) => _then(v as _$_AuthDTO));

  @override
  _$_AuthDTO get _value => super._value as _$_AuthDTO;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? accessToken = freezed,
    Object? expireDate = freezed,
  }) {
    return _then(_$_AuthDTO(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      expireDate: expireDate == freezed
          ? _value.expireDate
          : expireDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_AuthDTO with DiagnosticableTreeMixin implements _AuthDTO {
  const _$_AuthDTO(
      {@JsonKey(includeIfNull: false) this.email,
      @JsonKey(includeIfNull: false) this.password,
      @JsonKey(includeIfNull: false) this.accessToken,
      @JsonKey(includeIfNull: false) this.expireDate});

  factory _$_AuthDTO.fromJson(Map<String, dynamic> json) =>
      _$$_AuthDTOFromJson(json);

  @override
  @JsonKey(includeIfNull: false)
  final String? email;
  @override
  @JsonKey(includeIfNull: false)
  final String? password;
  @override
  @JsonKey(includeIfNull: false)
  final String? accessToken;
  @override
  @JsonKey(includeIfNull: false)
  final DateTime? expireDate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthDTO(email: $email, password: $password, accessToken: $accessToken, expireDate: $expireDate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthDTO'))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('password', password))
      ..add(DiagnosticsProperty('accessToken', accessToken))
      ..add(DiagnosticsProperty('expireDate', expireDate));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthDTO &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.accessToken, accessToken) &&
            const DeepCollectionEquality()
                .equals(other.expireDate, expireDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(accessToken),
      const DeepCollectionEquality().hash(expireDate));

  @JsonKey(ignore: true)
  @override
  _$$_AuthDTOCopyWith<_$_AuthDTO> get copyWith =>
      __$$_AuthDTOCopyWithImpl<_$_AuthDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthDTOToJson(this);
  }
}

abstract class _AuthDTO implements AuthDTO {
  const factory _AuthDTO(
      {@JsonKey(includeIfNull: false) final String? email,
      @JsonKey(includeIfNull: false) final String? password,
      @JsonKey(includeIfNull: false) final String? accessToken,
      @JsonKey(includeIfNull: false) final DateTime? expireDate}) = _$_AuthDTO;

  factory _AuthDTO.fromJson(Map<String, dynamic> json) = _$_AuthDTO.fromJson;

  @override
  @JsonKey(includeIfNull: false)
  String? get email => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false)
  String? get password => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false)
  String? get accessToken => throw _privateConstructorUsedError;
  @override
  @JsonKey(includeIfNull: false)
  DateTime? get expireDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AuthDTOCopyWith<_$_AuthDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
