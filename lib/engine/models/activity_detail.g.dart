// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ActivityDetailImpl _$$ActivityDetailImplFromJson(Map<String, dynamic> json) =>
    _$ActivityDetailImpl(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      creatorId: json['creatorId'] as String,
      creator: json['creator'] == null
          ? null
          : Pilot.fromJson(json['creator'] as Map<String, dynamic>),
      entertainment: json['entertainment'] == null
          ? null
          : Entertainment.fromJson(
              json['entertainment'] as Map<String, dynamic>),
      caption: json['caption'] as String?,
      mediaUrl: json['mediaUrl'] as String?,
    );

Map<String, dynamic> _$$ActivityDetailImplToJson(
        _$ActivityDetailImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'creatorId': instance.creatorId,
      'creator': instance.creator?.toJson(),
      'entertainment': instance.entertainment?.toJson(),
      'caption': instance.caption,
      'mediaUrl': instance.mediaUrl,
    };
