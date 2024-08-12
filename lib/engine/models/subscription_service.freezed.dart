// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscription_service.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SubscriptionService _$SubscriptionServiceFromJson(Map<String, dynamic> json) {
  return _SubscriptionService.fromJson(json);
}

/// @nodoc
mixin _$SubscriptionService {
  String get id => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  SubscriptionServiceProvider get provider =>
      throw _privateConstructorUsedError;
  SubscriptionServiceType? get type => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get posterUrl => throw _privateConstructorUsedError;
  String? get logoUrl => throw _privateConstructorUsedError;
  String? get brandColorHex => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubscriptionServiceCopyWith<SubscriptionService> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionServiceCopyWith<$Res> {
  factory $SubscriptionServiceCopyWith(
          SubscriptionService value, $Res Function(SubscriptionService) then) =
      _$SubscriptionServiceCopyWithImpl<$Res, SubscriptionService>;
  @useResult
  $Res call(
      {String id,
      DateTime createdAt,
      SubscriptionServiceProvider provider,
      SubscriptionServiceType? type,
      String? name,
      String? posterUrl,
      String? logoUrl,
      String? brandColorHex});
}

/// @nodoc
class _$SubscriptionServiceCopyWithImpl<$Res, $Val extends SubscriptionService>
    implements $SubscriptionServiceCopyWith<$Res> {
  _$SubscriptionServiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? provider = null,
    Object? type = freezed,
    Object? name = freezed,
    Object? posterUrl = freezed,
    Object? logoUrl = freezed,
    Object? brandColorHex = freezed,
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
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as SubscriptionServiceProvider,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SubscriptionServiceType?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      posterUrl: freezed == posterUrl
          ? _value.posterUrl
          : posterUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      logoUrl: freezed == logoUrl
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      brandColorHex: freezed == brandColorHex
          ? _value.brandColorHex
          : brandColorHex // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubscriptionServiceImplCopyWith<$Res>
    implements $SubscriptionServiceCopyWith<$Res> {
  factory _$$SubscriptionServiceImplCopyWith(_$SubscriptionServiceImpl value,
          $Res Function(_$SubscriptionServiceImpl) then) =
      __$$SubscriptionServiceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime createdAt,
      SubscriptionServiceProvider provider,
      SubscriptionServiceType? type,
      String? name,
      String? posterUrl,
      String? logoUrl,
      String? brandColorHex});
}

/// @nodoc
class __$$SubscriptionServiceImplCopyWithImpl<$Res>
    extends _$SubscriptionServiceCopyWithImpl<$Res, _$SubscriptionServiceImpl>
    implements _$$SubscriptionServiceImplCopyWith<$Res> {
  __$$SubscriptionServiceImplCopyWithImpl(_$SubscriptionServiceImpl _value,
      $Res Function(_$SubscriptionServiceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? provider = null,
    Object? type = freezed,
    Object? name = freezed,
    Object? posterUrl = freezed,
    Object? logoUrl = freezed,
    Object? brandColorHex = freezed,
  }) {
    return _then(_$SubscriptionServiceImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as SubscriptionServiceProvider,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as SubscriptionServiceType?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      posterUrl: freezed == posterUrl
          ? _value.posterUrl
          : posterUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      logoUrl: freezed == logoUrl
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      brandColorHex: freezed == brandColorHex
          ? _value.brandColorHex
          : brandColorHex // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$SubscriptionServiceImpl implements _SubscriptionService {
  const _$SubscriptionServiceImpl(
      {required this.id,
      required this.createdAt,
      required this.provider,
      this.type,
      this.name,
      this.posterUrl,
      this.logoUrl,
      this.brandColorHex});

  factory _$SubscriptionServiceImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubscriptionServiceImplFromJson(json);

  @override
  final String id;
  @override
  final DateTime createdAt;
  @override
  final SubscriptionServiceProvider provider;
  @override
  final SubscriptionServiceType? type;
  @override
  final String? name;
  @override
  final String? posterUrl;
  @override
  final String? logoUrl;
  @override
  final String? brandColorHex;

  @override
  String toString() {
    return 'SubscriptionService(id: $id, createdAt: $createdAt, provider: $provider, type: $type, name: $name, posterUrl: $posterUrl, logoUrl: $logoUrl, brandColorHex: $brandColorHex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionServiceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.posterUrl, posterUrl) ||
                other.posterUrl == posterUrl) &&
            (identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl) &&
            (identical(other.brandColorHex, brandColorHex) ||
                other.brandColorHex == brandColorHex));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, createdAt, provider, type,
      name, posterUrl, logoUrl, brandColorHex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionServiceImplCopyWith<_$SubscriptionServiceImpl> get copyWith =>
      __$$SubscriptionServiceImplCopyWithImpl<_$SubscriptionServiceImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubscriptionServiceImplToJson(
      this,
    );
  }
}

abstract class _SubscriptionService implements SubscriptionService {
  const factory _SubscriptionService(
      {required final String id,
      required final DateTime createdAt,
      required final SubscriptionServiceProvider provider,
      final SubscriptionServiceType? type,
      final String? name,
      final String? posterUrl,
      final String? logoUrl,
      final String? brandColorHex}) = _$SubscriptionServiceImpl;

  factory _SubscriptionService.fromJson(Map<String, dynamic> json) =
      _$SubscriptionServiceImpl.fromJson;

  @override
  String get id;
  @override
  DateTime get createdAt;
  @override
  SubscriptionServiceProvider get provider;
  @override
  SubscriptionServiceType? get type;
  @override
  String? get name;
  @override
  String? get posterUrl;
  @override
  String? get logoUrl;
  @override
  String? get brandColorHex;
  @override
  @JsonKey(ignore: true)
  _$$SubscriptionServiceImplCopyWith<_$SubscriptionServiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
