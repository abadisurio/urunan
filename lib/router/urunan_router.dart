import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:urunan/engine/engine.dart';
import 'package:urunan/router/auth_guard.dart';
import 'package:urunan/screens/screens.dart';

part 'urunan_router.gr.dart';

@AutoRouterConfig()
class UrunanRouter extends _$UrunanRouter {
  @override
  RouteType get defaultRouteType =>
      Platform.isIOS ? const RouteType.cupertino() : const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: SignInRoute.page,
        ),
        AutoRoute(
          initial: true,
          guards: [UrunanGuard()],
          page: HomeRoute.page,
          children: [
            AutoRoute(
              page: TimelineRoute.page,
            ),
            AutoRoute(
              page: AccessRoute.page,
            ),
            AutoRoute(
              page: BuzzRoute.page,
            ),
            AutoRoute(
              page: AccountRoute.page,
            ),
          ],
        ),
        AutoRoute(
          guards: [UrunanGuard()],
          page: MovieDetailRoute.page,
        ),
        AutoRoute(
          guards: [UrunanGuard()],
          page: MusicDetailRoute.page,
        ),
        AutoRoute(
          guards: [UrunanGuard()],
          page: SeriesDetailRoute.page,
        ),
        AutoRoute(
          guards: [UrunanGuard()],
          page: ServiceDetailRoute.page,
        ),
      ];
}

// Widget _transitionSlideLeft(
//   BuildContext context,
//   Animation<double> animation,
//   Animation<double> secondaryAnimation,
//   Widget child,
// ) {
//   return SlideTransition(
//     position: Tween<Offset>(
//       begin: const Offset(-1, 0),
//       end: Offset.zero,
//     ).animate(
//       CurvedAnimation(
//         parent: animation,
//         curve: Curves.easeInOutCubic,
//         // reverseCurve: Curves.easeInCubic,
//       ),
//     ),
//     child: child,
//   );
// }
