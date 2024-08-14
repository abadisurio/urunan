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
    AccessRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AccessPage(),
      );
    },
    AccountRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AccountPage(),
      );
    },
    BuzzRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const BuzzPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    MovieDetailRoute.name: (routeData) {
      final args = routeData.argsAs<MovieDetailRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: MovieDetailPage(
          activityDetail: args.activityDetail,
          key: args.key,
        ),
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
    ServiceDetailRoute.name: (routeData) {
      final args = routeData.argsAs<ServiceDetailRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ServiceDetailPage(
          subscriptionService: args.subscriptionService,
          key: args.key,
        ),
      );
    },
    SignInRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SignInPage(),
      );
    },
    TimelineRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TimelinePage(),
      );
    },
  };
}

/// generated route for
/// [AccessPage]
class AccessRoute extends PageRouteInfo<void> {
  const AccessRoute({List<PageRouteInfo>? children})
      : super(
          AccessRoute.name,
          initialChildren: children,
        );

  static const String name = 'AccessRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [AccountPage]
class AccountRoute extends PageRouteInfo<void> {
  const AccountRoute({List<PageRouteInfo>? children})
      : super(
          AccountRoute.name,
          initialChildren: children,
        );

  static const String name = 'AccountRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [BuzzPage]
class BuzzRoute extends PageRouteInfo<void> {
  const BuzzRoute({List<PageRouteInfo>? children})
      : super(
          BuzzRoute.name,
          initialChildren: children,
        );

  static const String name = 'BuzzRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
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
class MovieDetailRoute extends PageRouteInfo<MovieDetailRouteArgs> {
  MovieDetailRoute({
    required ActivityDetail activityDetail,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          MovieDetailRoute.name,
          args: MovieDetailRouteArgs(
            activityDetail: activityDetail,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'MovieDetailRoute';

  static const PageInfo<MovieDetailRouteArgs> page =
      PageInfo<MovieDetailRouteArgs>(name);
}

class MovieDetailRouteArgs {
  const MovieDetailRouteArgs({
    required this.activityDetail,
    this.key,
  });

  final ActivityDetail activityDetail;

  final Key? key;

  @override
  String toString() {
    return 'MovieDetailRouteArgs{activityDetail: $activityDetail, key: $key}';
  }
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
/// [ServiceDetailPage]
class ServiceDetailRoute extends PageRouteInfo<ServiceDetailRouteArgs> {
  ServiceDetailRoute({
    required ServiceSubscription subscriptionService,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          ServiceDetailRoute.name,
          args: ServiceDetailRouteArgs(
            subscriptionService: subscriptionService,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'ServiceDetailRoute';

  static const PageInfo<ServiceDetailRouteArgs> page =
      PageInfo<ServiceDetailRouteArgs>(name);
}

class ServiceDetailRouteArgs {
  const ServiceDetailRouteArgs({
    required this.subscriptionService,
    this.key,
  });

  final ServiceSubscription subscriptionService;

  final Key? key;

  @override
  String toString() {
    return 'ServiceDetailRouteArgs{subscriptionService: $subscriptionService, key: $key}';
  }
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

/// generated route for
/// [TimelinePage]
class TimelineRoute extends PageRouteInfo<void> {
  const TimelineRoute({List<PageRouteInfo>? children})
      : super(
          TimelineRoute.name,
          initialChildren: children,
        );

  static const String name = 'TimelineRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
