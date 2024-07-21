// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ActivityDetailState {
  ActivityDetail get activity => throw _privateConstructorUsedError;
  List<Photo>? get photos => throw _privateConstructorUsedError;
  LoadingState get loadingState => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ActivityDetailStateCopyWith<ActivityDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActivityDetailStateCopyWith<$Res> {
  factory $ActivityDetailStateCopyWith(
          ActivityDetailState value, $Res Function(ActivityDetailState) then) =
      _$ActivityDetailStateCopyWithImpl<$Res, ActivityDetailState>;
  @useResult
  $Res call(
      {ActivityDetail activity,
      List<Photo>? photos,
      LoadingState loadingState,
      String? errorMessage});

  $ActivityDetailCopyWith<$Res> get activity;
}

/// @nodoc
class _$ActivityDetailStateCopyWithImpl<$Res, $Val extends ActivityDetailState>
    implements $ActivityDetailStateCopyWith<$Res> {
  _$ActivityDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activity = null,
    Object? photos = freezed,
    Object? loadingState = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      activity: null == activity
          ? _value.activity
          : activity // ignore: cast_nullable_to_non_nullable
              as ActivityDetail,
      photos: freezed == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photo>?,
      loadingState: null == loadingState
          ? _value.loadingState
          : loadingState // ignore: cast_nullable_to_non_nullable
              as LoadingState,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ActivityDetailCopyWith<$Res> get activity {
    return $ActivityDetailCopyWith<$Res>(_value.activity, (value) {
      return _then(_value.copyWith(activity: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ActivityDetailStateImplCopyWith<$Res>
    implements $ActivityDetailStateCopyWith<$Res> {
  factory _$$ActivityDetailStateImplCopyWith(_$ActivityDetailStateImpl value,
          $Res Function(_$ActivityDetailStateImpl) then) =
      __$$ActivityDetailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ActivityDetail activity,
      List<Photo>? photos,
      LoadingState loadingState,
      String? errorMessage});

  @override
  $ActivityDetailCopyWith<$Res> get activity;
}

/// @nodoc
class __$$ActivityDetailStateImplCopyWithImpl<$Res>
    extends _$ActivityDetailStateCopyWithImpl<$Res, _$ActivityDetailStateImpl>
    implements _$$ActivityDetailStateImplCopyWith<$Res> {
  __$$ActivityDetailStateImplCopyWithImpl(_$ActivityDetailStateImpl _value,
      $Res Function(_$ActivityDetailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activity = null,
    Object? photos = freezed,
    Object? loadingState = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$ActivityDetailStateImpl(
      activity: null == activity
          ? _value.activity
          : activity // ignore: cast_nullable_to_non_nullable
              as ActivityDetail,
      photos: freezed == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photo>?,
      loadingState: null == loadingState
          ? _value.loadingState
          : loadingState // ignore: cast_nullable_to_non_nullable
              as LoadingState,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ActivityDetailStateImpl extends _ActivityDetailState {
  const _$ActivityDetailStateImpl(
      {required this.activity,
      final List<Photo>? photos,
      this.loadingState = LoadingState.isLoading,
      this.errorMessage})
      : _photos = photos,
        super._();

  @override
  final ActivityDetail activity;
  final List<Photo>? _photos;
  @override
  List<Photo>? get photos {
    final value = _photos;
    if (value == null) return null;
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final LoadingState loadingState;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'ActivityDetailState(activity: $activity, photos: $photos, loadingState: $loadingState, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActivityDetailStateImpl &&
            (identical(other.activity, activity) ||
                other.activity == activity) &&
            const DeepCollectionEquality().equals(other._photos, _photos) &&
            (identical(other.loadingState, loadingState) ||
                other.loadingState == loadingState) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, activity,
      const DeepCollectionEquality().hash(_photos), loadingState, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActivityDetailStateImplCopyWith<_$ActivityDetailStateImpl> get copyWith =>
      __$$ActivityDetailStateImplCopyWithImpl<_$ActivityDetailStateImpl>(
          this, _$identity);
}

abstract class _ActivityDetailState extends ActivityDetailState {
  const factory _ActivityDetailState(
      {required final ActivityDetail activity,
      final List<Photo>? photos,
      final LoadingState loadingState,
      final String? errorMessage}) = _$ActivityDetailStateImpl;
  const _ActivityDetailState._() : super._();

  @override
  ActivityDetail get activity;
  @override
  List<Photo>? get photos;
  @override
  LoadingState get loadingState;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$ActivityDetailStateImplCopyWith<_$ActivityDetailStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
