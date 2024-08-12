// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activity_preview.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ActivityPreview _$ActivityPreviewFromJson(Map<String, dynamic> json) {
  return _ActivityPreview.fromJson(json);
}

/// @nodoc
mixin _$ActivityPreview {
  String get id => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get creatorId => throw _privateConstructorUsedError;
  ActivityType get type => throw _privateConstructorUsedError;
  Pilot? get creator => throw _privateConstructorUsedError;
  List<SubscriptionService>? get service => throw _privateConstructorUsedError;
  Entertainment? get art => throw _privateConstructorUsedError;
  String? get caption => throw _privateConstructorUsedError;
  String? get mediaUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActivityPreviewCopyWith<ActivityPreview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityPreviewCopyWith<$Res> {
  factory $ActivityPreviewCopyWith(
          ActivityPreview value, $Res Function(ActivityPreview) then) =
      _$ActivityPreviewCopyWithImpl<$Res, ActivityPreview>;
  @useResult
  $Res call(
      {String id,
      DateTime createdAt,
      String creatorId,
      ActivityType type,
      Pilot? creator,
      List<SubscriptionService>? service,
      Entertainment? art,
      String? caption,
      String? mediaUrl});

  $PilotCopyWith<$Res>? get creator;
  $EntertainmentCopyWith<$Res>? get art;
}

/// @nodoc
class _$ActivityPreviewCopyWithImpl<$Res, $Val extends ActivityPreview>
    implements $ActivityPreviewCopyWith<$Res> {
  _$ActivityPreviewCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? creatorId = null,
    Object? type = null,
    Object? creator = freezed,
    Object? service = freezed,
    Object? art = freezed,
    Object? caption = freezed,
    Object? mediaUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      creatorId: null == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ActivityType,
      creator: freezed == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as Pilot?,
      service: freezed == service
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as List<SubscriptionService>?,
      art: freezed == art
          ? _value.art
          : art // ignore: cast_nullable_to_non_nullable
              as Entertainment?,
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      mediaUrl: freezed == mediaUrl
          ? _value.mediaUrl
          : mediaUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PilotCopyWith<$Res>? get creator {
    if (_value.creator == null) {
      return null;
    }

    return $PilotCopyWith<$Res>(_value.creator!, (value) {
      return _then(_value.copyWith(creator: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $EntertainmentCopyWith<$Res>? get art {
    if (_value.art == null) {
      return null;
    }

    return $EntertainmentCopyWith<$Res>(_value.art!, (value) {
      return _then(_value.copyWith(art: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ActivityPreviewImplCopyWith<$Res>
    implements $ActivityPreviewCopyWith<$Res> {
  factory _$$ActivityPreviewImplCopyWith(_$ActivityPreviewImpl value,
          $Res Function(_$ActivityPreviewImpl) then) =
      __$$ActivityPreviewImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime createdAt,
      String creatorId,
      ActivityType type,
      Pilot? creator,
      List<SubscriptionService>? service,
      Entertainment? art,
      String? caption,
      String? mediaUrl});

  @override
  $PilotCopyWith<$Res>? get creator;
  @override
  $EntertainmentCopyWith<$Res>? get art;
}

/// @nodoc
class __$$ActivityPreviewImplCopyWithImpl<$Res>
    extends _$ActivityPreviewCopyWithImpl<$Res, _$ActivityPreviewImpl>
    implements _$$ActivityPreviewImplCopyWith<$Res> {
  __$$ActivityPreviewImplCopyWithImpl(
      _$ActivityPreviewImpl _value, $Res Function(_$ActivityPreviewImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? creatorId = null,
    Object? type = null,
    Object? creator = freezed,
    Object? service = freezed,
    Object? art = freezed,
    Object? caption = freezed,
    Object? mediaUrl = freezed,
  }) {
    return _then(_$ActivityPreviewImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      creatorId: null == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ActivityType,
      creator: freezed == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as Pilot?,
      service: freezed == service
          ? _value._service
          : service // ignore: cast_nullable_to_non_nullable
              as List<SubscriptionService>?,
      art: freezed == art
          ? _value.art
          : art // ignore: cast_nullable_to_non_nullable
              as Entertainment?,
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      mediaUrl: freezed == mediaUrl
          ? _value.mediaUrl
          : mediaUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ActivityPreviewImpl implements _ActivityPreview {
  const _$ActivityPreviewImpl(
      {required this.id,
      required this.createdAt,
      required this.creatorId,
      required this.type,
      this.creator,
      final List<SubscriptionService>? service,
      this.art,
      this.caption,
      this.mediaUrl})
      : _service = service;

  factory _$ActivityPreviewImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActivityPreviewImplFromJson(json);

  @override
  final String id;
  @override
  final DateTime createdAt;
  @override
  final String creatorId;
  @override
  final ActivityType type;
  @override
  final Pilot? creator;
  final List<SubscriptionService>? _service;
  @override
  List<SubscriptionService>? get service {
    final value = _service;
    if (value == null) return null;
    if (_service is EqualUnmodifiableListView) return _service;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Entertainment? art;
  @override
  final String? caption;
  @override
  final String? mediaUrl;

  @override
  String toString() {
    return 'ActivityPreview(id: $id, createdAt: $createdAt, creatorId: $creatorId, type: $type, creator: $creator, service: $service, art: $art, caption: $caption, mediaUrl: $mediaUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivityPreviewImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.creatorId, creatorId) ||
                other.creatorId == creatorId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.creator, creator) || other.creator == creator) &&
            const DeepCollectionEquality().equals(other._service, _service) &&
            (identical(other.art, art) || other.art == art) &&
            (identical(other.caption, caption) || other.caption == caption) &&
            (identical(other.mediaUrl, mediaUrl) ||
                other.mediaUrl == mediaUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      createdAt,
      creatorId,
      type,
      creator,
      const DeepCollectionEquality().hash(_service),
      art,
      caption,
      mediaUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivityPreviewImplCopyWith<_$ActivityPreviewImpl> get copyWith =>
      __$$ActivityPreviewImplCopyWithImpl<_$ActivityPreviewImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActivityPreviewImplToJson(
      this,
    );
  }
}

abstract class _ActivityPreview implements ActivityPreview {
  const factory _ActivityPreview(
      {required final String id,
      required final DateTime createdAt,
      required final String creatorId,
      required final ActivityType type,
      final Pilot? creator,
      final List<SubscriptionService>? service,
      final Entertainment? art,
      final String? caption,
      final String? mediaUrl}) = _$ActivityPreviewImpl;

  factory _ActivityPreview.fromJson(Map<String, dynamic> json) =
      _$ActivityPreviewImpl.fromJson;

  @override
  String get id;
  @override
  DateTime get createdAt;
  @override
  String get creatorId;
  @override
  ActivityType get type;
  @override
  Pilot? get creator;
  @override
  List<SubscriptionService>? get service;
  @override
  Entertainment? get art;
  @override
  String? get caption;
  @override
  String? get mediaUrl;
  @override
  @JsonKey(ignore: true)
  _$$ActivityPreviewImplCopyWith<_$ActivityPreviewImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
