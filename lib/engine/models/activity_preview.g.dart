// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_preview.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ActivityPreviewImpl _$$ActivityPreviewImplFromJson(
        Map<String, dynamic> json) =>
    _$ActivityPreviewImpl(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      creatorId: json['creatorId'] as String,
      type: $enumDecode(_$ActivityTypeEnumMap, json['type']),
      creator: json['creator'] == null
          ? null
          : Pilot.fromJson(json['creator'] as Map<String, dynamic>),
      service: (json['service'] as List<dynamic>?)
          ?.map((e) => ServiceSubscription.fromJson(e as Map<String, dynamic>))
          .toList(),
      art: json['art'] == null
          ? null
          : Entertainment.fromJson(json['art'] as Map<String, dynamic>),
      caption: json['caption'] as String?,
      mediaUrl: json['mediaUrl'] as String?,
    );

Map<String, dynamic> _$$ActivityPreviewImplToJson(
        _$ActivityPreviewImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'creatorId': instance.creatorId,
      'type': _$ActivityTypeEnumMap[instance.type]!,
      'creator': instance.creator?.toJson(),
      'service': instance.service?.map((e) => e.toJson()).toList(),
      'art': instance.art?.toJson(),
      'caption': instance.caption,
      'mediaUrl': instance.mediaUrl,
    };

const _$ActivityTypeEnumMap = {
  ActivityType.post: 'post',
  ActivityType.subscription: 'subscription',
};
