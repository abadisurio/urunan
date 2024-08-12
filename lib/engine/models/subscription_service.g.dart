// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_service.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubscriptionServiceImpl _$$SubscriptionServiceImplFromJson(
        Map<String, dynamic> json) =>
    _$SubscriptionServiceImpl(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      provider:
          $enumDecode(_$SubscriptionServiceProviderEnumMap, json['provider']),
      type: $enumDecodeNullable(_$SubscriptionServiceTypeEnumMap, json['type']),
      name: json['name'] as String?,
      posterUrl: json['posterUrl'] as String?,
      logoUrl: json['logoUrl'] as String?,
      brandColorHex: json['brandColorHex'] as String?,
    );

Map<String, dynamic> _$$SubscriptionServiceImplToJson(
        _$SubscriptionServiceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'provider': _$SubscriptionServiceProviderEnumMap[instance.provider]!,
      'type': _$SubscriptionServiceTypeEnumMap[instance.type],
      'name': instance.name,
      'posterUrl': instance.posterUrl,
      'logoUrl': instance.logoUrl,
      'brandColorHex': instance.brandColorHex,
    };

const _$SubscriptionServiceProviderEnumMap = {
  SubscriptionServiceProvider.netflix: 'netflix',
  SubscriptionServiceProvider.youtube: 'youtube',
  SubscriptionServiceProvider.canva: 'canva',
  SubscriptionServiceProvider.google: 'google',
  SubscriptionServiceProvider.drive: 'drive',
};

const _$SubscriptionServiceTypeEnumMap = {
  SubscriptionServiceType.music: 'music',
  SubscriptionServiceType.movie: 'movie',
};
