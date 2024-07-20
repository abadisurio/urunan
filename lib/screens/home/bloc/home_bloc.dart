import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:palette_generator/palette_generator.dart';
import 'package:urunan/engine/engine.dart';
import 'package:urunan/engine/repositories/activity.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';
part 'home_bloc.g.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({
    required ActivityRepository activityRepository,
  })  : _activityRepository = activityRepository,
        super(const HomeState()) {
    on<LoadData>(_onLoadData);
    on<LoadTileColors>(_onLoadTileColors);
  }

  final ActivityRepository _activityRepository;

  Future<void> _onLoadData(
    LoadData event,
    Emitter<HomeState> emit,
  ) async {
    final activities = await _activityRepository.getLast20Activity();
    emit(
      state.copyWith(activities: activities),
    );
    add(const LoadTileColors());
  }

  Future<void> _onLoadTileColors(
    LoadTileColors event,
    Emitter<HomeState> emit,
  ) async {
    final activities2 = <ActivityPreview>[];
    for (final activity in state.activities ?? <ActivityPreview>[]) {
      // final color = await res;
      final color = await _updatePaletteGenerator(
        activity.art!.thumbnailUrl!,
      );
      // log('debug color.toString() ${color.value}');
      activities2.add(
        activity.copyWith(
          art:
              activity.art?.copyWith(thumbnailColorHex: color.value.toString()),
        ),
      );
    }
    emit(
      state.copyWith(activities: activities2),
    );
  }
}

// Future<Color> _updatePaletteGenerator(List<dynamic> args) async {
Future<Color> _updatePaletteGenerator(String url) async {
  // final rootIsolateToken = RootIsolateToken.instance!;
  // final port = args[0] as SendPort;
  // final url = args[1] as String;
  final pallete = await PaletteGenerator.fromImageProvider(
    CachedNetworkImageProvider(url),
    size: const Size.square(0.1),
    // region: Rect.fromCenter(center: Offset.zero, width: -3, height: -3),
  );
  // final color = pallete.dominantColor?.color ?? Colors.black;
  // Isolate.exit(port, color);

  // pallete.

  return pallete.dominantColor?.color ?? Colors.black;
}
