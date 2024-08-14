// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'access_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AccessState {
  List<ServiceAccess>? get serviceAccess => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccessStateCopyWith<AccessState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccessStateCopyWith<$Res> {
  factory $AccessStateCopyWith(
          AccessState value, $Res Function(AccessState) then) =
      _$AccessStateCopyWithImpl<$Res, AccessState>;
  @useResult
  $Res call({List<ServiceAccess>? serviceAccess, String? errorMessage});
}

/// @nodoc
class _$AccessStateCopyWithImpl<$Res, $Val extends AccessState>
    implements $AccessStateCopyWith<$Res> {
  _$AccessStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serviceAccess = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      serviceAccess: freezed == serviceAccess
          ? _value.serviceAccess
          : serviceAccess // ignore: cast_nullable_to_non_nullable
              as List<ServiceAccess>?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AccessStateImplCopyWith<$Res>
    implements $AccessStateCopyWith<$Res> {
  factory _$$AccessStateImplCopyWith(
          _$AccessStateImpl value, $Res Function(_$AccessStateImpl) then) =
      __$$AccessStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ServiceAccess>? serviceAccess, String? errorMessage});
}

/// @nodoc
class __$$AccessStateImplCopyWithImpl<$Res>
    extends _$AccessStateCopyWithImpl<$Res, _$AccessStateImpl>
    implements _$$AccessStateImplCopyWith<$Res> {
  __$$AccessStateImplCopyWithImpl(
      _$AccessStateImpl _value, $Res Function(_$AccessStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serviceAccess = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$AccessStateImpl(
      serviceAccess: freezed == serviceAccess
          ? _value._serviceAccess
          : serviceAccess // ignore: cast_nullable_to_non_nullable
              as List<ServiceAccess>?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AccessStateImpl implements _AccessState {
  const _$AccessStateImpl(
      {final List<ServiceAccess>? serviceAccess, this.errorMessage})
      : _serviceAccess = serviceAccess;

  final List<ServiceAccess>? _serviceAccess;
  @override
  List<ServiceAccess>? get serviceAccess {
    final value = _serviceAccess;
    if (value == null) return null;
    if (_serviceAccess is EqualUnmodifiableListView) return _serviceAccess;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'AccessState(serviceAccess: $serviceAccess, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccessStateImpl &&
            const DeepCollectionEquality()
                .equals(other._serviceAccess, _serviceAccess) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_serviceAccess), errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccessStateImplCopyWith<_$AccessStateImpl> get copyWith =>
      __$$AccessStateImplCopyWithImpl<_$AccessStateImpl>(this, _$identity);
}

abstract class _AccessState implements AccessState {
  const factory _AccessState(
      {final List<ServiceAccess>? serviceAccess,
      final String? errorMessage}) = _$AccessStateImpl;

  @override
  List<ServiceAccess>? get serviceAccess;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$AccessStateImplCopyWith<_$AccessStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
