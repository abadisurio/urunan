// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'art.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Art _$ArtFromJson(Map<String, dynamic> json) {
  return _Art.fromJson(json);
}

/// @nodoc
mixin _$Art {
  String get id => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  ArtType get artType => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get artist => throw _privateConstructorUsedError;
  String? get posterUrl => throw _privateConstructorUsedError;
  String? get thumbnailUrl => throw _privateConstructorUsedError;
  String? get thumbnailColorHex => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArtCopyWith<Art> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtCopyWith<$Res> {
  factory $ArtCopyWith(Art value, $Res Function(Art) then) =
      _$ArtCopyWithImpl<$Res, Art>;
  @useResult
  $Res call(
      {String id,
      DateTime createdAt,
      ArtType artType,
      String? name,
      String? title,
      String? artist,
      String? posterUrl,
      String? thumbnailUrl,
      String? thumbnailColorHex});
}

/// @nodoc
class _$ArtCopyWithImpl<$Res, $Val extends Art> implements $ArtCopyWith<$Res> {
  _$ArtCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? artType = null,
    Object? name = freezed,
    Object? title = freezed,
    Object? artist = freezed,
    Object? posterUrl = freezed,
    Object? thumbnailUrl = freezed,
    Object? thumbnailColorHex = freezed,
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
      artType: null == artType
          ? _value.artType
          : artType // ignore: cast_nullable_to_non_nullable
              as ArtType,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      artist: freezed == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as String?,
      posterUrl: freezed == posterUrl
          ? _value.posterUrl
          : posterUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailColorHex: freezed == thumbnailColorHex
          ? _value.thumbnailColorHex
          : thumbnailColorHex // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArtImplCopyWith<$Res> implements $ArtCopyWith<$Res> {
  factory _$$ArtImplCopyWith(_$ArtImpl value, $Res Function(_$ArtImpl) then) =
      __$$ArtImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime createdAt,
      ArtType artType,
      String? name,
      String? title,
      String? artist,
      String? posterUrl,
      String? thumbnailUrl,
      String? thumbnailColorHex});
}

/// @nodoc
class __$$ArtImplCopyWithImpl<$Res> extends _$ArtCopyWithImpl<$Res, _$ArtImpl>
    implements _$$ArtImplCopyWith<$Res> {
  __$$ArtImplCopyWithImpl(_$ArtImpl _value, $Res Function(_$ArtImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? artType = null,
    Object? name = freezed,
    Object? title = freezed,
    Object? artist = freezed,
    Object? posterUrl = freezed,
    Object? thumbnailUrl = freezed,
    Object? thumbnailColorHex = freezed,
  }) {
    return _then(_$ArtImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      artType: null == artType
          ? _value.artType
          : artType // ignore: cast_nullable_to_non_nullable
              as ArtType,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      artist: freezed == artist
          ? _value.artist
          : artist // ignore: cast_nullable_to_non_nullable
              as String?,
      posterUrl: freezed == posterUrl
          ? _value.posterUrl
          : posterUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailUrl: freezed == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnailColorHex: freezed == thumbnailColorHex
          ? _value.thumbnailColorHex
          : thumbnailColorHex // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ArtImpl implements _Art {
  const _$ArtImpl(
      {required this.id,
      required this.createdAt,
      required this.artType,
      this.name,
      this.title,
      this.artist,
      this.posterUrl,
      this.thumbnailUrl,
      this.thumbnailColorHex});

  factory _$ArtImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArtImplFromJson(json);

  @override
  final String id;
  @override
  final DateTime createdAt;
  @override
  final ArtType artType;
  @override
  final String? name;
  @override
  final String? title;
  @override
  final String? artist;
  @override
  final String? posterUrl;
  @override
  final String? thumbnailUrl;
  @override
  final String? thumbnailColorHex;

  @override
  String toString() {
    return 'Art(id: $id, createdAt: $createdAt, artType: $artType, name: $name, title: $title, artist: $artist, posterUrl: $posterUrl, thumbnailUrl: $thumbnailUrl, thumbnailColorHex: $thumbnailColorHex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.artType, artType) || other.artType == artType) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.artist, artist) || other.artist == artist) &&
            (identical(other.posterUrl, posterUrl) ||
                other.posterUrl == posterUrl) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            (identical(other.thumbnailColorHex, thumbnailColorHex) ||
                other.thumbnailColorHex == thumbnailColorHex));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, createdAt, artType, name,
      title, artist, posterUrl, thumbnailUrl, thumbnailColorHex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtImplCopyWith<_$ArtImpl> get copyWith =>
      __$$ArtImplCopyWithImpl<_$ArtImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArtImplToJson(
      this,
    );
  }
}

abstract class _Art implements Art {
  const factory _Art(
      {required final String id,
      required final DateTime createdAt,
      required final ArtType artType,
      final String? name,
      final String? title,
      final String? artist,
      final String? posterUrl,
      final String? thumbnailUrl,
      final String? thumbnailColorHex}) = _$ArtImpl;

  factory _Art.fromJson(Map<String, dynamic> json) = _$ArtImpl.fromJson;

  @override
  String get id;
  @override
  DateTime get createdAt;
  @override
  ArtType get artType;
  @override
  String? get name;
  @override
  String? get title;
  @override
  String? get artist;
  @override
  String? get posterUrl;
  @override
  String? get thumbnailUrl;
  @override
  String? get thumbnailColorHex;
  @override
  @JsonKey(ignore: true)
  _$$ArtImplCopyWith<_$ArtImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
