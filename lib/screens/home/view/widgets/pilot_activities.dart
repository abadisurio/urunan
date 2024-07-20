part of '../home_page.dart';

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
              padding: const EdgeInsets.fromLTRB(12, 0, 12, 24),
              child: _ActivityWithPoster(activity: activity),
            );
          },
        );
      },
    );
  }
}

class _ActivityWithPoster extends StatelessWidget {
  const _ActivityWithPoster({
    required this.activity,
  });

  final ActivityPreview activity;

  @override
  Widget build(BuildContext context) {
    final tileColor = activity.art?.thumbnailColorHex == null
        ? Colors.black
        : Color(int.tryParse('${activity.art!.thumbnailColorHex}') ?? 0);
    final isTileDark = tileColor.getTextColorTheme == Brightness.dark;
    // log('debug isTileDark $isTileDark');
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Column(
        children: [
          Stack(
            children: [
              ConstrainedBox(
                constraints: const BoxConstraints(
                  minHeight: 60,
                  maxHeight: 150,
                  minWidth: double.infinity,
                ),
                child: CachedNetworkImage(
                  imageUrl: activity.art!.thumbnailUrl!,
                  height: 150,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: AnimatedContainer(
                    // height: 300,
                    duration: const Duration(milliseconds: 200),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        stops: const [0.2, 0.8],
                        colors: [
                          tileColor,
                          tileColor.withOpacity(0),
                          // Colors.transparent,
                        ],
                      ),
                    ),
                    // color: (tileColor ?? Colors.black).lighten(0.4),
                  ),
                ),
              ),
              Positioned.fill(
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                    // dense: true,
                    leading: CircleAvatar(
                      foregroundImage: CachedNetworkImageProvider(
                        activity.creator?.photoUrl ??
                            'https://picsum.photos/200',
                      ),
                    ),
                    title: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 4),
                          child: Text.rich(
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
                                  text: 'Netflix ',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text: ' -------',
                                  style: context.textTheme.labelSmall?.copyWith(
                                    color: Colors.transparent,
                                  ),
                                ),
                              ],
                            ),
                            style: TextStyle(
                              color: isTileDark
                                  ? Colors.white
                                  : Colors.grey.shade900,
                            ),
                          ),
                        ),
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: Text(
                              ' 2m ago',
                              style: context.textTheme.labelSmall?.copyWith(
                                color: isTileDark
                                    ? Colors.white
                                    : Colors.grey.shade900,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    // subtitle: Text(
                    //   'Two minutes ago',
                    //   style: TextStyle(
                    //     color: isTileDark ? Colors.white :
                    // Colors.grey.shade900,
                    //   ),
                    // ),
                  ),
                ),
              ),
              Positioned.fill(
                child: Material(
                  type: MaterialType.transparency,
                  child: InkWell(
                    onTap: () {},
                  ),
                ),
              ),
            ],
          ),
          // AnimatedContainer(
          //   duration: const Duration(milliseconds: 200),
          //   color: (tileColor ?? Colors.black).lighten(0.4),
          //   child: Padding(
          //     padding: const EdgeInsets.all(8),
          //     child: ListTile(
          //       dense: true,
          //       leading: CircleAvatar(
          //           // foregroundImage: CachedNetworkImageProvider(
          //           //   activity.creator?.photoUrl ??
          //           //       'https://picsum.photos/id/200',
          //           // ),
          //           ),
          //       title: Text.rich(
          //         TextSpan(
          //           children: [
          //             TextSpan(
          //               text: activity.creator?.username,
          //               style: const TextStyle(fontWeight: FontWeight.bold),
          //             ),
          //             const TextSpan(text: ' is watching '),
          //             TextSpan(
          //               text: activity.art?.name,
          //               style: const TextStyle(fontWeight: FontWeight.bold),
          //             ),
          //             const TextSpan(text: ' on '),
          //             const TextSpan(
          //               text: 'Netflix',
          //               style: TextStyle(fontWeight: FontWeight.bold),
          //             ),
          //             // TextSpan(
          //             //   text: ' - 2 minutes ago',
          //             //   style: context.textTheme.labelLarge,
          //             // ),
          //           ],
          //         ),
          //       ),
          //       subtitle: const Text('Two minutes ago'),
          //     ),
          //   ),
          // ),
        ],
      ),
      // child: Stack(
      //   children: [
      //     // if (_image != null) Positioned.fill(child: _image!),
      //     if (activity.art?.thumbnailUrl != null)
      //       Positioned.fill(
      //         child: CachedNetworkImage(
      //           imageUrl: activity.art!.thumbnailUrl!,
      //         ),
      //       ),
      //     Column(
      //       children: [
      //         const SizedBox(height: 200),
      //         ClipRect(
      //           // height: 100,
      //           child: BackdropFilter(
      //             filter: ImageFilter.blur(sigmaX: 17, sigmaY: 17),
      //             child: AnimatedContainer(
      //               duration: const Duration(milliseconds: 200),
      //               color: tileColor ?? Colors.black,
      //               child: Padding(
      //                 padding: const EdgeInsets.all(8),
      //                 child: ListTile(
      //                   dense: true,
      //                   leading: CircleAvatar(
      //                       // foregroundImage: CachedNetworkImageProvider(
      //                       //   activity.creator?.photoUrl ??
      //                       //       'https://picsum.photos/id/200',
      //                       // ),
      //                       ),
      //                   title: Text.rich(
      //                     TextSpan(
      //                       children: [
      //                         TextSpan(
      //                           text: activity.creator?.username,
      //                           style: const TextStyle(
      //                               fontWeight: FontWeight.bold),
      //                         ),
      //                         const TextSpan(text: ' is watching '),
      //                         TextSpan(
      //                           text: activity.art?.name,
      //                           style: const TextStyle(
      //                               fontWeight: FontWeight.bold),
      //                         ),
      //                         const TextSpan(text: ' on '),
      //                         const TextSpan(
      //                           text: 'Netflix',
      //                           style: TextStyle(fontWeight:
      // FontWeight.bold),
      //                         ),
      //                         // TextSpan(
      //                         //   text: ' - 2 minutes ago',
      //                         //   style: context.textTheme.labelLarge,
      //                         // ),
      //                       ],
      //                     ),
      //                   ),
      //                   subtitle: const Text('Two minutes ago'),
      //                 ),
      //               ),
      //             ),
      //           ),
      //         ),
      //       ],
      //     ),
      //   ],
      // ),
    );
  }
}

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

