import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/controller/controller.dart';
import 'package:riverpod_clean_architecture_in_a_nutshell/src/presentation/widget/prefab.dart';

class DashboardLayout extends HookWidget {
  final StatefulNavigationShell navigationShell;

  const DashboardLayout({
    super.key,
    required this.navigationShell,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: DashboardBottomNavigator(
        navigationShell: navigationShell,
      ),
    );
  }
}

class DashboardBottomNavigator extends ConsumerWidget {
  final StatefulNavigationShell navigationShell;

  const DashboardBottomNavigator({
    super.key,
    required this.navigationShell,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(dashboardControllerProvider, (prev, current) {
      if (prev == current) return;
      navigationShell.goBranch(current);
    });

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
        ref.read(dashboardControllerProvider.notifier).changeIndex(index);
      },
      currentIndex: ref.watch(dashboardControllerProvider),
    );
  }
}
