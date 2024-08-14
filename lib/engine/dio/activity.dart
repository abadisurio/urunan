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
    final activities = <ActivityPreview>[];

    final subscriptions = [
      ServiceSubscription(
        id: 'id',
        createdAt: DateTime.now(),
        provider: ServiceSubscriptionProvider.netflix,
        logoUrl:
            '''https://images.ctfassets.net/y2ske730sjqp/1aONibCke6niZhgPxuiilC/2c401b05a07288746ddf3bd3943fbc76/BrandAssets_Logos_01-Wordmark.jpg?w=540''',
      ),
      ServiceSubscription(
        id: 'id2',
        createdAt: DateTime.now(),
        provider: ServiceSubscriptionProvider.canva,
        logoUrl:
            '''https://e7.pngegg.com/pngimages/472/750/png-clipart-canva-new-logo-tech-companies.png''',
      ),
    ];

    for (final subscription in subscriptions) {
      final activity = ActivityPreview(
        id: 'id',
        createdAt: DateTime.now(),
        creatorId: 'creatorId',
        type: ActivityType.subscription,
        creator: Pilot(
          id: 'id',
          username: 'Eric',
          createdAt: DateTime.now(),
          // photoUrl: null,
        ),
        service: [subscription],
      );
      activities.add(activity);
    }

    final movieDiscovery = await _tmdbDio.getMovieDiscovery();
    for (final movie in movieDiscovery) {
      final baseImageUrl = _tmdbDio.baseImageUrl;
      final mediaUrl = movie['backdrop_path'];
      final posterUrl = movie['poster_path'] as String?;
      final title = movie['title'] as String?;
      final overview = movie['overview'] as String?;
      final activity = ActivityPreview(
        id: 'id',
        createdAt: DateTime.now(),
        creatorId: 'creatorId',
        type: ActivityType.post,
        creator: Pilot(
          id: 'id',
          username: 'Eric',
          createdAt: DateTime.now(),
          // photoUrl: null,
        ),
        art: Entertainment(
          id: 'id',
          createdAt: DateTime.now(),
          artType: EntertainmentType.movie,
          name: title,
          thumbnailUrl: '$baseImageUrl$mediaUrl',
          posterUrl: '$posterUrl',
        ),
        mediaUrl: '$baseImageUrl$mediaUrl',
        caption: overview,
      );
      activities.add(activity);
    }
    return activities;
  }
}