// SizedBox(
//   height: 300,
//   child: Row(
//     // crossAxisAlignment: CrossAxisAlignment.stretch,
//     children: [
//       if (activity.art?.thumbnailUrl != null)
//         Expanded(
//           child: Padding(
//             padding: const EdgeInsets.all(8),
//             child: CachedNetworkImage(
//               imageUrl: activity.art!.thumbnailUrl!,
//               fit: BoxFit.cover,
//             ),
//           ),
//         ),
//       Expanded(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Expanded(
//               child: Text(
//                 activity.caption ?? 'No caption',
//                 maxLines: 3,
//                 overflow: TextOverflow.ellipsis,
//               ),
//             ),
//             Text(
//               'Available on',
//               style: context.textTheme.titleMedium,
//             ),
//             Wrap(
//               spacing: 4,
//               runSpacing: 4,
//               children: [
//                 Chip(
//                   padding: const EdgeInsets.all(2),
//                   materialTapTargetSize:
//                       MaterialTapTargetSize.shrinkWrap,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(99),
//                   ),
//                   label: const Text('Netflix'),
//                   // avatar: const Icon(Icons.tv),
//                 ),
//                 Chip(
//                   padding: const EdgeInsets.all(2),
//                   materialTapTargetSize:
//                       MaterialTapTargetSize.shrinkWrap,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(99),
//                   ),
//                   label: const Text('Youtube'),
//                   // avatar: const Icon(Icons.tv),
//                 ),
//                 Chip(
//                   padding: const EdgeInsets.all(2),
//                   materialTapTargetSize:
//                       MaterialTapTargetSize.shrinkWrap,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(99),
//                   ),
//                   label: const Text('Apple TV+'),
//                   // avatar: const Icon(Icons.tv),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     ],
//   ),
// ),
