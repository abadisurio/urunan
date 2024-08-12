import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:urunan/app/view/app.dart';
import 'package:urunan/router/urunan_router.dart';

class HomeBottomNavbar extends StatefulWidget {
  const HomeBottomNavbar({super.key});

  @override
  State<HomeBottomNavbar> createState() => _HomeBottomNavbarState();
}

class _HomeBottomNavbarState extends State<HomeBottomNavbar> {
  int _activeIndex = 0;
  late final _tabsRouter = AutoTabsRouter.of(context);

  @override
  void initState() {
    _tabsRouter.addListener(_tabsRouterListener);
    super.initState();
  }

  @override
  void dispose() {
    _tabsRouter.removeListener(_tabsRouterListener);
    super.dispose();
  }

  void _tabsRouterListener() {
    _tabsRouter.activeIndex;
    setState(() {
      _activeIndex = _tabsRouter.activeIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          decoration: BoxDecoration(
            boxShadow: const [BoxShadow(blurRadius: 50)],
            borderRadius: BorderRadius.circular(99),
            color: Colors.grey.shade900.darken(0.07),
          ),
          // height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              for (int i = 0; i < _navbarRoutes.length; i++) ...[
                Builder(
                  builder: (context) {
                    final route = _navbarRoutes[i];
                    final isSelected = _activeIndex == i;
                    return ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 10,
                        ),
                        foregroundColor: Colors.white,
                        backgroundColor: isSelected
                            ? Colors.grey.shade900
                            : Colors.transparent,
                        elevation: 0,
                        minimumSize: const Size(40, 40),
                        maximumSize: const Size(150, 80),
                      ),
                      onPressed: () {
                        _tabsRouter.setActiveIndex(i);
                      },
                      child: AnimatedSize(
                        alignment: Alignment.centerLeft,
                        duration: Durations.long1,
                        curve: Curves.easeInOutBack,
                        // curve: Curves.easeInOutQuint,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Flexible(
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Icon(
                                  isSelected ? route.activeIcon : route.icon,
                                  color:
                                      isSelected ? null : Colors.grey.shade500,
                                  size: 18,
                                ),
                              ),
                            ),
                            if (isSelected) ...[
                              const SizedBox(width: 12),
                              Flexible(
                                child: FittedBox(
                                  fit: BoxFit.scaleDown,
                                  child: Text(route.name),
                                ),
                              ),
                              const SizedBox(width: 8),
                            ],
                          ],
                        ),
                      ),
                    );
                  },
                ),
                if (i != (_navbarRoutes.length - 1)) const SizedBox(width: 8),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

final _navbarRoutes = [
  _NavbarRoutes(
    name: 'Feeds',
    route: const TimelineRoute(),
    icon: Icons.home,
    activeIcon: Icons.home_outlined,
  ),
  _NavbarRoutes(
    name: 'Access',
    route: const TimelineRoute(),
    icon: Icons.lock,
    activeIcon: Icons.lock_outline,
  ),
  _NavbarRoutes(
    name: 'Buzz',
    route: const TimelineRoute(),
    icon: Icons.bubble_chart,
    activeIcon: Icons.bubble_chart_outlined,
  ),
  _NavbarRoutes(
    name: 'Account',
    route: const TimelineRoute(),
    icon: Icons.person,
    activeIcon: Icons.person_outline,
  ),
];

class _NavbarRoutes {
  _NavbarRoutes({
    required this.name,
    required this.route,
    required this.activeIcon,
    required this.icon,
  });
  final String name;
  final PageRouteInfo route;
  final IconData activeIcon;
  final IconData icon;
}
