// ignore_for_file: unused_field

import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:urunan/engine/engine.dart';

part 'movie_detail_event.dart';
part 'movie_detail_state.dart';
part 'movie_detail_bloc.freezed.dart';

class ActivityDetailBloc
    extends Bloc<ActivityDetailEvent, ActivityDetailState> {
  ActivityDetailBloc({
    required ActivityDetail activity,
  })  : _activity = activity,
        super(ActivityDetailState(activity: activity)) {
    on<LoadPhotos>(_onLoadActivityDetail);
    on<LoadMorePhotos>(_onLoadMorePhotos);
  }

  final ActivityDetail _activity;

  Future<void> _onLoadActivityDetail(
    LoadPhotos event,
    Emitter<ActivityDetailState> emit,
  ) async {
    emit(state.copyWith(loadingState: LoadingState.isLoading));
    try {
      // final photos =
      //     await _photoRepository.getPhotosByActivityId(albumId: _album.id);
      emit(
        state.copyWith(
          // photos: photos,
          loadingState: LoadingState.isSuccess,
        ),
      );
    } catch (e) {
      log('debug e $e');
      emit(
        state.copyWith(
          photos: [],
          errorMessage: '$e',
          loadingState: LoadingState.isFailed,
        ),
      );
    }
  }

  Future<void> _onLoadMorePhotos(
    LoadMorePhotos event,
    Emitter<ActivityDetailState> emit,
  ) async {
    emit(state.copyWith(loadingState: LoadingState.isLoading));
    try {
      // final photos =
      //     await _photoRepository.getPhotosByActivityId(albumId: _album.id);
      emit(
        state.copyWith(
          // photos: photos,
          loadingState: LoadingState.isSuccess,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          photos: [],
          errorMessage: '$e',
          loadingState: LoadingState.isFailed,
        ),
      );
    }
  }
}
