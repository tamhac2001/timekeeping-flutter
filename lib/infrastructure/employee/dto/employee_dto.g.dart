// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EmployeeDto _$$_EmployeeDtoFromJson(Map<String, dynamic> json) =>
    _$_EmployeeDto(
      id: json['id'] as int,
      code: json['code'] as String,
      name: json['name'] as String,
      gender: $enumDecode(_$GenderEnumMap, json['gender']),
      phoneNumber: json['phone_number'] as String,
      address: json['address'] as String,
      avatar: json['avatar'] as String?,
      startDate: DateTime.parse(json['start_date'] as String),
    );

Map<String, dynamic> _$$_EmployeeDtoToJson(_$_EmployeeDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'name': instance.name,
      'gender': _$GenderEnumMap[instance.gender],
      'phone_number': instance.phoneNumber,
      'address': instance.address,
      'avatar': instance.avatar,
      'start_date': instance.startDate.toIso8601String(),
    };

const _$GenderEnumMap = {
  Gender.male: 'male',
  Gender.female: 'female',
  Gender.others: 'others',
};
