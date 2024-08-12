part of '../home_page.dart';

// class _ServiceActivites extends StatelessWidget {
//   const _ServiceActivites();
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<HomeBloc, HomeState>(
//       builder: (context, state) {
//         final activities = state.activities;
//         if (activities == null) {
//           return const SliverFillRemaining(
//             child: Center(
//               child: CircularProgressIndicator(),
//             ),
//           );
//         }
//         return SliverList.builder(
//           itemCount: activities.length,
//           itemBuilder: (context, index) {
//             final activity = activities[index];
//             return Padding(
//               padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
//               child:
//                   TapDownScaller(child: 
//_ServiceActivity(activity: activity)),
//             );
//           },
//         );
//       },
//     );
//   }
// }

// class _ServiceActivitesTitle extends SliverPersistentHeaderDelegate {
//   @override
//   Widget build(
//     BuildContext context,
//     double shrinkOffset,
//     bool overlapsContent,
//   ) {
//     return Container(
//       color: Colors.black,
//       height: 50,
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 12),
//         child: Align(
//           alignment: Alignment.centerLeft,
//           child: Text(
//             'Service Activities',
//             style: context.textTheme.titleMedium,
//           ),
//         ),
//       ),
//     );
//   }

//   @override
//   double get maxExtent => 50; // Height of the pinned widget

//   @override
//   double get minExtent => 50; // Height of the pinned widget

//   @override
//   bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
//     return false;
//   }
// }

// class _ServiceActivity extends StatelessWidget {
//   const _ServiceActivity({required this.activity});

//   final ActivityPreview activity;

//   @override
//   Widget build(BuildContext context) {
//     final color = Colors.grey.shade800.darken(0.2);
//     return ClipRRect(
//       borderRadius: BorderRadius.circular(16),
//       child: Stack(
//         children: [
//           Positioned.fill(
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.end,
//               children: [
//                 Expanded(
//                   child: SizedBox.expand(
//                     child: ColoredBox(color: color),
//                   ),
//                 ),
//                 CachedNetworkImage(
//                   width: 120,
//                   height: double.infinity,
//                   imageUrl:
//                       activity.art?.thumbnailUrl ?? 'https://picsum.photos/200',
//                   fit: BoxFit.cover,
//                 ),
//               ],
//             ),
//           ),
//           Positioned.fill(
//             left: null,
//             child: Container(
//               width: 120,
//               decoration: BoxDecoration(
//                 gradient: LinearGradient(
//                   colors: [
//                     color,
//                     color.withOpacity(0),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           ListTile(
//             contentPadding:
//                 const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
//             dense: true,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(16),
//             ),
//             leading: CircleAvatar(
//               foregroundImage: CachedNetworkImageProvider(
//                 activity.creator?.photoUrl ??
//                     'https://i.pravatar.cc/80?u=${_mathRandom.nextInt(100)}',
//               ),
//             ),
//             trailing: const SizedBox(width: 50),
//             title: Text.rich(
//               TextSpan(
//                 children: [
//                   TextSpan(
//                     text: activity.creator?.username,
//                     style: const TextStyle(
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   const TextSpan(
//                     text: ' is subscribing to ',
//                     // style: TextStyle(
//                     //   fontWeight: FontWeight.w600,
//                     // ),
//                   ),
//                   // TextSpan(
//                   //   text: activity.art?.name,
//                   //   style: const TextStyle(
//                   //     fontWeight: FontWeight.w700,
//                   //   ),
//                   // ),
//                   const TextSpan(
//                     text: 'Netflix',
//                     style: TextStyle(
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                   const TextSpan(
//                     text: ' for ',
//                     style: TextStyle(
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                   const TextSpan(
//                     text: ' 1 month ',
//                     style: TextStyle(
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                   // TextSpan(
//                   //   text: ' 2m',
//                   //   style: context.textTheme.bodySmall?.copyWith(
//                   //     color: Colors.grey,
//                   //     // color: isTileDark ? Colors.white : Colors.grey.shade900,
//                   //   ),
//                   // ),
//                   // TextSpan(
//                   //   text: ' -------',
//                   //   style: context.textTheme.labelSmall?.copyWith(
//                   //     color: Colors.transparent,
//                   //   ),
//                   // ),
//                 ],
//               ),
//               // style: TextStyle(
//               //   color: context.isDark ? Colors.white : Colors.grey.shade900,
//               // ),
//             ),
//             subtitle: Padding(
//               padding: const EdgeInsets.only(top: 4),
//               child: Row(
//                 children: [
//                   Text(
//                     '2 minutes ago',
//                     style: context.textTheme.bodySmall?.copyWith(
//                       color: Colors.grey,
//                       // color: isTileDark ? Colors.white :
//                       // Colors.grey.shade900,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Positioned.fill(
//             child: Material(
//               type: MaterialType.transparency,
//               child: InkWell(
//                 onTap: () {
//                   final service = SubscriptionService(
//                     id: 'id',
//                     createdAt: DateTime.now(),
//                     provider: SubscriptionServiceProvider.netflix,
//                     logoUrl:
//                         'https://images.ctfassets.net/y2ske730sjqp/1aONibCke6niZhgPxuiilC/2c401b05a07288746ddf3bd3943fbc76/BrandAssets_Logos_01-Wordmark.jpg?w=540',
//                   );
//                   context.router.push(
//                     ServiceDetailRoute(subscriptionService: service),
//                   );
//                 },
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
