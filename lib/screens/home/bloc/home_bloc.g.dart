// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeStateImpl _$$HomeStateImplFromJson(Map<String, dynamic> json) =>
    _$HomeStateImpl(
      activities: (json['activities'] as List<dynamic>?)
          ?.map((e) => ActivityPreview.fromJson(e as Map<String, dynamic>))
          .toList(),
      activeSubscriptions: (json['activeSubscriptions'] as List<dynamic>?)
          ?.map((e) => ActivityPreview.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HomeStateImplToJson(_$HomeStateImpl instance) =>
    <String, dynamic>{
      'activities': instance.activities?.map((e) => e.toJson()).toList(),
      'activeSubscriptions':
          instance.activeSubscriptions?.map((e) => e.toJson()).toList(),
    };
