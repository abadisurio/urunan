import 'dart:async';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:urunan/engine/models/activity_detail.dart';
import 'package:urunan/screens/movie_detail/movie_detail.dart';

@RoutePage()
class MovieDetailPage extends StatelessWidget {
  const MovieDetailPage({
    required this.activityDetail,
    super.key,
  });

  final ActivityDetail activityDetail;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ActivityDetailBloc(
        activity: activityDetail,
      ),
      child: const _MovieDetailView(),
    );
  }
}

class _MovieDetailView extends StatefulWidget {
  const _MovieDetailView();

  @override
  State<_MovieDetailView> createState() => _MovieDetailViewState();
}

class _MovieDetailViewState extends State<_MovieDetailView> {
  final _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        unawaited(HapticFeedback.mediumImpact());
        final completer = Completer<void>();
        context.read<ActivityDetailBloc>()
          ..add(const LoadPhotos())
          ..stream.listen((state) {
            if (!completer.isCompleted) {
              if (state.loadingState != LoadingState.isLoading) {
                completer.complete();
              }
            }
          });
        await completer.future;
      },
      displacement: MediaQuery.of(context).padding.top,
      edgeOffset: Platform.isIOS ? 40 : 0,
      child: Scaffold(
        backgroundColor: Colors.black,
        body: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          controller: _scrollController,
          slivers: const [
            _Header(),
            // SliverToBoxAdapter(
            //   child: Padding(
            //     padding: EdgeInsets.all(16),
            //     child: Row(
            //       children: [
            //         _PhotoCount(),
            //         _DurationCount(),
            //         _MemberCount(),
            //       ],
            //     ),
            //   ),
            // ),
            _ActivityDetails(),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton:
            BlocBuilder<ActivityDetailBloc, ActivityDetailState>(
          buildWhen: (_, __) => false,
          builder: (context, state) {
            return ElevatedButton(
              onPressed: () {
                // context.router.push(DisposableRoute(album: state.album));
              },
              child: Text(
                'Watch ${state.activity.entertainment?.name} now',
                style: const TextStyle(color: Colors.white),
              ),
            );
          },
        ),
      ),
    );
  }
}

// class _ActivityDetails extends StatelessWidget {
//   const _ActivityDetails({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }

class _ActivityDetails extends StatelessWidget {
  const _ActivityDetails();

  @override
  Widget build(BuildContext context) {
    return const SliverFillRemaining(
      child: Center(
        child: Text(
          'Capture your moment',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header();

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      // title: const Text('My Activity'),

      stretch: true,
      pinned: true,
      expandedHeight: MediaQuery.of(context).size.width,
      collapsedHeight: kToolbarHeight,
      backgroundColor: Colors.black,
      flexibleSpace: FlexibleSpaceBar(
        // collapseMode: CollapseMode.pin,
        stretchModes: const [
          StretchMode.blurBackground,
          StretchMode.zoomBackground,
        ],
        // centerTitle: true,
        title: BlocSelector<ActivityDetailBloc, ActivityDetailState, String?>(
          selector: (state) {
            return state.activity.entertainment?.name;
          },
          builder: (context, artName) {
            return Text(
              artName ?? 'Movie',
              style: const TextStyle(color: Colors.white),
            );
          },
        ),
        // title: const Text(
        //   'Movie',
        //   style: TextStyle(color: Colors.white),
        // ),
        background: Stack(
          children: [
            SizedBox.expand(
              child: LayoutBuilder(
                builder: (context, constraint) {
                  return CachedNetworkImage(
                    imageUrl:
                        'https://picsum.photos/id/25/${(constraint.maxWidth * 2).toInt()}/${constraint.maxWidth.toInt()}',
                    fit: BoxFit.cover,
                  );
                },
              ),
            ),
            const SizedBox.expand(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.black,
                      Colors.black26,
                    ],
                  ),
                ),
              ),
            ),
            SafeArea(
              child: Center(
                child: SizedBox.square(
                  dimension: 170,
                  child: CachedNetworkImage(
                    imageUrl: 'https://picsum.photos/id/25/200/300',
                  ),
                  // child: ActivityCover(
                  //   color: Colors.black.shade900,
                  // ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
