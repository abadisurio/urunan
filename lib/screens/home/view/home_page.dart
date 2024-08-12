// ignore_for_file: lines_longer_than_80_chars

import 'dart:developer';
import 'dart:math' hide log;

import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cupertino_interactive_keyboard/cupertino_interactive_keyboard.dart';

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
part 'widgets/service_activities.dart';

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
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Urunan'),
        forceMaterialTransparency: true,
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   child: const Text('text'),
      // ),
      // bottomSheet: BottomAppBar(),
      body: Stack(
        children: [
          CupertinoInteractiveKeyboard(
            child: CustomScrollView(
              // keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
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
          ),
          // Align(
          //   alignment: Alignment.bottomCenter,
          //   child: Builder(
          //     builder: (_) {
          //       final bottomPadding = MediaQuery.of(context).viewInsets.bottom;
          //       log('debug bottomPadding $bottomPadding');
          //       return Padding(
          //         padding: EdgeInsets.only(bottom: bottomPadding),
          //         child: const SafeArea(
          //           child: Card(
          //             child: TextField(),
          //           ),
          //         ),
          //       );
          //     },
          //   ),
          // ),
        ],
      ),
    );
  }
}
