part of '../timeline_page.dart';

class _PilotActivites extends StatelessWidget {
  const _PilotActivites();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        final activities = state.activities;
        if (activities == null) {
          return const SliverFillRemaining(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
        return SliverList.builder(
          itemCount: activities.length,
          itemBuilder: (context, index) {
            final activity = activities[index];
            return Padding(
              padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
              child: TapDownScaller(child: _SimpleActivity(activity: activity)),
            );
          },
        );
      },
    );
  }
}

// class _ActivityWithPoster extends StatelessWidget {
//   const _ActivityWithPoster({
//     required this.activity,
//   });

//   final ActivityPreview activity;

//   @override
//   Widget build(BuildContext context) {
//     final tileColor = activity.art?.thumbnailColorHex == null
//         ? Colors.black
//         : Color(int.tryParse('${activity.art!.thumbnailColorHex}') ?? 0);
//     final isTileDark = tileColor.getTextColorTheme == Brightness.dark;
//     // log('debug isTileDark $isTileDark');
//     return ClipRRect(
//       borderRadius: BorderRadius.circular(16),
//       child: Column(
//         children: [
//           Stack(
//             children: [
//               ConstrainedBox(
//                 constraints: const BoxConstraints(
//                   minHeight: 60,
//                   maxHeight: 150,
//                   minWidth: double.infinity,
//                 ),
//                 child: CachedNetworkImage(
//                   imageUrl: activity.art!.thumbnailUrl!,
//                   height: 150,
//                   width: double.infinity,
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               Positioned.fill(
//                 child: Align(
//                   alignment: Alignment.bottomCenter,
//                   child: AnimatedContainer(
//                     // height: 300,
//                     duration: const Duration(milliseconds: 200),
//                     decoration: BoxDecoration(
//                       gradient: LinearGradient(
//                         begin: Alignment.bottomCenter,
//                         end: Alignment.topCenter,
//                         stops: const [0.2, 0.8],
//                         colors: [
//                           tileColor,
//                           tileColor.withOpacity(0),
//                           // Colors.transparent,
//                         ],
//                       ),
//                     ),
//                     // color: (tileColor ?? Colors.black).lighten(0.4),
//                   ),
//                 ),
//               ),
//               Positioned.fill(
//                 child: Align(
//                   alignment: Alignment.bottomLeft,
//                   child: ListTile(
//                     contentPadding: const EdgeInsets
//.symmetric(horizontal: 10),
//                     // dense: true,
//                     leading: CircleAvatar(
//                       foregroundImage: CachedNetworkImageProvider(
//                         activity.creator?.photoUrl ??
//                             'https://picsum.photos/200',
//                       ),
//                     ),
//                     title: Stack(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.only(bottom: 4),
//                           child: Text.rich(
//                             TextSpan(
//                               children: [
//                                 TextSpan(
//                                   text: activity.creator?.username,
//                                   style: const TextStyle(
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                                 const TextSpan(
//                                   text: ' is watching ',
//                                   style: TextStyle(
//                                     fontWeight: FontWeight.w600,
//                                   ),
//                                 ),
//                                 TextSpan(
//                                   text: activity.art?.name,
//                                   style: const TextStyle(
//                                     fontWeight: FontWeight.w700,
//                                   ),
//                                 ),
//                                 const TextSpan(text: ' on '),
//                                 const TextSpan(
//                                   text: 'Netflix ',
//                                   style: TextStyle(fontWeight:
// FontWeight.bold),
//                                 ),
//                                 // TextSpan(
//                                 //   text: ' -------',
//                                 //   style: context.textTheme.labelSmall?.copyWith(
//                                 //     color: Colors.transparent,
//                                 //   ),
//                                 // ),
//                               ],
//                             ),
//                             style: TextStyle(
//                               color: isTileDark
//                                   ? Colors.white
//                                   : Colors.grey.shade900,
//                             ),
//                           ),
//                         ),
//                         Positioned.fill(
//                           child: Align(
//                             alignment: Alignment.bottomRight,
//                             child: Text(
//                               ' 2m ago',
//                               style: context.textTheme.labelSmall?.copyWith(
//                                 color: isTileDark
//                                     ? Colors.white
//                                     : Colors.grey.shade900,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//               Positioned.fill(
//                 child: Material(
//                   type: MaterialType.transparency,
//                   child: InkWell(
//                     onTap: () {},
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

class _PilotActivitesTitle extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(
      color: Colors.black,
      height: 50,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Pilot Activities',
            style: context.textTheme.titleMedium,
          ),
        ),
      ),
    );
  }

  @override
  double get maxExtent => 50; // Height of the pinned widget

  @override
  double get minExtent => 50; // Height of the pinned widget

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}

final _mathRandom = Random();

class _SimpleActivity extends StatelessWidget {
  const _SimpleActivity({required this.activity});

