// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entertainment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EntertainmentImpl _$$EntertainmentImplFromJson(Map<String, dynamic> json) =>
    _$EntertainmentImpl(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      artType: $enumDecode(_$EntertainmentTypeEnumMap, json['artType']),
      name: json['name'] as String?,
      title: json['title'] as String?,
      artist: json['artist'] as String?,
      posterUrl: json['posterUrl'] as String?,
      thumbnailUrl: json['thumbnailUrl'] as String?,
      thumbnailColorHex: json['thumbnailColorHex'] as String?,
    );

Map<String, dynamic> _$$EntertainmentImplToJson(_$EntertainmentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'artType': _$EntertainmentTypeEnumMap[instance.artType]!,
      'name': instance.name,
      'title': instance.title,
      'artist': instance.artist,
      'posterUrl': instance.posterUrl,
      'thumbnailUrl': instance.thumbnailUrl,
      'thumbnailColorHex': instance.thumbnailColorHex,
    };

const _$EntertainmentTypeEnumMap = {
  EntertainmentType.music: 'music',
  EntertainmentType.movie: 'movie',
};
