// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'access_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AccessDetailState {
  ServiceAccess? get serviceAccessDetail => throw _privateConstructorUsedError;
  bool get canLocalAuthenticate => throw _privateConstructorUsedError;
  bool get isLocalAuthenticated => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccessDetailStateCopyWith<AccessDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccessDetailStateCopyWith<$Res> {
  factory $AccessDetailStateCopyWith(
          AccessDetailState value, $Res Function(AccessDetailState) then) =
      _$AccessDetailStateCopyWithImpl<$Res, AccessDetailState>;
  @useResult
  $Res call(
      {ServiceAccess? serviceAccessDetail,
      bool canLocalAuthenticate,
      bool isLocalAuthenticated,
      String? errorMessage});

  $ServiceAccessCopyWith<$Res>? get serviceAccessDetail;
}

/// @nodoc
class _$AccessDetailStateCopyWithImpl<$Res, $Val extends AccessDetailState>
    implements $AccessDetailStateCopyWith<$Res> {
  _$AccessDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serviceAccessDetail = freezed,
    Object? canLocalAuthenticate = null,
    Object? isLocalAuthenticated = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      serviceAccessDetail: freezed == serviceAccessDetail
          ? _value.serviceAccessDetail
          : serviceAccessDetail // ignore: cast_nullable_to_non_nullable
              as ServiceAccess?,
      canLocalAuthenticate: null == canLocalAuthenticate
          ? _value.canLocalAuthenticate
          : canLocalAuthenticate // ignore: cast_nullable_to_non_nullable
              as bool,
      isLocalAuthenticated: null == isLocalAuthenticated
          ? _value.isLocalAuthenticated
          : isLocalAuthenticated // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ServiceAccessCopyWith<$Res>? get serviceAccessDetail {
    if (_value.serviceAccessDetail == null) {
      return null;
    }

    return $ServiceAccessCopyWith<$Res>(_value.serviceAccessDetail!, (value) {
      return _then(_value.copyWith(serviceAccessDetail: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AccessDetailStateImplCopyWith<$Res>
    implements $AccessDetailStateCopyWith<$Res> {
  factory _$$AccessDetailStateImplCopyWith(_$AccessDetailStateImpl value,
          $Res Function(_$AccessDetailStateImpl) then) =
      __$$AccessDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ServiceAccess? serviceAccessDetail,
      bool canLocalAuthenticate,
      bool isLocalAuthenticated,
      String? errorMessage});

  @override
  $ServiceAccessCopyWith<$Res>? get serviceAccessDetail;
}

/// @nodoc
class __$$AccessDetailStateImplCopyWithImpl<$Res>
    extends _$AccessDetailStateCopyWithImpl<$Res, _$AccessDetailStateImpl>
    implements _$$AccessDetailStateImplCopyWith<$Res> {
  __$$AccessDetailStateImplCopyWithImpl(_$AccessDetailStateImpl _value,
      $Res Function(_$AccessDetailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serviceAccessDetail = freezed,
    Object? canLocalAuthenticate = null,
    Object? isLocalAuthenticated = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$AccessDetailStateImpl(
      serviceAccessDetail: freezed == serviceAccessDetail
          ? _value.serviceAccessDetail
          : serviceAccessDetail // ignore: cast_nullable_to_non_nullable
              as ServiceAccess?,
      canLocalAuthenticate: null == canLocalAuthenticate
          ? _value.canLocalAuthenticate
          : canLocalAuthenticate // ignore: cast_nullable_to_non_nullable
              as bool,
      isLocalAuthenticated: null == isLocalAuthenticated
          ? _value.isLocalAuthenticated
          : isLocalAuthenticated // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AccessDetailStateImpl implements _AccessDetailState {
  const _$AccessDetailStateImpl(
      {this.serviceAccessDetail,
      this.canLocalAuthenticate = true,
      this.isLocalAuthenticated = true,
      this.errorMessage});

  @override
  final ServiceAccess? serviceAccessDetail;
  @override
  @JsonKey()
  final bool canLocalAuthenticate;
  @override
  @JsonKey()
  final bool isLocalAuthenticated;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'AccessDetailState(serviceAccessDetail: $serviceAccessDetail, canLocalAuthenticate: $canLocalAuthenticate, isLocalAuthenticated: $isLocalAuthenticated, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccessDetailStateImpl &&
            (identical(other.serviceAccessDetail, serviceAccessDetail) ||
                other.serviceAccessDetail == serviceAccessDetail) &&
            (identical(other.canLocalAuthenticate, canLocalAuthenticate) ||
                other.canLocalAuthenticate == canLocalAuthenticate) &&
            (identical(other.isLocalAuthenticated, isLocalAuthenticated) ||
                other.isLocalAuthenticated == isLocalAuthenticated) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, serviceAccessDetail,
      canLocalAuthenticate, isLocalAuthenticated, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccessDetailStateImplCopyWith<_$AccessDetailStateImpl> get copyWith =>
      __$$AccessDetailStateImplCopyWithImpl<_$AccessDetailStateImpl>(
          this, _$identity);
}

abstract class _AccessDetailState implements AccessDetailState {
  const factory _AccessDetailState(
      {final ServiceAccess? serviceAccessDetail,
      final bool canLocalAuthenticate,
      final bool isLocalAuthenticated,
      final String? errorMessage}) = _$AccessDetailStateImpl;

  @override
  ServiceAccess? get serviceAccessDetail;
  @override
  bool get canLocalAuthenticate;
  @override
  bool get isLocalAuthenticated;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$AccessDetailStateImplCopyWith<_$AccessDetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