  final ActivityPreview activity;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Stack(
        children: [
          Positioned.fill(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Expanded(
                  child: SizedBox.expand(
                    child: ColoredBox(color: Colors.black),
                  ),
                ),
                CachedNetworkImage(
                  width: 120,
                  height: double.infinity,
                  imageUrl:
                      activity.art?.thumbnailUrl ?? 'https://picsum.photos/200',
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
          Positioned.fill(
            left: null,
            child: Container(
              width: 120,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black,
                    Colors.black.withOpacity(0),
                  ],
                ),
              ),
            ),
          ),
          ListTile(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
            dense: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            leading: CircleAvatar(
              foregroundImage: CachedNetworkImageProvider(
                activity.creator?.photoUrl ??
                    'https://i.pravatar.cc/80?u=${_mathRandom.nextInt(100)}',
              ),
            ),
            trailing: const SizedBox(width: 50),
            title: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: activity.creator?.username,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const TextSpan(
                    text: ' is watching ',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextSpan(
                    text: activity.art?.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const TextSpan(text: ' on '),
                  const TextSpan(
                    text: 'Netflix.',
                    // style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  // TextSpan(
                  //   text: ' 2m',
                  //   style: context.textTheme.bodySmall?.copyWith(
                  //     color: Colors.grey,
                  //     // color: isTileDark ? Colors.white : Colors.grey.shade900,
                  //   ),
                  // ),
                  // TextSpan(
                  //   text: ' -------',
                  //   style: context.textTheme.labelSmall?.copyWith(
                  //     color: Colors.transparent,
                  //   ),
                  // ),
                ],
              ),
              // style: TextStyle(
              //   color: context.isDark ? Colors.white : Colors.grey.shade900,
              // ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Row(
                children: [
                  Text(
                    '2 minutes ago',
                    style: context.textTheme.bodySmall?.copyWith(
                      color: Colors.grey,
                      // color: isTileDark ? Colors.white :
                      // Colors.grey.shade900,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned.fill(
            child: Material(
              type: MaterialType.transparency,
              child: InkWell(
                onTap: () {
                  // log('debug activity type ${activity.type}');
                  switch (activity.type) {
                    case ActivityType.post:
                      final finalActivity = ActivityDetail(
                        id: activity.id,
                        createdAt: activity.createdAt,
                        creatorId: activity.creatorId,
                        entertainment: activity.art,
                      );
                      if (activity.art?.artType == EntertainmentType.movie) {
                        context.router.push(
                          MovieDetailRoute(activityDetail: finalActivity),
                        );
                      } else if (activity.art?.artType ==
                          EntertainmentType.music) {
                        context.router.push(const MusicDetailRoute());
                      }
                    case ActivityType.subscription:
                    // if (activity.service != null &&
                    //     activity.service!.isNotEmpty) {
                    //   context.router.push(
                    //     ServiceDetailRoute(
                    //       subscriptionService: activity.service!.first,
                    //     ),
                    //   );
                    // }
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
    // return ListTile(
    //   contentPadding: const EdgeInsets.symmetric(vertical: 8,
    // horizontal: 16),
    //   dense: true,
    //   shape: RoundedRectangleBorder(
    //     borderRadius: BorderRadius.circular(16),
    //   ),
    //   title: Text.rich(
    //     TextSpan(
    //       children: [
    //         TextSpan(
    //           text: activity.creator?.username,
    //           style: const TextStyle(
    //             fontWeight: FontWeight.bold,
    //           ),
    //         ),
    //         const TextSpan(
    //           text: ' is watching ',
    //           style: TextStyle(
    //             fontWeight: FontWeight.w600,
    //           ),
    //         ),
    //         TextSpan(
    //           text: activity.art?.name,
    //           style: const TextStyle(
    //             fontWeight: FontWeight.w700,
    //           ),
    //         ),
    //         const TextSpan(text: ' on '),
    //         const TextSpan(
    //           text: 'Netflix ',
    //           style: TextStyle(fontWeight: FontWeight.bold),
    //         ),
    //         TextSpan(
    //           text: ' -------',
    //           style: context.textTheme.labelSmall?.copyWith(
    //             color: Colors.transparent,
    //           ),
    //         ),
    //       ],
    //     ),
    //     // style: TextStyle(
    //     //   color: isTileDark ? Colors.white : Colors.grey.shade900,
    //     // ),
    //   ),
    //   onTap: () {},
    //   leading: CircleAvatar(
    //     foregroundImage: CachedNetworkImageProvider(
    //       activity.creator?.photoUrl ?? 'https://picsum.photos/200',
    //     ),
    //   ),
    //   trailing: CachedNetworkImage(
    //     imageUrl: activity.art?.thumbnailUrl ?? '',
    //     width: 50,
    //     height: 50,
    //     fit: BoxFit.cover,
    //   ),
    // );
  }
}
