// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_subscription.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ServiceSubscriptionImpl _$$ServiceSubscriptionImplFromJson(
        Map<String, dynamic> json) =>
    _$ServiceSubscriptionImpl(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      provider:
          $enumDecode(_$ServiceSubscriptionProviderEnumMap, json['provider']),
      type: $enumDecodeNullable(_$ServiceSubscriptionTypeEnumMap, json['type']),
      name: json['name'] as String?,
      posterUrl: json['posterUrl'] as String?,
      logoUrl: json['logoUrl'] as String?,
      brandColorHex: json['brandColorHex'] as String?,
    );

Map<String, dynamic> _$$ServiceSubscriptionImplToJson(
        _$ServiceSubscriptionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'provider': _$ServiceSubscriptionProviderEnumMap[instance.provider]!,
      'type': _$ServiceSubscriptionTypeEnumMap[instance.type],
      'name': instance.name,
      'posterUrl': instance.posterUrl,
      'logoUrl': instance.logoUrl,
      'brandColorHex': instance.brandColorHex,
    };

const _$ServiceSubscriptionProviderEnumMap = {
  ServiceSubscriptionProvider.netflix: 'netflix',
  ServiceSubscriptionProvider.youtube: 'youtube',
  ServiceSubscriptionProvider.canva: 'canva',
  ServiceSubscriptionProvider.google: 'google',
  ServiceSubscriptionProvider.drive: 'drive',
};

const _$ServiceSubscriptionTypeEnumMap = {
  ServiceSubscriptionType.music: 'music',
  ServiceSubscriptionType.movie: 'movie',
};
