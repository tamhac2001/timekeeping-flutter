// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDTO _$$_UserDTOFromJson(Map<String, dynamic> json) => _$_UserDTO(
      name: json['name'] as String,
      gender: $enumDecode(_$GenderEnumMap, json['gender']),
      phoneNumber: json['phone_number'] as String,
      address: json['address'] as String,
      profilePicture: json['profile_picture'] as String,
      startDate: DateTime.parse(json['start_date'] as String),
    );

Map<String, dynamic> _$$_UserDTOToJson(_$_UserDTO instance) =>
    <String, dynamic>{
      'name': instance.name,
      'gender': _$GenderEnumMap[instance.gender],
      'phone_number': instance.phoneNumber,
      'address': instance.address,
      'profile_picture': instance.profilePicture,
      'start_date': instance.startDate.toIso8601String(),
    };

const _$GenderEnumMap = {
  Gender.male: 'male',
  Gender.female: 'female',
  Gender.other: 'other',
};
