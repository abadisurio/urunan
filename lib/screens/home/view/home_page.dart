import 'package:auto_route/auto_route.dart';

import 'package:flutter/material.dart' hide Image;

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:urunan/engine/repositories/activity.dart';
import 'package:urunan/router/urunan_router.dart';
import 'package:urunan/screens/home/home.dart';
import 'package:urunan/shared/widgets/widgets.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(
        activityRepository: context.read<ActivityRepository>(),
      )..add(const LoadData()),
      child: const _HomeView(),
    );
  }
}

class _HomeView extends StatefulWidget {
  const _HomeView();

  @override
  State<_HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<_HomeView> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      // animatePageTransition: false,
      routes: const [
        TimelineRoute(),
        AccessRoute(),
        BuzzRoute(),
        AccessRoute(),
      ],
      transitionBuilder: (context, child, animation) {
        return FadeTransition(opacity: animation, child: child);
      },
      builder: (context, child) {
        return Material(
          // appBar: AppBar(
          //   title: const Text('Home'),
          // ),
          child: Stack(
            children: [
              child,
              const Align(
                alignment: Alignment.bottomCenter,
                child: HomeBottomNavbar(),
              ),
            ],
          ),
        );
      },
    );
  }
}
