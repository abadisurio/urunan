part of '../home_page.dart';

class _PilotActivites extends StatelessWidget {
  const _PilotActivites();

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const ListTile(
          title: Text('text'),
        );
      },
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
