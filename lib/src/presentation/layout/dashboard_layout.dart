import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/shared/widget.dart';

class DashboardLayout extends HookWidget {
  final StatefulNavigationShell navigationShell;

  const DashboardLayout({
    super.key,
    required this.navigationShell,
  });

  @override
  Widget build(BuildContext context) {
    final selectedIndex = useState<int>(1);

    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: DashboardBottomNavigator(
        selectedIndex: selectedIndex,
        navigationShell: navigationShell,
      ),
    );
  }
}

class DashboardBottomNavigator extends StatelessWidget {
  final ValueNotifier<int> selectedIndex;
  final StatefulNavigationShell navigationShell;

  const DashboardBottomNavigator({
    super.key,
    required this.selectedIndex,
    required this.navigationShell,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      unselectedItemColor: Theme.of(context).colorScheme.onSurface,
      selectedItemColor: Theme.of(context).colorScheme.primary,
      items: WidgetPrefab.navigationItems
          .map((item) => BottomNavigationBarItem(
                icon: Icon(item.unselectedIcon),
                activeIcon: Icon(item.selectedIcon),
                label: item.label,
              ))
          .toList(),
      onTap: (index) {
        selectedIndex.value = index;
        navigationShell.goBranch(
          index,
          initialLocation: index == navigationShell.currentIndex,
        );
      },
      currentIndex: selectedIndex.value,
    );
  }
}
