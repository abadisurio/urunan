// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'service_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ServiceDetailState {
  SubscriptionService get service => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ServiceDetailStateCopyWith<ServiceDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceDetailStateCopyWith<$Res> {
  factory $ServiceDetailStateCopyWith(
          ServiceDetailState value, $Res Function(ServiceDetailState) then) =
      _$ServiceDetailStateCopyWithImpl<$Res, ServiceDetailState>;
  @useResult
  $Res call({SubscriptionService service});

  $SubscriptionServiceCopyWith<$Res> get service;
}

/// @nodoc
class _$ServiceDetailStateCopyWithImpl<$Res, $Val extends ServiceDetailState>
    implements $ServiceDetailStateCopyWith<$Res> {
  _$ServiceDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? service = null,
  }) {
    return _then(_value.copyWith(
      service: null == service
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as SubscriptionService,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SubscriptionServiceCopyWith<$Res> get service {
    return $SubscriptionServiceCopyWith<$Res>(_value.service, (value) {
      return _then(_value.copyWith(service: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ServiceDetailStateImplCopyWith<$Res>
    implements $ServiceDetailStateCopyWith<$Res> {
  factory _$$ServiceDetailStateImplCopyWith(_$ServiceDetailStateImpl value,
          $Res Function(_$ServiceDetailStateImpl) then) =
      __$$ServiceDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SubscriptionService service});

  @override
  $SubscriptionServiceCopyWith<$Res> get service;
}

/// @nodoc
class __$$ServiceDetailStateImplCopyWithImpl<$Res>
    extends _$ServiceDetailStateCopyWithImpl<$Res, _$ServiceDetailStateImpl>
    implements _$$ServiceDetailStateImplCopyWith<$Res> {
  __$$ServiceDetailStateImplCopyWithImpl(_$ServiceDetailStateImpl _value,
      $Res Function(_$ServiceDetailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? service = null,
  }) {
    return _then(_$ServiceDetailStateImpl(
      service: null == service
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as SubscriptionService,
    ));
  }
}

/// @nodoc

class _$ServiceDetailStateImpl implements _ServiceDetailState {
  const _$ServiceDetailStateImpl({required this.service});

  @override
  final SubscriptionService service;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceDetailStateImpl &&
            (identical(other.service, service) || other.service == service));
  }

  @override
  int get hashCode => Object.hash(runtimeType, service);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceDetailStateImplCopyWith<_$ServiceDetailStateImpl> get copyWith =>
      __$$ServiceDetailStateImplCopyWithImpl<_$ServiceDetailStateImpl>(
          this, _$identity);
}

abstract class _ServiceDetailState implements ServiceDetailState {
  const factory _ServiceDetailState(
      {required final SubscriptionService service}) = _$ServiceDetailStateImpl;

  @override
  SubscriptionService get service;
  @override
  @JsonKey(ignore: true)
  _$$ServiceDetailStateImplCopyWith<_$ServiceDetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
