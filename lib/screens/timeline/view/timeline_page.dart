// ignore_for_file: lines_longer_than_80_chars

import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:urunan/app/app.dart';
import 'package:urunan/engine/engine.dart';
import 'package:urunan/router/urunan_router.dart';
import 'package:urunan/screens/home/home.dart';
import 'package:urunan/shared/shared.dart';

part 'widgets/active_subscription.dart';
part 'widgets/pilot_activities.dart';
part 'widgets/service_activities.dart';

@RoutePage()
class TimelinePage extends StatelessWidget {
  const TimelinePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const _TimelineView();
  }
}

class _TimelineView extends StatelessWidget {
  const _TimelineView();

  @override
  Widget build(BuildContext context) {
    final scrollController = ScrollController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Feeds'),
        elevation: 0,
        forceMaterialTransparency: true,
      ),
      body: CustomScrollView(
        // keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        physics: const BouncingScrollPhysics(),
        controller: scrollController,
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
          // SliverMainAxisGroup(
          //   slivers: [
          //     SliverPersistentHeader(
          //       delegate: _ServiceActivitesTitle(),
          //       pinned: true,
          //     ),
          //     const _ServiceActivites(),
          //   ],
          // ),

          // _PilotActivites(),
        ],
      ),
    );
  }
}
