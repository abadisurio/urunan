// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_access.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ServiceAccessImpl _$$ServiceAccessImplFromJson(Map<String, dynamic> json) =>
    _$ServiceAccessImpl(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      service:
          ServiceSubscription.fromJson(json['service'] as Map<String, dynamic>),
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$ServiceAccessImplToJson(_$ServiceAccessImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'service': instance.service.toJson(),
      'email': instance.email,
      'password': instance.password,
    };
