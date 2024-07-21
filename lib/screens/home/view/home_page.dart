import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'package:flutter/material.dart' hide Image;

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:urunan/app/view/app.dart';
import 'package:urunan/engine/engine.dart';
import 'package:urunan/engine/repositories/activity.dart';
import 'package:urunan/router/urunan_router.dart';
import 'package:urunan/screens/home/home.dart';
import 'package:urunan/shared/shared.dart';

part 'widgets/active_subscription.dart';
part 'widgets/pilot_activities.dart';

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
  final _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Urunan'),
        forceMaterialTransparency: true,
      ),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        controller: _scrollController,
        slivers: [
          SliverMainAxisGroup(
            slivers: [
              SliverPersistentHeader(
                delegate: _ActiveSubscriptionTitle(),
                pinned: true,
              ),
              const SliverToBoxAdapter(child: _ActiveSubscription()),
            ],
          ),
          SliverMainAxisGroup(
            slivers: [
              SliverPersistentHeader(
                delegate: _PilotActivitesTitle(),
                pinned: true,
              ),
              const _PilotActivites(),
            ],
          ),
          SliverMainAxisGroup(
            slivers: [
              SliverPersistentHeader(
                delegate: _PilotActivitesTitle(),
                pinned: true,
              ),
              SliverList.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const ListTile(
                    title: Text('text'),
                  );
                },
              ),
            ],
          ),

          // _PilotActivites(),
        ],
      ),
    );
  }
}
