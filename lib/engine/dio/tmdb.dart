import 'dart:developer';

import 'package:dio/dio.dart';

class TMDBDio {
  TMDBDio() {
    log('TMDBDio initialized');
    _dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        contentType: 'application/json',
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization':
              '''Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJkZDk1ZDJmMGRhOGIyZDJkYWQ2MjI3MjEzMWZjOWQyMSIsIm5iZiI6MTcyMDU4MjY3NC45NjA1NTUsInN1YiI6IjYwYTIwN2QxYjFmNjhkMDA2ZWI5NzE4YiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.cxlSWg73_QL5IsD_-BjScMKyKL0OjSPxDAu10IiuOHQ''',
          'Host': 'api.themoviedb.org',
        },
      ),
    );
  }

  final baseUrl = 'https://api.themoviedb.org';
  final baseImageUrl = 'https://image.tmdb.org/t/p/h632';

  // ignore: unused_field
  late final Dio _dio;

  Future<List<Map<String, dynamic>>> getMovieDiscovery() async {
    final response = await _dio.get<dynamic>(
      '''/3/discover/movie?include_adult=false&include_video=false&language=en-US&page=1&sort_by=popularity.desc''',
    );
    // log('response ${response.data}');
    final results = (response.data as Map<String, dynamic>)['results'] as List?;
    if (results != null) {
      return results.map((movie) => movie as Map<String, dynamic>).toList();
    }
    return [];
    // return response.data as Map<String, dynamic>;
  }
}
