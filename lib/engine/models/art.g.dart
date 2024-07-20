// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'art.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ArtImpl _$$ArtImplFromJson(Map<String, dynamic> json) => _$ArtImpl(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      artType: $enumDecode(_$ArtTypeEnumMap, json['artType']),
      name: json['name'] as String?,
      title: json['title'] as String?,
      artist: json['artist'] as String?,
      thumbnailUrl: json['thumbnailUrl'] as String?,
      thumbnailColorHex: json['thumbnailColorHex'] as String?,
    );

Map<String, dynamic> _$$ArtImplToJson(_$ArtImpl instance) => <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'artType': _$ArtTypeEnumMap[instance.artType]!,
      'name': instance.name,
      'title': instance.title,
      'artist': instance.artist,
      'thumbnailUrl': instance.thumbnailUrl,
      'thumbnailColorHex': instance.thumbnailColorHex,
    };

const _$ArtTypeEnumMap = {
  ArtType.music: 'music',
  ArtType.movie: 'movie',
};
