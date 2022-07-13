// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'employee_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EmployeeDto _$EmployeeDtoFromJson(Map<String, dynamic> json) {
  return _EmployeeDto.fromJson(json);
}

/// @nodoc
mixin _$EmployeeDto {
  int get id => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Gender get gender => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  @JsonKey(fromJson: avatarFromJson)
  String? get avatar => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmployeeDtoCopyWith<EmployeeDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeDtoCopyWith<$Res> {
  factory $EmployeeDtoCopyWith(
          EmployeeDto value, $Res Function(EmployeeDto) then) =
      _$EmployeeDtoCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String code,
      String name,
      Gender gender,
      String phoneNumber,
      String address,
      @JsonKey(fromJson: avatarFromJson) String? avatar,
      DateTime startDate});
}

/// @nodoc
class _$EmployeeDtoCopyWithImpl<$Res> implements $EmployeeDtoCopyWith<$Res> {
  _$EmployeeDtoCopyWithImpl(this._value, this._then);

  final EmployeeDto _value;
  // ignore: unused_field
  final $Res Function(EmployeeDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? name = freezed,
    Object? gender = freezed,
    Object? phoneNumber = freezed,
    Object? address = freezed,
    Object? avatar = freezed,
    Object? startDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$$_EmployeeDtoCopyWith<$Res>
    implements $EmployeeDtoCopyWith<$Res> {
  factory _$$_EmployeeDtoCopyWith(
          _$_EmployeeDto value, $Res Function(_$_EmployeeDto) then) =
      __$$_EmployeeDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String code,
      String name,
      Gender gender,
      String phoneNumber,
      String address,
      @JsonKey(fromJson: avatarFromJson) String? avatar,
      DateTime startDate});
}

/// @nodoc
class __$$_EmployeeDtoCopyWithImpl<$Res> extends _$EmployeeDtoCopyWithImpl<$Res>
    implements _$$_EmployeeDtoCopyWith<$Res> {
  __$$_EmployeeDtoCopyWithImpl(
      _$_EmployeeDto _value, $Res Function(_$_EmployeeDto) _then)
      : super(_value, (v) => _then(v as _$_EmployeeDto));

  @override
  _$_EmployeeDto get _value => super._value as _$_EmployeeDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? code = freezed,
    Object? name = freezed,
    Object? gender = freezed,
    Object? phoneNumber = freezed,
    Object? address = freezed,
    Object? avatar = freezed,
    Object? startDate = freezed,
  }) {
    return _then(_$_EmployeeDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as Gender,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

@JsonSerializable(
    fieldRename: FieldRename.snake, explicitToJson: true, includeIfNull: false)
class _$_EmployeeDto with DiagnosticableTreeMixin implements _EmployeeDto {
  const _$_EmployeeDto(
      {required this.id,
      required this.code,
      required this.name,
      required this.gender,
      required this.phoneNumber,
      required this.address,
      @JsonKey(fromJson: avatarFromJson) required this.avatar,
      required this.startDate});

  factory _$_EmployeeDto.fromJson(Map<String, dynamic> json) =>
      _$$_EmployeeDtoFromJson(json);

  @override
  final int id;
  @override
  final String code;
  @override
  final String name;
  @override
  final Gender gender;
  @override
  final String phoneNumber;
  @override
  final String address;
  @override
  @JsonKey(fromJson: avatarFromJson)
  final String? avatar;
  @override
  final DateTime startDate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EmployeeDto(id: $id, code: $code, name: $name, gender: $gender, phoneNumber: $phoneNumber, address: $address, avatar: $avatar, startDate: $startDate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EmployeeDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('gender', gender))
      ..add(DiagnosticsProperty('phoneNumber', phoneNumber))
      ..add(DiagnosticsProperty('address', address))
      ..add(DiagnosticsProperty('avatar', avatar))
      ..add(DiagnosticsProperty('startDate', startDate));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EmployeeDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.code, code) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.gender, gender) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.avatar, avatar) &&
            const DeepCollectionEquality().equals(other.startDate, startDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(code),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(gender),
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(avatar),
      const DeepCollectionEquality().hash(startDate));

  @JsonKey(ignore: true)
  @override
  _$$_EmployeeDtoCopyWith<_$_EmployeeDto> get copyWith =>
      __$$_EmployeeDtoCopyWithImpl<_$_EmployeeDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmployeeDtoToJson(this);
  }
}

abstract class _EmployeeDto implements EmployeeDto {
  const factory _EmployeeDto(
      {required final int id,
      required final String code,
      required final String name,
      required final Gender gender,
      required final String phoneNumber,
      required final String address,
      @JsonKey(fromJson: avatarFromJson) required final String? avatar,
      required final DateTime startDate}) = _$_EmployeeDto;

  factory _EmployeeDto.fromJson(Map<String, dynamic> json) =
      _$_EmployeeDto.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get code => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  Gender get gender => throw _privateConstructorUsedError;
  @override
  String get phoneNumber => throw _privateConstructorUsedError;
  @override
  String get address => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: avatarFromJson)
  String? get avatar => throw _privateConstructorUsedError;
  @override
  DateTime get startDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_EmployeeDtoCopyWith<_$_EmployeeDto> get copyWith =>
      throw _privateConstructorUsedError;
}
