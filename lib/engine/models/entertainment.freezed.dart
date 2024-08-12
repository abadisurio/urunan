// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'entertainment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Entertainment _$EntertainmentFromJson(Map<String, dynamic> json) {
  return _Entertainment.fromJson(json);
}

/// @nodoc
mixin _$Entertainment {
  String get id => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  EntertainmentType get artType => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get artist => throw _privateConstructorUsedError;
  String? get posterUrl => throw _privateConstructorUsedError;
  String? get thumbnailUrl => throw _privateConstructorUsedError;
  String? get thumbnailColorHex => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EntertainmentCopyWith<Entertainment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntertainmentCopyWith<$Res> {
  factory $EntertainmentCopyWith(
          Entertainment value, $Res Function(Entertainment) then) =
      _$EntertainmentCopyWithImpl<$Res, Entertainment>;
  @useResult
  $Res call(
      {String id,
      DateTime createdAt,
      EntertainmentType artType,
      String? name,
      String? title,
      String? artist,
      String? posterUrl,
      String? thumbnailUrl,
      String? thumbnailColorHex});
}

/// @nodoc
class _$EntertainmentCopyWithImpl<$Res, $Val extends Entertainment>
    implements $EntertainmentCopyWith<$Res> {
  _$EntertainmentCopyWithImpl(this._value, this._then);

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
              as EntertainmentType,
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
abstract class _$$EntertainmentImplCopyWith<$Res>
    implements $EntertainmentCopyWith<$Res> {
  factory _$$EntertainmentImplCopyWith(
          _$EntertainmentImpl value, $Res Function(_$EntertainmentImpl) then) =
      __$$EntertainmentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime createdAt,
      EntertainmentType artType,
      String? name,
      String? title,
      String? artist,
      String? posterUrl,
      String? thumbnailUrl,
      String? thumbnailColorHex});
}

/// @nodoc
class __$$EntertainmentImplCopyWithImpl<$Res>
    extends _$EntertainmentCopyWithImpl<$Res, _$EntertainmentImpl>
    implements _$$EntertainmentImplCopyWith<$Res> {
  __$$EntertainmentImplCopyWithImpl(
      _$EntertainmentImpl _value, $Res Function(_$EntertainmentImpl) _then)
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
    return _then(_$EntertainmentImpl(
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
              as EntertainmentType,
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
class _$EntertainmentImpl implements _Entertainment {
  const _$EntertainmentImpl(
      {required this.id,
      required this.createdAt,
      required this.artType,
      this.name,
      this.title,
      this.artist,
      this.posterUrl,
      this.thumbnailUrl,
      this.thumbnailColorHex});

  factory _$EntertainmentImpl.fromJson(Map<String, dynamic> json) =>
      _$$EntertainmentImplFromJson(json);

  @override
  final String id;
  @override
  final DateTime createdAt;
  @override
  final EntertainmentType artType;
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
    return 'Entertainment(id: $id, createdAt: $createdAt, artType: $artType, name: $name, title: $title, artist: $artist, posterUrl: $posterUrl, thumbnailUrl: $thumbnailUrl, thumbnailColorHex: $thumbnailColorHex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EntertainmentImpl &&
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
  _$$EntertainmentImplCopyWith<_$EntertainmentImpl> get copyWith =>
      __$$EntertainmentImplCopyWithImpl<_$EntertainmentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EntertainmentImplToJson(
      this,
    );
  }
}

abstract class _Entertainment implements Entertainment {
  const factory _Entertainment(
      {required final String id,
      required final DateTime createdAt,
      required final EntertainmentType artType,
      final String? name,
      final String? title,
      final String? artist,
      final String? posterUrl,
      final String? thumbnailUrl,
      final String? thumbnailColorHex}) = _$EntertainmentImpl;

  factory _Entertainment.fromJson(Map<String, dynamic> json) =
      _$EntertainmentImpl.fromJson;

  @override
  String get id;
  @override
  DateTime get createdAt;
  @override
  EntertainmentType get artType;
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
  _$$EntertainmentImplCopyWith<_$EntertainmentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
