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
      avatar: avatarFromJson(json['avatar'] as Map<String, dynamic>?),
      startDate: DateTime.parse(json['start_date'] as String),
    );

Map<String, dynamic> _$$_EmployeeDtoToJson(_$_EmployeeDto instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'code': instance.code,
    'name': instance.name,
    'gender': _$GenderEnumMap[instance.gender],
    'phone_number': instance.phoneNumber,
    'address': instance.address,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('avatar', instance.avatar);
  val['start_date'] = instance.startDate.toIso8601String();
  return val;
}

const _$GenderEnumMap = {
  Gender.male: 'male',
  Gender.female: 'female',
  Gender.others: 'others',
};
