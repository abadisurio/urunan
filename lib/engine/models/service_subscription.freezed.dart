// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_subscription.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ServiceSubscription _$ServiceSubscriptionFromJson(Map<String, dynamic> json) {
  return _ServiceSubscription.fromJson(json);
}

/// @nodoc
mixin _$ServiceSubscription {
  String get id => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  ServiceSubscriptionProvider get provider =>
      throw _privateConstructorUsedError;
  ServiceSubscriptionType? get type => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get posterUrl => throw _privateConstructorUsedError;
  String? get logoUrl => throw _privateConstructorUsedError;
  String? get brandColorHex => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServiceSubscriptionCopyWith<ServiceSubscription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceSubscriptionCopyWith<$Res> {
  factory $ServiceSubscriptionCopyWith(
          ServiceSubscription value, $Res Function(ServiceSubscription) then) =
      _$ServiceSubscriptionCopyWithImpl<$Res, ServiceSubscription>;
  @useResult
  $Res call(
      {String id,
      DateTime createdAt,
      ServiceSubscriptionProvider provider,
      ServiceSubscriptionType? type,
      String? name,
      String? posterUrl,
      String? logoUrl,
      String? brandColorHex});
}

/// @nodoc
class _$ServiceSubscriptionCopyWithImpl<$Res, $Val extends ServiceSubscription>
    implements $ServiceSubscriptionCopyWith<$Res> {
  _$ServiceSubscriptionCopyWithImpl(this._value, this._then);

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
              as ServiceSubscriptionProvider,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ServiceSubscriptionType?,
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
abstract class _$$ServiceSubscriptionImplCopyWith<$Res>
    implements $ServiceSubscriptionCopyWith<$Res> {
  factory _$$ServiceSubscriptionImplCopyWith(_$ServiceSubscriptionImpl value,
          $Res Function(_$ServiceSubscriptionImpl) then) =
      __$$ServiceSubscriptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime createdAt,
      ServiceSubscriptionProvider provider,
      ServiceSubscriptionType? type,
      String? name,
      String? posterUrl,
      String? logoUrl,
      String? brandColorHex});
}

/// @nodoc
class __$$ServiceSubscriptionImplCopyWithImpl<$Res>
    extends _$ServiceSubscriptionCopyWithImpl<$Res, _$ServiceSubscriptionImpl>
    implements _$$ServiceSubscriptionImplCopyWith<$Res> {
  __$$ServiceSubscriptionImplCopyWithImpl(_$ServiceSubscriptionImpl _value,
      $Res Function(_$ServiceSubscriptionImpl) _then)
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
    return _then(_$ServiceSubscriptionImpl(
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
              as ServiceSubscriptionProvider,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ServiceSubscriptionType?,
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
class _$ServiceSubscriptionImpl implements _ServiceSubscription {
  const _$ServiceSubscriptionImpl(
      {required this.id,
      required this.createdAt,
      required this.provider,
      this.type,
      this.name,
      this.posterUrl,
      this.logoUrl,
      this.brandColorHex});

  factory _$ServiceSubscriptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServiceSubscriptionImplFromJson(json);

  @override
  final String id;
  @override
  final DateTime createdAt;
  @override
  final ServiceSubscriptionProvider provider;
  @override
  final ServiceSubscriptionType? type;
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
    return 'ServiceSubscription(id: $id, createdAt: $createdAt, provider: $provider, type: $type, name: $name, posterUrl: $posterUrl, logoUrl: $logoUrl, brandColorHex: $brandColorHex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceSubscriptionImpl &&
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
  _$$ServiceSubscriptionImplCopyWith<_$ServiceSubscriptionImpl> get copyWith =>
      __$$ServiceSubscriptionImplCopyWithImpl<_$ServiceSubscriptionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServiceSubscriptionImplToJson(
      this,
    );
  }
}

abstract class _ServiceSubscription implements ServiceSubscription {
  const factory _ServiceSubscription(
      {required final String id,
      required final DateTime createdAt,
      required final ServiceSubscriptionProvider provider,
      final ServiceSubscriptionType? type,
      final String? name,
      final String? posterUrl,
      final String? logoUrl,
      final String? brandColorHex}) = _$ServiceSubscriptionImpl;

  factory _ServiceSubscription.fromJson(Map<String, dynamic> json) =
      _$ServiceSubscriptionImpl.fromJson;

  @override
  String get id;
  @override
  DateTime get createdAt;
  @override
  ServiceSubscriptionProvider get provider;
  @override
  ServiceSubscriptionType? get type;
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
  _$$ServiceSubscriptionImplCopyWith<_$ServiceSubscriptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
