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
      creator: json['creator'] == null
          ? null
          : Pilot.fromJson(json['creator'] as Map<String, dynamic>),
      art: json['art'] == null
          ? null
          : Art.fromJson(json['art'] as Map<String, dynamic>),
      caption: json['caption'] as String?,
      mediaUrl: json['mediaUrl'] as String?,
    );

Map<String, dynamic> _$$ActivityPreviewImplToJson(
        _$ActivityPreviewImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'creatorId': instance.creatorId,
      'creator': instance.creator?.toJson(),
      'art': instance.art?.toJson(),
      'caption': instance.caption,
      'mediaUrl': instance.mediaUrl,
    };
