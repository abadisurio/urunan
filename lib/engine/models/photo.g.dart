// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PhotoImpl _$$PhotoImplFromJson(Map<String, dynamic> json) => _$PhotoImpl(
      id: json['id'] as String,
      memberId: json['memberId'] as String,
      albumId: json['albumId'] as String,
      name: json['name'] as String,
      url: json['url'] as String,
      createdAt: json['createdAt'] == null
          ? getDefaultDateTime()
          : fromDateTimeJson(json['createdAt']),
      height: (json['height'] as num?)?.toDouble(),
      width: (json['width'] as num?)?.toDouble(),
      alt: (json['alt'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$PhotoImplToJson(_$PhotoImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'memberId': instance.memberId,
    'albumId': instance.albumId,
    'name': instance.name,
    'url': instance.url,
    'createdAt': instance.createdAt.toIso8601String(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('height', instance.height);
  writeNotNull('width', instance.width);
  writeNotNull('alt', instance.alt);
  return val;
}
