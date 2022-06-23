// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'employee.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Employee {
  int get id => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Gender get gender => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  Uint8List? get avatar => throw _privateConstructorUsedError;
  DateTime get startDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmployeeCopyWith<Employee> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeCopyWith<$Res> {
  factory $EmployeeCopyWith(Employee value, $Res Function(Employee) then) =
      _$EmployeeCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String code,
      String name,
      Gender gender,
      String phoneNumber,
      String address,
      Uint8List? avatar,
      DateTime startDate});
}

/// @nodoc
class _$EmployeeCopyWithImpl<$Res> implements $EmployeeCopyWith<$Res> {
  _$EmployeeCopyWithImpl(this._value, this._then);

  final Employee _value;
  // ignore: unused_field
  final $Res Function(Employee) _then;

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
              as Uint8List?,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$$_EmployeeCopyWith<$Res> implements $EmployeeCopyWith<$Res> {
  factory _$$_EmployeeCopyWith(
          _$_Employee value, $Res Function(_$_Employee) then) =
      __$$_EmployeeCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String code,
      String name,
      Gender gender,
      String phoneNumber,
      String address,
      Uint8List? avatar,
      DateTime startDate});
}

/// @nodoc
class __$$_EmployeeCopyWithImpl<$Res> extends _$EmployeeCopyWithImpl<$Res>
    implements _$$_EmployeeCopyWith<$Res> {
  __$$_EmployeeCopyWithImpl(
      _$_Employee _value, $Res Function(_$_Employee) _then)
      : super(_value, (v) => _then(v as _$_Employee));

  @override
  _$_Employee get _value => super._value as _$_Employee;

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
    return _then(_$_Employee(
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
              as Uint8List?,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_Employee implements _Employee {
  const _$_Employee(
      {required this.id,
      required this.code,
      required this.name,
      required this.gender,
      required this.phoneNumber,
      required this.address,
      required this.avatar,
      required this.startDate});

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
  final Uint8List? avatar;
  @override
  final DateTime startDate;

  @override
  String toString() {
    return 'Employee(id: $id, code: $code, name: $name, gender: $gender, phoneNumber: $phoneNumber, address: $address, avatar: $avatar, startDate: $startDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Employee &&
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
  _$$_EmployeeCopyWith<_$_Employee> get copyWith =>
      __$$_EmployeeCopyWithImpl<_$_Employee>(this, _$identity);
}

abstract class _Employee implements Employee {
  const factory _Employee(
      {required final int id,
      required final String code,
      required final String name,
      required final Gender gender,
      required final String phoneNumber,
      required final String address,
      required final Uint8List? avatar,
      required final DateTime startDate}) = _$_Employee;

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
  Uint8List? get avatar => throw _privateConstructorUsedError;
  @override
  DateTime get startDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_EmployeeCopyWith<_$_Employee> get copyWith =>
      throw _privateConstructorUsedError;
}
