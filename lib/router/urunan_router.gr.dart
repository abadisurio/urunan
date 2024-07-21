// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'urunan_router.dart';

abstract class _$UrunanRouter extends RootStackRouter {
  // ignore: unused_element
  _$UrunanRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    MovieDetailRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MovieDetailPage(),
      );
    },
    MusicDetailRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MusicDetailPage(),
      );
    },
    SeriesDetailRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SeriesDetailPage(),
      );
    },
    SignInRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SignInPage(),
      );
    },
  };
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MovieDetailPage]
class MovieDetailRoute extends PageRouteInfo<void> {
  const MovieDetailRoute({List<PageRouteInfo>? children})
      : super(
          MovieDetailRoute.name,
          initialChildren: children,
        );

  static const String name = 'MovieDetailRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MusicDetailPage]
class MusicDetailRoute extends PageRouteInfo<void> {
  const MusicDetailRoute({List<PageRouteInfo>? children})
      : super(
          MusicDetailRoute.name,
          initialChildren: children,
        );

  static const String name = 'MusicDetailRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SeriesDetailPage]
class SeriesDetailRoute extends PageRouteInfo<void> {
  const SeriesDetailRoute({List<PageRouteInfo>? children})
      : super(
          SeriesDetailRoute.name,
          initialChildren: children,
        );

  static const String name = 'SeriesDetailRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SignInPage]
class SignInRoute extends PageRouteInfo<void> {
  const SignInRoute({List<PageRouteInfo>? children})
      : super(
          SignInRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
