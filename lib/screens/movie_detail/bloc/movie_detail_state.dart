part of 'movie_detail_bloc.dart';

@freezed
class ActivityDetailState with _$ActivityDetailState {
  const factory ActivityDetailState({
    required ActivityDetail activity,
    List<Photo>? photos,
    @Default(LoadingState.isLoading) LoadingState loadingState,
    String? errorMessage,
  }) = _ActivityDetailState;

  const ActivityDetailState._();
}

enum LoadingState {
  // isCreating,
  isLoading,
  isSuccess,
  isFailed,
}
