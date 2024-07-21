import 'package:urunan/engine/dio/tmdb.dart';
import 'package:urunan/engine/engine.dart';

class ActivityDio extends ActivityDAO {
  const ActivityDio({
    required TMDBDio tmdbDio,
  }) : _tmdbDio = tmdbDio;

  // ignore: unused_field
  final TMDBDio _tmdbDio;

  @override
  Future<void> create({required ActivityPreview activity}) {
    throw UnimplementedError();
  }

  @override
  Future<void> delete({required String id}) {
    throw UnimplementedError();
  }

  @override
  Future<ActivityPreview> getActivityById({required String activityId}) {
    throw UnimplementedError();
  }

  @override
  String getGeneratedId() {
    throw UnimplementedError();
  }

  @override
  Future<List<ActivityPreview>> getLast20Activity() async {
    final movieDiscovery = await _tmdbDio.getMovieDiscovery();
    // for (final movie in movieDiscovery) {
    // }
    // log('debug movie ${movieDiscovery.first}');
    // throw UnimplementedError();
    // return ActivityPreview(
    //     id: 'id', createdAt: DateTime.now(), creatorId: 'creatorId', ca);
    return movieDiscovery.map((movie) {
      // log('debug movie $movie');
      final baseImageUrl = _tmdbDio.baseImageUrl;
      final mediaUrl = movie['backdrop_path'];
      final posterUrl = movie['poster_path'] as String?;
      final title = movie['title'] as String?;
      final overview = movie['overview'] as String?;
      return ActivityPreview(
        id: 'id',
        createdAt: DateTime.now(),
        creatorId: 'creatorId',
        creator: Pilot(
          id: 'id',
          username: 'Eric',
          createdAt: DateTime.now(),
          // photoUrl: null,
        ),
        art: Art(
          id: 'id',
          createdAt: DateTime.now(),
          artType: ArtType.movie,
          name: title,
          thumbnailUrl: '$baseImageUrl$mediaUrl',
          posterUrl: '$posterUrl',
        ),
        mediaUrl: '$baseImageUrl$mediaUrl',
        caption: overview,
      );
    }).toList();
  }
}
