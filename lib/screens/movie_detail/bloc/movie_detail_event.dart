part of 'movie_detail_bloc.dart';

class ActivityDetailEvent {
  const ActivityDetailEvent();
}

class LoadMorePhotos extends ActivityDetailEvent {
  const LoadMorePhotos();
}

class LoadPhotos extends ActivityDetailEvent {
  const LoadPhotos();
}
