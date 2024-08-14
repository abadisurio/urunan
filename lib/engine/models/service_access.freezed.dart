// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_access.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ServiceAccess _$ServiceAccessFromJson(Map<String, dynamic> json) {
  return _ServiceAccess.fromJson(json);
}

/// @nodoc
mixin _$ServiceAccess {
  String get id => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  ServiceSubscription get service => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServiceAccessCopyWith<ServiceAccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceAccessCopyWith<$Res> {
  factory $ServiceAccessCopyWith(
          ServiceAccess value, $Res Function(ServiceAccess) then) =
      _$ServiceAccessCopyWithImpl<$Res, ServiceAccess>;
  @useResult
  $Res call(
      {String id,
      DateTime createdAt,
      ServiceSubscription service,
      String email,
      String password});

  $ServiceSubscriptionCopyWith<$Res> get service;
}

/// @nodoc
class _$ServiceAccessCopyWithImpl<$Res, $Val extends ServiceAccess>
    implements $ServiceAccessCopyWith<$Res> {
  _$ServiceAccessCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? service = null,
    Object? email = null,
    Object? password = null,
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
      service: null == service
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as ServiceSubscription,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ServiceSubscriptionCopyWith<$Res> get service {
    return $ServiceSubscriptionCopyWith<$Res>(_value.service, (value) {
      return _then(_value.copyWith(service: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ServiceAccessImplCopyWith<$Res>
    implements $ServiceAccessCopyWith<$Res> {
  factory _$$ServiceAccessImplCopyWith(
          _$ServiceAccessImpl value, $Res Function(_$ServiceAccessImpl) then) =
      __$$ServiceAccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime createdAt,
      ServiceSubscription service,
      String email,
      String password});

  @override
  $ServiceSubscriptionCopyWith<$Res> get service;
}

/// @nodoc
class __$$ServiceAccessImplCopyWithImpl<$Res>
    extends _$ServiceAccessCopyWithImpl<$Res, _$ServiceAccessImpl>
    implements _$$ServiceAccessImplCopyWith<$Res> {
  __$$ServiceAccessImplCopyWithImpl(
      _$ServiceAccessImpl _value, $Res Function(_$ServiceAccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? service = null,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$ServiceAccessImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      service: null == service
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as ServiceSubscription,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ServiceAccessImpl implements _ServiceAccess {
  const _$ServiceAccessImpl(
      {required this.id,
      required this.createdAt,
      required this.service,
      required this.email,
      required this.password});

  factory _$ServiceAccessImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServiceAccessImplFromJson(json);

  @override
  final String id;
  @override
  final DateTime createdAt;
  @override
  final ServiceSubscription service;
  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'ServiceAccess(id: $id, createdAt: $createdAt, service: $service, email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceAccessImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.service, service) || other.service == service) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, createdAt, service, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceAccessImplCopyWith<_$ServiceAccessImpl> get copyWith =>
      __$$ServiceAccessImplCopyWithImpl<_$ServiceAccessImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServiceAccessImplToJson(
      this,
    );
  }
}

abstract class _ServiceAccess implements ServiceAccess {
  const factory _ServiceAccess(
      {required final String id,
      required final DateTime createdAt,
      required final ServiceSubscription service,
      required final String email,
      required final String password}) = _$ServiceAccessImpl;

  factory _ServiceAccess.fromJson(Map<String, dynamic> json) =
      _$ServiceAccessImpl.fromJson;

  @override
  String get id;
  @override
  DateTime get createdAt;
  @override
  ServiceSubscription get service;
  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$ServiceAccessImplCopyWith<_$ServiceAccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
