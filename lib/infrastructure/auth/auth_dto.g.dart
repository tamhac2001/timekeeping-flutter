// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthDTO _$$_AuthDTOFromJson(Map<String, dynamic> json) => _$_AuthDTO(
      email: json['email'] as String?,
      password: json['password'] as String?,
      accessToken: json['access_token'] as String?,
      expireDate: json['expire_date'] == null
          ? null
          : DateTime.parse(json['expire_date'] as String),
    );

Map<String, dynamic> _$$_AuthDTOToJson(_$_AuthDTO instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('email', instance.email);
  writeNotNull('password', instance.password);
  writeNotNull('access_token', instance.accessToken);
  writeNotNull('expire_date', instance.expireDate?.toIso8601String());
  return val;
}
