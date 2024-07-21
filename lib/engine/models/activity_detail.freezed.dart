// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activity_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ActivityDetail _$ActivityDetailFromJson(Map<String, dynamic> json) {
  return _ActivityDetail.fromJson(json);
}

/// @nodoc
mixin _$ActivityDetail {
  String get id => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  String get creatorId => throw _privateConstructorUsedError;
  Pilot? get creator => throw _privateConstructorUsedError;
  Art? get art => throw _privateConstructorUsedError;
  String? get caption => throw _privateConstructorUsedError;
  String? get mediaUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActivityDetailCopyWith<ActivityDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityDetailCopyWith<$Res> {
  factory $ActivityDetailCopyWith(
          ActivityDetail value, $Res Function(ActivityDetail) then) =
      _$ActivityDetailCopyWithImpl<$Res, ActivityDetail>;
  @useResult
  $Res call(
      {String id,
      DateTime createdAt,
      String creatorId,
      Pilot? creator,
      Art? art,
      String? caption,
      String? mediaUrl});

  $PilotCopyWith<$Res>? get creator;
  $ArtCopyWith<$Res>? get art;
}

/// @nodoc
class _$ActivityDetailCopyWithImpl<$Res, $Val extends ActivityDetail>
    implements $ActivityDetailCopyWith<$Res> {
  _$ActivityDetailCopyWithImpl(this._value, this._then);

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
    Object? creator = freezed,
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
      creator: freezed == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as Pilot?,
      art: freezed == art
          ? _value.art
          : art // ignore: cast_nullable_to_non_nullable
              as Art?,
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
  $ArtCopyWith<$Res>? get art {
    if (_value.art == null) {
      return null;
    }

    return $ArtCopyWith<$Res>(_value.art!, (value) {
      return _then(_value.copyWith(art: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ActivityDetailImplCopyWith<$Res>
    implements $ActivityDetailCopyWith<$Res> {
  factory _$$ActivityDetailImplCopyWith(_$ActivityDetailImpl value,
          $Res Function(_$ActivityDetailImpl) then) =
      __$$ActivityDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime createdAt,
      String creatorId,
      Pilot? creator,
      Art? art,
      String? caption,
      String? mediaUrl});

  @override
  $PilotCopyWith<$Res>? get creator;
  @override
  $ArtCopyWith<$Res>? get art;
}

/// @nodoc
class __$$ActivityDetailImplCopyWithImpl<$Res>
    extends _$ActivityDetailCopyWithImpl<$Res, _$ActivityDetailImpl>
    implements _$$ActivityDetailImplCopyWith<$Res> {
  __$$ActivityDetailImplCopyWithImpl(
      _$ActivityDetailImpl _value, $Res Function(_$ActivityDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? creatorId = null,
    Object? creator = freezed,
    Object? art = freezed,
    Object? caption = freezed,
    Object? mediaUrl = freezed,
  }) {
    return _then(_$ActivityDetailImpl(
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
      creator: freezed == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as Pilot?,
      art: freezed == art
          ? _value.art
          : art // ignore: cast_nullable_to_non_nullable
              as Art?,
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
class _$ActivityDetailImpl implements _ActivityDetail {
  const _$ActivityDetailImpl(
      {required this.id,
      required this.createdAt,
      required this.creatorId,
      this.creator,
      this.art,
      this.caption,
      this.mediaUrl});

  factory _$ActivityDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActivityDetailImplFromJson(json);

  @override
  final String id;
  @override
  final DateTime createdAt;
  @override
  final String creatorId;
  @override
  final Pilot? creator;
  @override
  final Art? art;
  @override
  final String? caption;
  @override
  final String? mediaUrl;

  @override
  String toString() {
    return 'ActivityDetail(id: $id, createdAt: $createdAt, creatorId: $creatorId, creator: $creator, art: $art, caption: $caption, mediaUrl: $mediaUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivityDetailImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.creatorId, creatorId) ||
                other.creatorId == creatorId) &&
            (identical(other.creator, creator) || other.creator == creator) &&
            (identical(other.art, art) || other.art == art) &&
            (identical(other.caption, caption) || other.caption == caption) &&
            (identical(other.mediaUrl, mediaUrl) ||
                other.mediaUrl == mediaUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, createdAt, creatorId, creator, art, caption, mediaUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivityDetailImplCopyWith<_$ActivityDetailImpl> get copyWith =>
      __$$ActivityDetailImplCopyWithImpl<_$ActivityDetailImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActivityDetailImplToJson(
      this,
    );
  }
}

abstract class _ActivityDetail implements ActivityDetail {
  const factory _ActivityDetail(
      {required final String id,
      required final DateTime createdAt,
      required final String creatorId,
      final Pilot? creator,
      final Art? art,
      final String? caption,
      final String? mediaUrl}) = _$ActivityDetailImpl;

  factory _ActivityDetail.fromJson(Map<String, dynamic> json) =
      _$ActivityDetailImpl.fromJson;

  @override
  String get id;
  @override
  DateTime get createdAt;
  @override
  String get creatorId;
  @override
  Pilot? get creator;
  @override
  Art? get art;
  @override
  String? get caption;
  @override
  String? get mediaUrl;
  @override
  @JsonKey(ignore: true)
  _$$ActivityDetailImplCopyWith<_$ActivityDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
